# -*- coding: utf-8 -*-
import scrapy
# import requests
from lxml import etree
import re
import os
import datetime
class NhcHbSpider(scrapy.Spider):
	name = 'nhc_hb'
	
	start_urls = [
		# 'http://nsclick.baidu.com/v.gif?pid=307&type=3075&l=9826&t=0&s=9826&v=721&f=7000&r=&u=http%3A%2F%2Fwjw.hubei.gov.cn%2Ffbjd%2Ftzgg%2F',
		'http://wjw.hubei.gov.cn/fbjd/tzgg',
		# 'http://www.baidu.com',
		# 'http://wjw.hubei.gov.cn/fbjd/tzgg/202002/t20200208_2021419.shtml',
		# 'http://ta.trs.cn/c/1.gif?mpId=2998&event=viewInfo&cu=k6de7dmp_2998_9fpq&cs=k6f9aori_2998_eaxe&pv=2998_k6f9si2m_2ggl&vp=0.3363&url=http%3A%2F%2Fwjw.hubei.gov.cn%2Ffbjd%2Ftzgg%2F'
	]
	# start_urls = ['http://wjw.hubei.gov.cn/fbjd/tzgg/202002/t20200208_2021419.shtml']

	rootUrl = 'http://wjw.hubei.gov.cn'

	# def start_requests(self):
	# 	print('start_requests')
	# 	# print(self)
	# 	headers = {
	# 		'Accept': ' text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
	# 		'Accept-Encoding': ' gzip, deflate',
	# 		'Accept-Language': ' zh-CN,zh;q=0.9,en;q=0.8',
	# 		'Cache-Control': ' max-age=0',
	# 		'Connection': ' keep-alive',
	# 		'Cookie': ' FSSBBIl1UgzbN7N80S=hb3m3AIcdTsL3D1TarkvRXw09IMbaXze5uOuuvKqHa2lN8D5_BbalFvXPB9G7EXe; _trs_uv=k6de7dmp_2998_9fpq; _trs_ua_s_1=k6de7dmo_2998_4sa; dataHide2=67cafa23-be4b-487f-a3fb-801e9c175ae4; FSSBBIl1UgzbN7N80T=43FpnI1ZDkkS62kKmZOhb_UGHaE9RvnguZcbWvEz0fxkboy1YxpFah_5d5_Q7C2d6N7JHANuLsjW3N4j5k8rBhZ5QGVhOybikAAtPP0ydMM_JKKCuwCSA.MWmjPhDsIISWaniSPywsr6UdUhL5LJ1x4dJmWcrxYALNjCpgFwah3s00WN.zeFrrAWekBMmqjtpnNuHYqmJ.SdHEEb3fCL3ZFLtieeGcxrvHfAZIJpkU6gmtr4XQFKl9XMXQ4viHq0XqPgzqFz6.KeFloF81KfEriNAj5dJ0JeyJIzqw6M2znV_Megnki40Ybcf4Ik8Ap.AyPWnftzOtXPOzWSTm9zvjaxIAJoTc4ugCNM7UBu4JW5JqG',
	# 		'DNT': ' 1',
	# 		'Host': ' wjw.hubei.gov.cn',
	# 		'Upgrade-Insecure-Requests': ' 1',
	# 		'User-Agent': ' Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36',
	# 		'If-None-Match': ''
	# 	}
	# 	cookies = {
	# 		'FSSBBIl1UgzbN7N80S': 'hb3m3AIcdTsL3D1TarkvRXw09IMbaXze5uOuuvKqHa2lN8D5_BbalFvXPB9G7EXe',
	# 		'_trs_uv': 'k6de7dmp_2998_9fpq',
	# 		'_trs_ua_s_1': 'k6de7dmo_2998_4sa',
	# 		'dataHide2': '67cafa23-be4b-487f-a3fb-801e9c175ae4',
	# 		'FSSBBIl1UgzbN7N80T': '43FpnI1ZDkkS62kKmZOhb_UGHaE9RvnguZcbWvEz0fxkboy1YxpFah_5d5_Q7C2d6N7JHANuLsjW3N4j5k8rBhZ5QGVhOybikAAtPP0ydMM_JKKCuwCSA.MWmjPhDsIISWaniSPywsr6UdUhL5LJ1x4dJmWcrxYALNjCpgFwah3s00WN.zeFrrAWekBMmqjtpnNuHYqmJ.SdHEEb3fCL3ZFLtieeGcxrvHfAZIJpkU6gmtr4XQFKl9XMXQ4viHq0XqPgzqFz6.KeFloF81KfEriNAj5dJ0JeyJIzqw6M2znV_Megnki40Ybcf4Ik8Ap.AyPWnftzOtXPOzWSTm9zvjaxIAJoTc4ugCNM7UBu4JW5JqG',
	# 	}
		
	# 	# print(headers)
	# 	for url in NhcHbSpider.start_urls :
	# 		yield scrapy.Request(url=url, headers=headers, cookies=cookies, callback=self.parse)

	def parse(self, response):
		print('parse')
		# print(response.text)
		# print(response.headers)
		# return
		# print(response.xpath("//ul[@id='share']"))
		nowTimeStr = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

		root = '/Users/Bable/Documents/#Develope/Projects/Scrapy/coronavirus/json/wjw_hb'
		file_names = os.listdir(root)
		
		for file_name in file_names:

			if('.html' not in file_name):
				continue

			file_path = root+'/'+file_name
			fp = open(file_path,'rb')
			print('path: '+file_path)
			# html = fp.read().decode('utf-8')   #.decode('gbk')
			html = fp.read()   #.decode('gbk')
			# print(html) 
			selector = etree.HTML(html)   #etree.HTML(源码) 识别为可被xpath解析的对象
		

			spans = selector.xpath("//div[@id='article-box']//span")
			# data1 = selector.xpath("//div[@id='article-box']/div[@class='view TRS_UEDITOR trs_paper_default trs_word trs_key4format']/text()")
			print('spans first')
			# print(spans)
			item = {}
			item['location_id'] = 403
			item['country_id'] = 1
			item['province_id'] = 403
			item['city_id'] = None
			item['entry_time'] = nowTimeStr

			datetimeStr = None
			for data in spans:

				# print(data)
				print(data.text)
				text = data.text

				if(datetimeStr == None):
					dateReRes = re.search('\d.*月\d+日', text)
					if(dateReRes):
						datetimeStr = dateReRes[0]
						datetimeStr = datetimeStr.replace('日','')
						datetimeStr = datetimeStr.replace('月','-')					
						item['datetime'] = "2020-"+datetimeStr

				reWords_pr = {
					# 全省：
					# 每日新增病例
					'totalConfirmed_growth':'肺炎病例\d+例',
					# 累计病例
					'totalConfirmed':'肺炎病例\d+例',
					# 累计已治愈出院
					'totalCured':'治愈出院\d+例',
					# 累计死亡
					'totalDeath':'死亡\d+例',
					# 累计仍在院治疗:
					'totalUnderTreatment':'在院治疗\d+例',
					# # 累计仍在院治疗-重症
					# 'totalUnderTreatment_severe':'重症\d+例',
					# # 累计仍在院治疗-危重症
					# 'totalUnderTreatment_critical':'危重症\d+例',
					# 追踪密切接触者
					'totalCloseContact':'密切接触者\d+人',
					# 尚在接受医学观察
					'totalUnderMedicalObservation':'尚在接受医学观察\d+人',
				}
				for key in reWords_pr:
					if(key == 'totalConfirmed' and ('累计' not in text)):
						continue
					elif(key == 'totalConfirmed_growth' and ('新增' not in text)):
						continue
					else:
						reRes = re.search(reWords_pr[key], text)
						if(reRes):
							item[key] = int("".join(filter(str.isdigit, reRes[0])))

				# 各市：
				# 每日新增病例
				# 累计病例
				# 累计死亡


			print(item)

			yield item


		return


		tr_list = selector.xpath("//ul[@id='share']//li")
		print(tr_list)

		return
		for tr in tr_list:
			item = coronavirus.items.CoronavirusItem()
			item['text'] = tr.xpath(".//a/@title").extract_first()
			item['href'] = tr.xpath(".//a/@href").extract_first()
			# time = ''.join(re.search('\d+年\d+月\d+日',time)[0])
			item['href'] = ''.join(item['href'])
			text = ''.join(item['text'])
			# print(text)
			if '湖北省新型冠状病毒感染的肺炎疫情情况' in text:
				yield scrapy.Request(
					NhcHbSpider.rootUrl+item["href"],
					callback=self.parse_list,
					meta={"item": deepcopy(item)}
				)
		
		next_url = ''.join(response.xpath(".//a[text()= '下一页']/@href").extract())

		next_url = 'http://wsjkw.hubei.gov.cn'+str(next_url)
		print("next_url: "+next_url)
		if next_url:
			# print('next')
			yield scrapy.Request(
				next_url,
				callback=self.parse
			)
	def getDayData(selector):
		print('parse_list')

		item = {}
		# print(response.text)
		# data1 = ''.join(response.xpath("//div[@id='artibody']/p[1]/span[1]/text()").extract()).strip()
		data1 = ''.join(selector.xpath("//div[@id='article-box']/text()").extract()).strip()
		print('data1 first')
		print(data1)
		return

		if not data1:
			print('data1 none')
			data1 = ''.join(response.xpath("//div[@id='artibody']/p[1]/span[1]//span/text()").extract()).strip()
			print(data1)

		data2 = ''.join(response.xpath("//div[@id='artibody']/p[2]/span[1]/text()").extract()).strip()
		data3 = ''.join(response.xpath("//div[@id='artibody']/p[3]/span[1]/text()").extract()).strip()
			
		itemStr = {}

		item['datetime'] = re.search('\d.*月\d+日', data2)[0];

		
		print(re.search('肺炎确诊病例\d+例', data1))
		# 炎确诊病例73例
		itemStr['newly_confirmed_cases'] = re.search('肺炎确诊病例\d+例', data1)[0];
		itemStr['newly_cured_cases'] = re.search('新增出院病例\d+例', data1)[0];
		
		itemStr['cumulative_confirmed_cases'] = re.search('确诊病例\d+', data2)[0];
		itemStr['cumulative_severe_cases'] = re.search('重症病例\d+', data2)[0];
		itemStr['cumulative_critical_cases'] = re.search('危重病例\d+', data2)[0];
		itemStr['cumulative_death_cases'] = re.search('累计死亡病例\d+', data2)[0];
		itemStr['cumulative_cured_cases'] = re.search('累计治愈病例\d+', data2)[0];

		itemStr['observers_removed_cases'] = re.search('已解除观察\d+', data3)[0];
		itemStr['newly_suspected_cases'] = re.search('诊断为疑似\d+', data3)[0];
		itemStr['cumulative_close_contacts'] = re.search('密切接触者\d+', data3)[0];
		itemStr['cumulative_medical_observers'] = re.search('\d+人正在接受医学观察', data3)[0];

		for key in itemStr:
			# 去除中文，只提取数字
			item[key] = int("".join(filter(str.isdigit, itemStr[key])))



		item['location_id'] = 455
		item['country_id'] = 1
		item['province_id'] = 455
		item['city_id'] = 0
		item['entry_time'] = "2020-02-05 19:00:00"
		item['entry_log_id'] = 0

		print(item)
		# pass
		yield item
	def parse_list(self, response):
		print('parse_list')
		print(response.text)
		return

		item = response.meta['item']
		# print(response.text)
		# data1 = ''.join(response.xpath("//div[@id='artibody']/p[1]/span[1]/text()").extract()).strip()
		data1 = ''.join(response.xpath("//div[@id='artibody']/p[1]/span[1]/text()").extract()).strip()
		print('data1 first')
		print(data1)
		if not data1:
			print('data1 none')
			data1 = ''.join(response.xpath("//div[@id='artibody']/p[1]/span[1]//span/text()").extract()).strip()
			print(data1)

		data2 = ''.join(response.xpath("//div[@id='artibody']/p[2]/span[1]/text()").extract()).strip()
		data3 = ''.join(response.xpath("//div[@id='artibody']/p[3]/span[1]/text()").extract()).strip()
			
		itemStr = {}

		item['datetime'] = re.search('\d.*月\d+日', data2)[0];

		
		print(re.search('肺炎确诊病例\d+例', data1))
		# 炎确诊病例73例
		itemStr['newly_confirmed_cases'] = re.search('肺炎确诊病例\d+例', data1)[0];
		itemStr['newly_cured_cases'] = re.search('新增出院病例\d+例', data1)[0];
		
		itemStr['cumulative_confirmed_cases'] = re.search('确诊病例\d+', data2)[0];
		itemStr['cumulative_severe_cases'] = re.search('重症病例\d+', data2)[0];
		itemStr['cumulative_critical_cases'] = re.search('危重病例\d+', data2)[0];
		itemStr['cumulative_death_cases'] = re.search('累计死亡病例\d+', data2)[0];
		itemStr['cumulative_cured_cases'] = re.search('累计治愈病例\d+', data2)[0];

		itemStr['observers_removed_cases'] = re.search('已解除观察\d+', data3)[0];
		itemStr['newly_suspected_cases'] = re.search('诊断为疑似\d+', data3)[0];
		itemStr['cumulative_close_contacts'] = re.search('密切接触者\d+', data3)[0];
		itemStr['cumulative_medical_observers'] = re.search('\d+人正在接受医学观察', data3)[0];

		for key in itemStr:
			# 去除中文，只提取数字
			item[key] = int("".join(filter(str.isdigit, itemStr[key])))



		item['location_id'] = 455
		item['country_id'] = 1
		item['province_id'] = 455
		item['city_id'] = 0
		item['entry_time'] = "2020-02-05 19:00:00"
		item['entry_log_id'] = 0

		print(item)
		# pass
		yield item

	
