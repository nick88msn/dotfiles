import webbrowser
import time
import json
import requests

def getProxyList(url):
    r = requests.get(url, allow_redirects=True)
    c = json.loads(r.content)
    with open('proxies.txt','a') as file:
        for proxy in c[0]["LISTA"]:
            file.write(f'\n{proxy["IP"]}:{proxy["PORT"]}')

#url = 'https://raw.githubusercontent.com/clarketm/proxy-list/master/proxy-list-raw.txt'
url3 = 'http://www.proxy-list.download/api/v0/get?l=en&t=http'
url4 = 'http://www.proxy-list.download/api/v0/get?l=en&t=https'
sock5= 'https://www.proxy-list.download/api/v0/get?l=en&t=socks5'
#r = requests.get(url, allow_redirects=True)
with open('proxies.txt','w') as file:
    file.write("")

getProxyList(sock5)

'''
while True:
    url2 = 'https://api.getproxylist.com/proxy'
    try:
        r = requests.get(url2, allow_redirects=True)
        text = json.loads(r.content)
        print(f"{text['ip']}:{text['port']}")
        open('proxies.txt','a').write(f"\n{text['ip']}:{text['port']}")
        time.sleep(60)
    except KeyError as e:
        time.sleep(600)
'''
