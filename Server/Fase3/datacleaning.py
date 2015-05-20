import psycopg2

conn = psycopg2.connect(user='twitter', password='tsacs3m', dbname='dati', host='52.16.148.22', port=5432)
curs = conn.cursor()

curs.execute('SELECT last_id_analized FROM last_analized')

last_id = curs.fetchone()

reader.execute('SELECT * FROM eutweets WHERE id > %s',(last_id))


for tuple in reader:
	print(tuple)

conn.commit()
curs.close()
reader.close()
