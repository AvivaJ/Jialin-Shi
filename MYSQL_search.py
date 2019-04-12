import sys
reload(sys)
sys.setdefaultencoding('utf8')
import mysql.connector

cnx = mysql.connector.connect(user='inf551', password='inf551',
host='127.0.0.1', database='inf551')
cursor = cnx.cursor()

## split words
search = sys.argv[-1]

string="SELECT app as App,count(review) as Review ,avg(Sentiment_Polarity) as Sentiment_Polarity  FROM googleplaystore_user_reviews WHERE MATCH (review) AGAINST ('"+search+"' IN NATURAL LANGUAGE MODE) and Sentiment_Polarity >0.8 and Sentiment_Subjectivity > 0.8 group by app order by Sentiment_Polarity desc limit 10;"

query = string
cursor.execute(query)

with open("jialin.csv",'w') as file:
    file.write('App'+","+ 'Review'+","+'Sentiment_Polarity')

for each in cursor:
    b="\n"+str(each[0])+","+str(each[1])+","+str(each[2])
    with open("jialin_shi_q2.csv",'a') as file:
        file.write(b)           

cursor.close()
cnx.close()


