# -*- coding: utf-8 -*-

import psycopg2

conn = psycopg2.connect(user='twitter', password='tsacs3m', dbname='dati', host='52.16.148.22', port=5432)
curs = conn.cursor()
reader = conn.cursor()

#states = {"sterreich","Belgi","Hrvatska","Kibris","Ceská Republika","Danmark","Eesti","Suomi","France","Deutschland","Ελλάδα","Magyarország","Ireland","Italia","Latvia","Lietuva","Luxemburg","Malta","Nederland","Polska","Portugal","România","Slovensko","Slovenija","España","Sverige","United Kingdom","България"}
states = {"Österreich","België","Hrvatska","Kibris","Ceská Republika","Danmark","Eesti","Suomi","France","Deutschland","Ελλάδα","Magyarország","Ireland","Italia","Latvia","Lietuva","Luxemburg","Malta","Nederland","Polska","Portugal","România","Slovensko","Slovenija","España","Sverige","United Kingdom","България"}
curs.execute('SELECT last_analized FROM last_id_analized')

last_id = curs.fetchone()

reader.execute('SELECT * FROM eutweets WHERE id > %s ORDER BY id',(last_id))

for tuple in reader:
	if tuple[4] in states:
		if tuple[2] in tuple[1]:
			print(tuple)
			#sistemare elenco parole chiave

conn.commit()
curs.close()
reader.close()
