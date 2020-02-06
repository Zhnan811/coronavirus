# 统计
import pymysql
# from datetime import datetime,timedelta
import datetime

class analysis():

	def calculateGrowthRates(saveToDb = False):
		# 链接数据库
		connect = pymysql.connect(
			host='127.0.0.1',  # 数据库地址
			port=3306,  # 数据库端口
			db='dataworks',  # 数据库名
			user='root',  # 数据库用户名
			passwd='123',  # 数据库密码
			charset='utf8',  # 编码方式
			use_unicode=True)
		cursor = connect.cursor();

		# 读地区表
		sql_getLocations = "select id from t_area"
		cursor.execute(sql_getLocations)
		allLocationDatas = list(cursor.fetchall())
		# print(allLocationDatas)
		nowTime = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
		print(nowTime)

		# 遍历地区表，分别计算每个的地区各天的数据
		allAnalysisData = []
		for locationData in allLocationDatas:
			location_id = locationData[0]

			sql_getSituationData = "select id,datetime,totalConfirmed,totalDoubtful,totalDeath,totalCured from t_epidemic_situation where location_id = %s order by datetime asc"%(location_id)
			cursor.execute(sql_getSituationData)
			situationData = list(cursor.fetchall())

			# print(situationData)
			
			if(len(situationData) <= 1):
				continue
			else:
				# 遍历改地区所有有数据的日期，每个日期中只选最新的数据，进行增长率计算
				i = 0
				for sData in situationData:
					if(i != 0):
						lastDateTimeStr = beforeSData[1].strftime('%Y-%m-%d')
						nowSDataBeforDateStr = (sData[1]+datetime.timedelta(days = -1)).strftime('%Y-%m-%d')
						if(nowSDataBeforDateStr == lastDateTimeStr):
							# 前后两条数据相差为一天，可计算增长率 _growth_rates
							calculateFields = {'totalConfirmed':2,'totalDoubtful':3,'totalDeath':4,'totalCured':5}
							sDatetimeStr = (sData[1]).strftime('%Y-%m-%d')
							item = {
								'location_id':location_id,
								'datetime':sDatetimeStr,
								'entry_time':nowTime
							}
							for field in calculateFields:
								
								if((sData[calculateFields[field]] is not None) and (beforeSData[calculateFields[field]] is not None) and beforeSData[calculateFields[field]] != 0):
									# 当天与前一天的某项数据均有值，且前一天的数据不为零时，计算增长率
									item[field+"_growth_rates"] = round( (sData[calculateFields[field]] - beforeSData[calculateFields[field]])/beforeSData[calculateFields[field]] ,5)
								else:
									# 否则为空
									item[field+"_growth_rates"] = 'null'
							print(item)
							allAnalysisData.append(item)

							if(saveToDb):
								# 将结果保存到数据库
								where = " where location_id = %s and datetime = '%s'"%(location_id,sDatetimeStr)
								sql_findCaculatedData = "select id from t_epidemic_situation_growth_rates %s"%(where)
								findCaculatedDataRes = cursor.execute(sql_findCaculatedData)

								sqlset = ""
								if(findCaculatedDataRes > 0):
									sql = "update t_epidemic_situation_growth_rates set entry_time='%s', totalConfirmed_growth_rates='%s',totalDoubtful_growth_rates='%s',totalDeath_growth_rates='%s',totalCured_growth_rates='%s' %s"%(
											item['entry_time'], 

											item['totalConfirmed_growth_rates'], 
											item['totalDoubtful_growth_rates'], 
											item['totalDeath_growth_rates'], 
											item['totalCured_growth_rates'], 

											where
									)
								else:
									sql = "insert into t_epidemic_situation_growth_rates (location_id,datetime,entry_time, totalConfirmed_growth_rates,totalDoubtful_growth_rates,totalDeath_growth_rates,totalCured_growth_rates) values(%s,'%s','%s',%s,%s,%s,%s)"%(
											
											item['location_id'], 
											item['datetime'], 
											item['entry_time'], 

											item['totalConfirmed_growth_rates'], 
											item['totalDoubtful_growth_rates'], 
											item['totalDeath_growth_rates'], 
											item['totalCured_growth_rates'], 
									)

								print(sql)
								cursor.execute(sql)
								connect.commit()


					beforeSData = sData
					i += 1

		return allAnalysisData


if __name__ == '__main__':
	
	
	allAnalysisData = analysis.calculateGrowthRates(saveToDb = True)
	print(allAnalysisData)