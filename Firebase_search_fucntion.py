import json
import requests
import sys


## download data from firebase
url = 'https://inf551-7481f.firebaseio.com/index.json'
index = requests.get(url)
## for python use
index = json.loads(index.content)


## split words
search = sys.argv[-1]
search = search.lower()
keywords = search.split()


## get values
check = index.keys()
id = []
for i in keywords:
	if i in check:
		kw_id = index.get(i)
		for j in kw_id:
			if j in id:
				continue
			else:
				id.append(j)
	else:
		print"'{}' is not found".format(i)

print "Releated ids are {}.".format(id)


