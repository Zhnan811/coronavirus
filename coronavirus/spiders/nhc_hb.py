# -*- coding: utf-8 -*-
import scrapy


class NhcHbSpider(scrapy.Spider):
	name = 'nhc_hb'
	
	start_urls = ['http://wjw.hubei.gov.cn/fbjd/tzgg']
	# start_urls = ['http://wjw.hubei.gov.cn/fbjd/tzgg/202002/t20200205_2019294.shtml']
	rootUrl = 'http://wjw.hubei.gov.cn'


	def parse(self, response):
		print('parse')
		print(response)
		print(response.text)
		pass

		tr_list = response.xpath("//ul[@id='share']//li")
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

		next_url = 'http://wsjkw.henan.gov.cn'+str(next_url)
		print("next_url: "+next_url)
		if next_url:
			# print('next')
			yield scrapy.Request(
				next_url,
				callback=self.parse
			)

	def parse_list(self, response):
		print('parse_list')
		print(response.text)
		pass

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

	
