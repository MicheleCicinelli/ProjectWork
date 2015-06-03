# -*- coding: utf-8 -*-

import psycopg2
import sys

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


		#state_like = ") AND ("
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


def getTuples():
	try:
		get_toClean = conn.cursor()
		get_toClean.execute(createStringForClean())
		toReturn = get_toClean.fetchall()

		return(toReturn)

	except psycopg2.Error as e:
		raise e

	finally:
		get_toClean.close()

def setTuples(tuples):

	try:
		idC = conn.cursor()
		set_tuples = conn.cursor()

		higher_id = 0

		count = 0

		for tuple in tuples:
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


if __name__ == '__main__':
	conn = psycopg2.connect(user='', password='', dbname='dati', host='', port=5432
	print("Data cleaning v2.0")
	print("START")
	print(setTuples(getTuples()))
	print("END")
	conn.commit()
	conn.close()