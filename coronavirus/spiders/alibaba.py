# -*- coding: utf-8 -*-
import scrapy
import json
import datetime
import re

import pymysql
import pandas as pd

# 统计计算
# import analysis

# 爬虫目标网页地址：https://alihealth.taobao.com/medicalhealth/influenzamap/

class AlibabaSpider(scrapy.Spider):

	piplinesAction = None

	name = 'alibaba'
	# allowed_domains = ['https://alihealth.taobao.com/medicalhealth/influenzamap']
	# start_urls = ['https://alihealth.taobao.com/medicalhealth/influenzamap/']
	start_urls = ['http://h5api.m.taobao.com/h5/mtop.alihealth.mdeer.pidemic.getalldiseaseinfo/1.0/?jsv=3.0.5&appKey=12574478&t=1580745402079&sign=cc1847111feb772d9ba39ad0b9955a52&type=originaljson&valueType=original&v=1.0&api=mtop.alihealth.mdeer.pidemic.getAllDiseaseInfo&env=m&cookie2=57f3e6c517bc789a7520228543ed15f3&sg=810&data=%7B"province"%3A"湖北省"%2C"city"%3A"武汉"%7D']
	
	rootDir = "/Users/Bable/Documents/#Develope/Projects/Scrapy/coronavirus/json/alibaba/"

	connect = None
	cursor = None
	# newDatasToDb = []
	nowDateTime = ''
	dataDateTime = ''
	# 当前数据录入批次日志id
	entry_log_id = None

	allLocationDatas = []
	allLocationDatas_matrix = None


	# 主程序
	def parse(self, response):
		print('AlibabaSpider parse')

		# 链接数据库
		AlibabaSpider.connect = pymysql.connect(
			host='127.0.0.1',  # 数据库地址
			port=3306,  # 数据库端口
			db='dataworks',  # 数据库名
			user='root',  # 数据库用户名
			passwd='123',  # 数据库密码
			charset='utf8',  # 编码方式
			use_unicode=True)
		AlibabaSpider.cursor = AlibabaSpider.connect.cursor();

		jsonData = AlibabaSpider.getDictData()

		# print(jsonData)
		
		if(jsonData == False):
			print('无当天数据, 程序结束')
			return
		
		# 获取当前日期时间
		AlibabaSpider.nowDateTime = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
		

		data = jsonData['data']
		
		# 读取数据日期
		updateTime = data['cityArray']['dataSourceUpdateTime']['updateTime']
		updateTime = updateTime.replace('年','-')
		updateTime = updateTime.replace('月','-')
		AlibabaSpider.dataDateTime = re.sub(re.compile(r'[\u4e00-\u9fa5]'), '', updateTime)+':00'

		# 读取数据记录日志表，判断此数据是否已录入数据库，防止重复录入
		sql_getLog = "select 'id' from t_data_entry_log where data_source_name = 'alibaba' and datetime = '%s'"%(AlibabaSpider.dataDateTime)
		logDatasNum = AlibabaSpider.cursor.execute(sql_getLog)
		
		if(logDatasNum != 0):
			print('当前批次数据已经全部录入（阿里巴巴 %s）, 程序结束'%(AlibabaSpider.dataDateTime))
			return
		else:
			print('准备加入新批次数据（阿里巴巴 %s）'%(AlibabaSpider.dataDateTime))
			sql_addNewLog = "insert into t_data_entry_log(datetime,data_source_name,entry_time,data_source_url) values(%s,%s,%s,%s);"
			AlibabaSpider.cursor.execute(sql_addNewLog, [AlibabaSpider.dataDateTime,'alibaba',AlibabaSpider.nowDateTime,AlibabaSpider.start_urls[0]])
			AlibabaSpider.connect.commit()

			AlibabaSpider.entry_log_id = AlibabaSpider.cursor.lastrowid
			print("新日志id = %s"%(AlibabaSpider.entry_log_id))
			



		# 全国数据
		country_china = data['cityArray']['country']
		# 全国数据 变化
		incCountry_china = data['cityArray']['incCountry']

		item = AlibabaSpider.addNewTo_newDatasToDb(**{
			'newRecord':country_china,
			'location_id':1,
			'country_id':1
		})
		if(item):
			yield item
		
		# 新增、修正全国历史数据
		# AlibabaSpider.getBatchData(data['cityArray']['trend'])
		print('新增、修正全国历史数据')
		trend = data['cityArray']['trend']
		sql_getChinaData = "select id,datetime from t_epidemic_situation where location_id = 1"
		AlibabaSpider.cursor.execute(sql_getChinaData)
		chinaDataInDb = list(AlibabaSpider.cursor.fetchall())
		havenDates = []
		for chinaData in chinaDataInDb:
			dateAndtime = chinaData[1].strftime('%m.%d')
			dateList = dateAndtime.split('.')
			havenDates.append("%s.%s"%(int(dateList[0]),dateList[1]))

		# print(havenDates)

		for oneDayHistoryData in trend:
			if oneDayHistoryData['day'] in havenDates:
				print('过滤数据库中已有数据 %s'%(oneDayHistoryData['day']))
				continue
			else:
				item = AlibabaSpider.addNewTo_newDatasToDb(**{
					'datetime':"2020.%s 23:59:59"%(oneDayHistoryData['day']),
					'location_id':1,
					'country_id':1,
					'newRecord':{
						# 确诊病例数目
						'totalConfirmed': oneDayHistoryData['sure_cnt'],
						# 疑似病例数目
						'totalDoubtful': None,
						# 治愈人数
						'totalCured': oneDayHistoryData['cure_cnt'],
						# 死亡病例数目
						'totalDeath': oneDayHistoryData['die_cnt'],
					}
				})
				print(item)
				yield item
		print('新增、修正全国历史数据 结束')
		

		# 查询地区表所有数据
		sql_getLocations = "select * from t_area"
		AlibabaSpider.cursor.execute(sql_getLocations)
		AlibabaSpider.allLocationDatas = list(AlibabaSpider.cursor.fetchall())

		# print('allLocationDatas')
		# print(AlibabaSpider.allLocationDatas)
		AlibabaSpider.allLocationDatas_matrix = pd.DataFrame(AlibabaSpider.allLocationDatas,columns=['id','level','parent_id','name'])


		# 读取各省数据
		provinceArray = data['cityArray']['provinceArray']

		for province in provinceArray:
			# 遍历匹配省
			provinceName = province['childStatistic']
			provinceDataInDb_matrix = AlibabaSpider.allLocationDatas_matrix[(AlibabaSpider.allLocationDatas_matrix.name == provinceName) & (AlibabaSpider.allLocationDatas_matrix.level == 2)]
			if(provinceDataInDb_matrix.empty):
				# 生成新省数据
				sql_addNewArea_province = "insert into t_area(level,parent_id,name) values(%s,%s,%s);"
				AlibabaSpider.cursor.execute(sql_addNewArea_province, [2,1,provinceName])
				AlibabaSpider.connect.commit()

				province_id = int(AlibabaSpider.cursor.lastrowid)
				print("新省id = %s"%(province_id))
			else:
				province_id = int(provinceDataInDb_matrix.iloc[0]['id'])

			item = AlibabaSpider.addNewTo_newDatasToDb(**{
				'newRecord':province,
				'location_id':province_id,
				'country_id':1,
				'province_id':province_id,
			})
			if(item):
				yield item

			cityArray = province['cityArray']
			for city in cityArray:
				# 遍历匹配市
				cityName = city['childStatistic']
				cityDataInDb_matrix = AlibabaSpider.allLocationDatas_matrix[(AlibabaSpider.allLocationDatas_matrix.name == cityName) & (AlibabaSpider.allLocationDatas_matrix.level == 3)]
				if(cityDataInDb_matrix.empty):
					# 生成新市数据
					sql_addNewArea_city = "insert into t_area(level,parent_id,name) values(%s,%s,%s);"
					
					print('生成新市数据')
					print(province_id)
					print(cityName)

					AlibabaSpider.cursor.execute(sql_addNewArea_city, [3,province_id,cityName])
					AlibabaSpider.connect.commit()

					city_id = int(AlibabaSpider.cursor.lastrowid)
					# print("新市id = %s"%(city_id))
				else:
					city_id = int(cityDataInDb_matrix.iloc[0]['id'])

				item = AlibabaSpider.addNewTo_newDatasToDb(**{
					'newRecord':city,
					'location_id':city_id,
					'country_id':1,
					'province_id':province_id,
					'city_id':city_id,
				})
				if(item):
					yield item
				
		# 其他国家数据
		abroadCountry = data['cityArray']['abroadCountry']
		for country in abroadCountry:
			countryName = country['childStatistic']
			countryDataInDb_matrix = AlibabaSpider.allLocationDatas_matrix[(AlibabaSpider.allLocationDatas_matrix.name == countryName) & (AlibabaSpider.allLocationDatas_matrix.level == 1)]
			if(countryDataInDb_matrix.empty):
				# 生成新市数据
				sql_addNewArea_country = "insert into t_area(level,parent_id,name) values(%s,%s,%s);"
				AlibabaSpider.cursor.execute(sql_addNewArea_country, [1,None,countryName])
				AlibabaSpider.connect.commit()

				country_id = int(AlibabaSpider.cursor.lastrowid)
				# print("新国id = %s"%(country_id))
			else:
				country_id = int(countryDataInDb_matrix.iloc[0]['id'])

			item = AlibabaSpider.addNewTo_newDatasToDb(**{
				'newRecord':country,
				'location_id':country_id,
				'country_id':country_id
			})
			if(item):
				yield item


		# 执行增长率统计
		# analysis.calculateGrowthRates(True)

		# 关闭数据库连接
		AlibabaSpider.cursor.close()
		AlibabaSpider.connect.close()

	def addNewTo_newDatasToDb(newRecord,datetime = None,location_id = None,country_id = None,province_id = None,city_id = None):
		
		# newDbDict = AlibabaSpider.newDatasToDb
		entry_time = AlibabaSpider.nowDateTime
		if(datetime == None):
			datetime = AlibabaSpider.dataDateTime
		entry_log_id = AlibabaSpider.entry_log_id

		newData = {
			# 数据所属时间
			'datetime':datetime,
			# 录入本表的时间
			'entry_time':entry_time,
			# 录入日志表id
			'entry_log_id':entry_log_id,

			'location_id':location_id,
			'country_id':country_id,
			'province_id':province_id,
			'city_id':city_id,

			# 确诊病例数目
			'totalConfirmed': newRecord['totalConfirmed'],
			# 疑似病例数目
			'totalDoubtful': newRecord['totalDoubtful'],
			# 治愈人数
			'totalCured': newRecord['totalCured'],
			# 死亡病例数目
			'totalDeath': newRecord['totalDeath'],
		}
		# newDbDict.append(newData)
		return newData


	def getDictData(getType = "file",response = None,date = None):
		if(getType == 'file'):
			if(date == None):
				# 获取昨天日期，匹配json文件名称
				date = (datetime.date.today()-datetime.timedelta(days=1)).strftime('%Y%m%d')
			newJsonFile = open(AlibabaSpider.rootDir+date+".json",encoding='utf-8');
			if(newJsonFile == False):
				return False
			jsonContext = json.load(newJsonFile)
			return jsonContext

	def getBatchData(trend):
		sql = "select * from t_epidemic_situation where location_id = 1"
		AlibabaSpider.cursor.execute(sql_getLocations)
		AlibabaSpider.allLocationDatas = list(AlibabaSpider.cursor.fetchall())


		
		