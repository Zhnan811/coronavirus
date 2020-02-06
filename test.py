from selenium import webdriver
# chrome_options = webdriver.ChromeOptions()
# headless无界面模式
# chrome_options.add_argument("--headless")
# chrome_options.add_argument("--disable-gpu")
driver = webdriver.Chrome(executable_path="/Users/Bable/Documents/chromedrivers/chromedriver_mac")
driver.get(url)