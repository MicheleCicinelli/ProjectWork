# -*- coding: utf-8 -*-

import psycopg2

def getTuples():
	counter = conn.cursor()
	idC = conn.cursor()
	max_id = conn.cursor()

	idC.execute('SELECT last_analized FROM last_id_analized')
	max_id.execute("SELECT MAX(id) FROM cleaned_tweets")
	max_id.execute("UPDATE last_id_analized SET last_analized = %s",(max_id.fetchone()))

	id = idC.fetchone()

	query = "SELECT nation, prog_lang, COUNT(id), year, month FROM cleaned_tweets WHERE id > {0} GROUP BY year, month, nation, prog_lang, year, month ORDER BY nation".format(id[0])
	counter.execute(query)


	tuples = counter.fetchall()

	counter.close()
	idC.close()
	max_id.close()

	return(tuples)

def setTuples(tuples):
	statesC = conn.cursor()
	placer = conn.cursor()
	
	statesC.execute("SELECT nation_orig_lang, nation_eng_lang FROM nations")
	
	states_tmp = statesC.fetchall()
	states = {}
	for st in states_tmp:
		states[st[0]] = st[1]

	for tuple in tuples:
		query_placer = "SELECT * FROM stats WHERE year = {0} AND month = {1} AND nation = '{2}'".format(tuple[3], tuple[4], states[tuple[0]])
		placer.execute(query_placer)
		checker = placer.fetchall()
		if not checker:
			placer.execute("INSERT INTO stats (nation,java,c,cplusplus,csharp,javascript,php,python,visual_basic,ruby,swift,html,scala,obj_c,year, month) VALUES (%s,0,0,0,0,0,0,0,0,0,0,0,0,0,%s,%s)",(states[tuple[0]], tuple[3], tuple[4]))
		placer.execute("UPDATE stats SET {0} = {1} + {2} WHERE nation = '{3}' AND year = {4} AND month = {5}".format(tuple[1], tuple[1], tuple[2], states[tuple[0]], tuple[3], tuple[4]))
	
	statesC.close()
	placer.close()

	return("Cycle ended")

if __name__ == '__main__':
	conn = psycopg2.connect(user='twitter', password='tsacs3m', dbname='dati', host='52.16.148.22', port=5432)
	print(setTuples(getTuples()))
	conn.commit()
	conn.close()