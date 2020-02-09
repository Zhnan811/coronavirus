# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql

class CoronavirusPipeline(object):
	def __init__(self):
		# 连接数据库
		self.connect = pymysql.connect(
			host='127.0.0.1',  # 数据库地址
			port=3306,  # 数据库端口
			db='dataworks',  # 数据库名
			user='root',  # 数据库用户名
			passwd='123',  # 数据库密码
			charset='utf8',  # 编码方式
			use_unicode=True)

		# 通过cursor执行增删查改
		self.cursor = self.connect.cursor();

	def process_item(self, item, spider):

		if(spider.name == 'alibaba'):
			self.cursor.execute("""
					insert into t_epidemic_situation (location_id,country_id,province_id,city_id,datetime,totalConfirmed,totalDoubtful,totalDeath,totalCured,entry_time,entry_log_id) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
					""",(
						item['location_id'], 
						item['country_id'], 
						item['province_id'], 
						item['city_id'], 
						item['datetime'], 
						item['totalConfirmed'], 
						item['totalDoubtful'], 
						item['totalDeath'], 
						item['totalCured'], 
						item['entry_time'], 
						item['entry_log_id']
					)
			)

			self.connect.commit()
		elif(spider.name == 'nhc_hb'):
			self.cursor.execute("""
					insert into hco_hubei (location_id,country_id,province_id,city_id,datetime,totalConfirmed,totalDeath,totalCured,totalConfirmed_growth,totalCloseContact,totalUnderMedicalObservation,entry_time) values(%s,%s,%s,%s,%s, %s,%s,%s,%s,%s, %s,%s)
					""",(
						item['location_id'], 
						item['country_id'], 
						item['province_id'], 
						item['city_id'], 

						item['datetime'], 
						item['totalConfirmed'], 
						item['totalDeath'], 
						item['totalCured'], 

						item['totalConfirmed_growth'],
						item['totalCloseContact'],
						item['totalUnderMedicalObservation'],

						item['entry_time'], 
						
					)
			)

			self.connect.commit()
		return item
