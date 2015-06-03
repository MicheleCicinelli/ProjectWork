# -*- coding: utf-8 -*-

import tweepy
import psycopg2
import os
import sys

def get_auth(consumer_key, app_secret):
	try:
		auth = tweepy.AppAuthHandler(consumer_key, app_secret)
	  
		api = tweepy.API(auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True)
		return api

	except tweepy.TweepError as e:
		raise e

def get_tweets(api):
	try:	
		conn = psycopg2.connect(user='', password='', dbname='dati', host='', port=5432)

		curs = conn.cursor()

		id_present = False

		lang_list = "SELECT prog_lang, search_query FROM programming_languages"
		curs.execute(lang_list)

		languages = curs.fetchall()

		langs ={}

		for lang in languages:
			langs[lang[0]] = lang[1]

		count = 0

		for key, value in langs.items():
			
			stringa = "SELECT id_str FROM last_id WHERE lang LIKE '" + key + "'"
			
			curs.execute(stringa)
			last_id = curs.fetchone()
			for status in tweepy.Cursor(api.search, q=value, count = 100, since_id = last_id[0]).items(10):
				
				if id_present == False:
					
					curs.execute('UPDATE last_id SET id_str = %s WHERE lang LIKE %s',(status.id_str, key))
					id_present = True

				if status.place:
					curs.execute('INSERT INTO eutweets (content, prog_lang, created_at, nation, id_str) VALUES (%s, %s, %s, %s, %s)', (status.text, key, status.created_at.date(), status.place.country, status.id_str))

					count += 1

			id_present = False
			conn.commit()

		print(str(count) + " tweets!")

	except (tweepy.TweepError, psycopg2.Error) as e:
		raise e
	finally:
		curs.close()
		conn.close()

def createStringForClean():
	try:
		idC = conn.cursor()
		statesC = conn.cursor()
		langsC = conn.cursor()
		keywordC = conn.cursor()

		idC.execute('SELECT last_cleaned FROM last_id_cleaned')
		statesC.execute("SELECT nation_orig_lang FROM nations")
		langsC.execute("SELECT prog_lang FROM programming_languages")
		keywordC.execute("SELECT word FROM keywords")

		states = statesC.fetchall()
		langs = langsC.fetchall()
		keywords = keywordC.fetchall()
		id = idC.fetchone()
		
		state_like = ") AND ("

		lang_like = "AND ("
		for lang in langs:
			lang_like = lang_like + "content @@ " + "'" + lang[0].replace("_"," ") + "' OR "

		lang_like = lang_like[:-4] + state_like
		
		for key in keywords:
			lang_like = lang_like + "content @@ " + "'" + key[0] + "' OR "
		lang_like = lang_like[:-4]


		for state in states:
			state_like = state_like + "nation @@ " + "'" + state[0] + "' OR "
		state_like = state_like[:-4] + ")"

		query = 'SELECT * FROM eutweets WHERE id >' + str(id[0]) + ' ' + lang_like + ' ' + state_like

		return(query)
	
	except psycopg2.Error as e:
		raise e
	
	finally:
		statesC.close()
		langsC.close()
		keywordC.close()
		idC.close()

def getTuples_cleaning():
	try:
		conn = psycopg2.connect(user='', password='', dbname='dati', host='', port=5432)
		get_toClean = conn.cursor()
		get_toClean.execute(createStringForClean())
		toReturn = get_toClean.fetchall()

		return(toReturn)

	except psycopg2.Error as e:
		raise e

	finally:
		get_toClean.close()

		conn.commit()
		conn.close()

def setTuples_cleaning(tuples):

	try:
		conn = psycopg2.connect(user='', password='', dbname='dati', host='', port=5432)
		idC = conn.cursor()
		set_tuples = conn.cursor()

		higher_id = 0

		count = 0

		for tuple in tuples:
			if tuple[0] > higher_id:
				higher_id = tuple[0]
			date_tmp = tuple[3].split("-")
			set_tuples.execute('INSERT INTO cleaned_tweets (content, prog_lang, nation, id_str, year, month) VALUES (%s, %s, %s, %s, %s, %s)',(tuple[1], tuple[2], tuple[4], tuple[5], date_tmp[0], date_tmp[1]))	
			count += 1

		idC.execute('UPDATE last_id_cleaned SET last_cleaned=%s WHERE id=0',[higher_id])

		return("Cycle ended, got {0} cleaned tweets.".format(count))
	
	except psycopg2.Error as e:
		raise e

	finally:
		idC.close()
		set_tuples.close()

		conn.commit()
		conn.close()

def getTuples_analysis():
	try:
		conn = psycopg2.connect(user='', password='', dbname='dati', host='', port=5432)
		counter = conn.cursor()
		idC = conn.cursor()
		max_id = conn.cursor()

		idC.execute('SELECT last_analized FROM last_id_analized_v2')
		max_id.execute("SELECT MAX(id) FROM cleaned_tweets")
		m_id = max_id.fetchone()
		max_id.execute("UPDATE last_id_analized_v2 SET last_analized = %s",(m_id))

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

		conn.commit()
		conn.close()

def setTuples_analysis(tuples):
	try:
		conn = psycopg2.connect(user='', password='', dbname='dati', host='', port=5432)
		statesC = conn.cursor()
		placer = conn.cursor()
		
		statesC.execute("SELECT nation_orig_lang, nation_eng_lang FROM nations")
		
		states_tmp = statesC.fetchall()
		states = {}
		for st in states_tmp:
			states[st[0]] = st[1]

		ins_count = 0
		upd_count = 0

		for tuple in tuples:
			query = "SELECT * FROM stats_v2 WHERE year = {0} AND month = {1} AND nation = '{2}' AND prog_lang = '{3}'".format(tuple[1], tuple[2], states[tuple[0]], tuple[3])
			placer.execute(query)
			checker = placer.fetchall()
			if not checker:
				query1 = "INSERT INTO stats_v2 (nation, prog_lang, tweets, year, month) VALUES ('{0}','{1}',0,{2},{3})".format(states[tuple[0]], tuple[3], tuple[1], tuple[2])
				placer.execute(query1)
				ins_count += 1
			query2 = "UPDATE stats_v2 SET tweets = tweets + {0} WHERE nation = '{1}' AND year = {2} AND month = {3} AND prog_lang = '{4}'".format(tuple[4], states[tuple[0]], tuple[1], tuple[2], tuple[3])
			placer.execute(query2)
			upd_count += 1

		return("Cycle ended, {0} statistics updated ({1} new elements).".format(upd_count, ins_count))

	except psycopg2.Error as e:
		raise e

	finally:
		statesC.close()
		placer.close()

		conn.commit()
		conn.close()

if __name__ == '__main__':
	
	print("Data fetching v2.6")
	print("START")
	auth = get_auth(key, secret)
	get_tweets(auth)
	print("END")

	print("Data cleaning v2.0")
	print("START")
	print(setTuples_cleaning(getTuples_cleaning()))
	print("END")

	print("Data analysis v2.1")
	print("START")
	print(setTuples_analysis(getTuples_analysis()))
	print("END")