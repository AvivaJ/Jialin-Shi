#!/usr/bin/python

import sys
import requests
import json
from pprint import pprint

## parse data and rewrite a new valid json document.
with open(sys.argv[1]) as data_file:
	content = data_file.readlines()
	with open('accounts_new.json', 'w') as write_file:
		write_file.write("[")
	for i in range(0, len(content)):
		if i % 2 == 0: 
			continue
		with open('accounts_new.json', 'a') as write_file:
			if i == len(content) - 1:
				write_file.write(content[i])
			else:
				write_file.write(content[i] + ",")
			
	with open('accounts_new.json', 'a') as write_file:
			write_file.write("]")


## load data into firebase
with open("accounts_new.json") as data_file:
	data = json.load(data_file)
	index = {}
	for account in data:
                num = account["account_number"]
		url = 'https://inf551-8bb30.firebaseio.com/account/' + str(num) + '.json'
#		response = requests.get(url)
		data_set = '{"account_number":' + str(num) + ',"balance":"' + str(account["balance"]) + '","firstname":"' + account["firstname"] + '","lastname":"' + account["lastname"] + '","age":' + str(account["age"]) + ',"gender":"' + account["gender"] + '","address":"' + str(account["address"]) + '","employer":"' + account["employer"] + '","email":"' + account["email"] + '","city":"' + account["city"] + '","state":"' + account["state"] + '"}'
		response = requests.put(url, data_set)
#		print (json.dumps(response.json(),indent=4))


## split address and make a dictionary
		arr = account["address"].split()
		for key in arr:
			if key.lower() not in index:
				value = [num]
				index[key.lower()] = value
			else:
				value = index[key.lower()]
				value.append(num)
				index[key.lower()] = value

## load index into firebase
        url = 'https://inf551-8bb30.firebaseio.com/index.json'        
        response = requests.put(url, json.dumps(index))





		
		
		
		
		
