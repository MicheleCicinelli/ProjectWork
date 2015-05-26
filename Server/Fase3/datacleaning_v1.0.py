# -*- coding: utf-8 -*-

import psycopg2

conn = psycopg2.connect(user='twitter', password='tsacs3m', dbname='dati', host='52.16.148.22', port=5432)


select_id = conn.cursor()
get_tuples = conn.cursor()
set_tuples = conn.cursor()

select_id.execute('SELECT last_cleaned FROM last_id_cleaned')

states = {'Österreich', 'België', 'Hrvatska', 'Kibris', 'Ceská Republika', 'Danmark', 'Eesti', 'Suomi', 'France', 'Deutschland', 'Ελλάδα', 'Magyarország', 'Ireland', 'Italia', 'Latvia', 'Lietuva', 'Luxemburg', 'Malta', 'Nederland', 'Polska', 'Portugal', 'România', 'Slovensko', 'Slovenija', 'España', 'Sverige', 'United Kingdom', 'България'}
keywords = {'program', 'code', 'cod', 'develop', 'computer', 'pc', 'ict', 'it', 'language', 'database', 'db', 'opensource', 'apache', 'tomcat', 'api', 'app', 'css', 'cloud', 'site', 'django', 'cassandra', 'dev', 'arch', 'linux', 'ubuntu', 'deb', 'win', 'csv', 'json', 'software', 'hardware', 'work', 'job', 'hire', 'hiring', 'hack', 'digi', 'xml', 'css'}

key_like = "AND ("
for key in keywords:
	key_like = key_like + "content @@ " + "'" + key + "' OR "
key_like = key_like[:-4]

state_like = ") AND ("
for sta in states:
	state_like = state_like + "nation @@ " + "'" + sta + "' OR "
state_like = state_like[:-4] + ")"

last_id_tmp = select_id.fetchone()

last_id = last_id_tmp[0]

higher_id = last_id

query = 'SELECT * FROM eutweets WHERE id >' + str(last_id) + ' ' + key_like + ' ' + state_like

get_tuples.execute(query)

for tuple in get_tuples:
	higher_id = tuple[0]
	date_tmp = tuple[3].split("-")
	date = date_tmp[0] + "-" + date_tmp[1]
	set_tuples.execute('INSERT INTO cleaned_tweets (content, prog_lang, created_at, nation, id_str) VALUES (%s, %s, %s, %s, %s)',(tuple[1], tuple[2], date, tuple[4], tuple[5]))	

select_id.execute('UPDATE last_id_cleaned SET last_cleaned=%s WHERE id=0',[higher_id])
conn.commit()
select_id.close()
get_tuples.close()
set_tuples.close()