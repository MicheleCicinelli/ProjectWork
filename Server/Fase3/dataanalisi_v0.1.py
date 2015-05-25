# -*- coding: utf-8 -*-

import psycopg2

conn = psycopg2.connect(user='twitter', password='tsacs3m', dbname='dati', host='52.16.148.22', port=5432)

id_reader = conn.cursor()
counter = conn.cursor()
updater = 

states = {
'Österreich':'austria',
'België':'belgium',
'Hrvatska':'croatia',
'Kibris':'cyprus',
'Ceská Republika':'czech_republic',
'Danmark':'denmark',
'Eesti':'estonia',
'Suomi':'finland',
'France':'france',
'Deutschland':'germany',
'Ελλάδα':'greece',
'Magyarország':'hungary',
'Ireland':'ireland',
'Italia':'italy',
'Latvia':'latvia	',
'Lietuva':'lithuania',
'Luxemburg':'luxembourg',
'Malta':'malta',
'Nederland':'netherlands',
'Polska':'poland',
'Portugal':'portugal',
'România':'romania',
'Slovensko':'slovakia',
'Slovenija':'slovenia',
'España':'spain',
'Sverige':'sweden',
'United Kingdom':'united_kingdom',
'България':'bulgaria'
}

langs = {
'java':0,
'c':0,
'cplusplus':0,
'csharp':0,
'javascriptphp':0,
'python':0,
'visual_basic':0,
'ruby':0,
'swift':0,
'html':0,
'scala':0,
'obj_c':0}

id_reader.execute('SELECT last_analized FROM last_id_analized')

last_id = id_reader.fetchone()

for key, value in states.items():
	for key2, value2 in langs.items():
		counter.execute("SELECT COUNT(content) FROM cleaned_tweets WHERE nation LIKE %s AND prog_lang LIKE %s AND id > %s", (key, key2, last_id))
		top = counter.fetchone()
		langs[key2] = top[0]
	print(langs)

	
conn.commit()
id_reader.close()