
import json
import sys
from lxml import etree

## split words
search = sys.argv[-1]
search = search.lower()
keywords = search.split()


with open(sys.argv[1]) as f:
    tree=etree.parse(f)

id=[]
for each in keywords:
    num=tree.xpath("//entry[contains(keyword,'"+each+"')]//number/text()")
    for i in num:
        if i in id:
            continue
        else:
            id.append(i)
print id

