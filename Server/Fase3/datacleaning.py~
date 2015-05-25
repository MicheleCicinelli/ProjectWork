# -*- coding: utf-8 -*-

import psycopg2

conn = psycopg2.connect(user='twitter', password='tsacs3m', dbname='dati', host='52.16.148.22', port=5432)
curs = conn.cursor()
reader = conn.cursor()

states = {"Österreich","België","Hrvatska","Kibris","Ceská Republika","Danmark","Eesti","Suomi","France","Deutschland","Ελλάδα","Magyarország","Ireland","Italia","Latvia","Lietuva","Luxemburg","Malta","Nederland","Polska","Portugal","România","Slovensko","Slovenija","España","Sverige","United Kingdom","България"}
curs.execute('SELECT last_analized FROM last_id_analized')

keywords = {"program", "code", "cod", "develop", "computer", "pc", "ict", "it", "language", "database", "db", "opensource", "apache", "tomcat", "api", "app", "css", "cloud", "site", "django", "cassandra", "dev", "arch", "linux", "ubuntu", "deb", "win", "csv", "json", "soft", "hard", "work", "job", "hire", "hiring", "hack", "ware", "digi", "xml", "css"}

last_id = curs.fetchone()

valid = False

reader.execute('SELECT * FROM eutweets WHERE id > %s ORDER BY id',(last_id))

for tuple in reader:
	if tuple[4] in states:
		if tuple[2] in tuple[1]:
			for word in keywords:
				if word in tuple[1]
					valid = True
	if valid:
		print(tuple)

conn.commit()
curs.close()
reader.close()
