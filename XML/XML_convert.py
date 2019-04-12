# Jialin Shi
# UID: 7948542502


import json
import sys


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
            
## open file and load into python object
with open("accounts_new.json") as data_file:
    data = json.load(data_file)


## define a function turn python object into xml
def toXML(json_value, lp=""):
    content=[]
    typeJ = type(json_value)
    if typeJ is dict:
        content.append("    "+lp+ "<" + "account number" +"="+'"'+str(json_value['account_number'])+'"'+">")
        for key in json_value:
            if key!='account_number':
                content.append("        "+lp+ "<" + str(key) + ">"+str(json_value[key])+lp+"</"+ str(key) +">")
        content.append("    "+lp+ "<" +"/account"+">")
        return '\n'.join(content)
    if typeJ is list:
        content.append(lp+ "<" +"accounts"+">")
        for i in json_value:
            content.append(toXML(i, lp))
        content.append(lp+ "<" +"/accounts"+">")
        return '\n'.join(content)      
    return str(lp)+str(json_value)

print toXML(data)

with open(sys.argv[2],'w') as xml_file:
    xml_file.write(toXML(data))




