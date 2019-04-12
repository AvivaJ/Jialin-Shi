
import json
import lxml
import sys
from lxml import etree

with open(sys.argv[1]) as f:
    tree=etree.parse(f)

i=0
address=[]
with open(sys.argv[1]) as f:
    tree=etree.parse(f)
for element in tree.xpath("//account/@*"):
    addr=tree.xpath("//address/text()")
    if i<1001:
        address.append({element:addr[i]})
    i=i+1


index={}
for each in address:
    word =list(each.values())[0].split()
    for ele in word:
        ele=ele.lower()        
        if ele not in index:
            value=[list(each.keys())[0]]        
            index[ele]=value    
        else:
            value=index[ele]
            value.append(list(each.keys())[0])
            index[ele]=value


def toIndex(dict1, lp=""):
    content=[]
    content.append(lp+ "<" +"index"+">")
    for each in dict1:
        content.append("    "+lp+"<entry>")
        content.append("        "+lp+"<keyword>"+each+"</keyword>")
        content.append("        "+lp+"<accounts>")
        for id in dict1[each]:
            content.append("            "+lp+"<number>"+id+"</number>")    
        content.append("        "+lp+"</accounts>")
        content.append("    "+lp+"</entry>")
    content.append(lp+ "<" +"/index"+">")
    return '\n'.join(content)     
    return str(lp)+str(dict1)

print toIndex(index)

with open(sys.argv[2],'w') as index_file:
    index_file.write(toIndex(index))

