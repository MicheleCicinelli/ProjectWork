# -*- coding: utf-8 -*-

import psycopg2
import sys

def getTuples():
	try:
		counter = conn.cursor()
		idC = conn.cursor()
		max_id = conn.cursor()

		idC.execute('SELECT last_analized FROM last_id_analized_v2')
		max_id.execute("SELECT MAX(id) FROM cleaned_tweets")
		max_id.execute("UPDATE last_id_analized_v2 SET last_analized = %s",(max_id.fetchone()))

		id = idC.fetchone()

		query = "SELECT nation, year, month, prog_lang, COUNT(id) FROM cleaned_tweets WHERE id > {0} GROUP BY nation, year, month, prog_lang".format(id[0])
		counter.execute(query)

		tuples = counter.fetchall()

		return(tuples)

	except psycopg2.Error as e:
		raise e

	finally:	
		counter.close()
		idC.close()
		max_id.close()

def setTuples(tuples):
	try:
		statesC = conn.cursor()
		placer = conn.cursor()
		
		statesC.execute("SELECT nation_orig_lang, nation_eng_lang FROM nations")
		
		states_tmp = statesC.fetchall()
		states = {}
		for st in states_tmp:
			states[st[0]] = st[1]

		for tuple in tuples:
			query = "SELECT * FROM stats_v2 WHERE year = {0} AND month = {1} AND nation = '{2}' AND prog_lang = '{3}'".format(tuple[1], tuple[2], states[tuple[0]], tuple[3])
			placer.execute(query)
			checker = placer.fetchall()
			if not checker:
				query = "INSERT INTO stats_v2 (nation, prog_lang, tweets, year, month) VALUES ('{0}','{1}',0,{2},{3})".format(states[tuple[0]], tuple[3], tuple[1], tuple[2])
				placer.execute(query)
			query = "UPDATE stats_v2 SET tweets = tweets + {0} WHERE nation = '{1}' AND year = {2} AND month = {3} AND prog_lang = '{4}'".format(tuple[4], states[tuple[0]], tuple[1], tuple[2], tuple[3])
			placer.execute(query)
			
		return("Cycle ended, statistics updated.")

	except psycopg2.Error as e:
		raise e

	finally:
		statesC.close()
		placer.close()

if __name__ == '__main__':
	conn = psycopg2.connect(user='', password='', dbname='', host='', port=5432)
	print("Data analysis v2.1")
	print("START")
	print(setTuples(getTuples()))
	print("END")
	conn.commit()
	conn.close()