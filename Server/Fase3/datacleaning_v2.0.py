# -*- coding: utf-8 -*-

import psycopg2
import sys

def createStringForClean():

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

	lang_like = "AND ("
	for lang in langs:
		lang_like = lang_like + "content @@ " + "'" + lang[0] + "' OR "
	
	for key in keywords:
		lang_like = lang_like + "content @@ " + "'" + key[0] + "' OR "
	lang_like = lang_like[:-4]


	state_like = ") AND ("
	for state in states:
		state_like = state_like + "nation @@ " + "'" + state[0] + "' OR "
	state_like = state_like[:-4] + ")"

	query = 'SELECT * FROM eutweets WHERE id >' + str(id[0]) + ' ' + lang_like + ' ' + state_like

	statesC.close()
	langsC.close()
	keywordC.close()
	idC.close()

	return(query)

def getTuples():
	get_toClean = conn.cursor()
	get_toClean.execute(createStringForClean())
	toReturn = get_toClean.fetchall()
	get_toClean.close()

	return(toReturn)

def setTuples(tuples):
	idC = conn.cursor()
	set_tuples = conn.cursor()

	higher_id = 0

	for tuple in tuples:
		higher_id = tuple[0]
		date_tmp = tuple[3].split("-")
		set_tuples.execute('INSERT INTO cleaned_tweets (content, prog_lang, nation, id_str, year, month) VALUES (%s, %s, %s, %s, %s, %s)',(tuple[1], tuple[2], tuple[4], tuple[5], date_tmp[0], date_tmp[1]))	
	
	idC.execute('UPDATE last_id_cleaned SET last_cleaned=%s WHERE id=0',[higher_id])

	idC.close()
	set_tuples.close()

	return("Cycle ended")

if __name__ == '__main__':
<<<<<<< HEAD
	try:
		conn = psycopg2.connect(user='', password='', dbname='dati', host='', port=5432)
		print(setTuples(getTuples()))
	except:
		e = sys.exc_info()[0]
		print("Error -----> :" + str(e))
	finally:
		conn.commit()
		conn.close()
=======
	conn = psycopg2.connect(user='', password='', dbname='', host='localhost', port=5432)
	print(setTuples(getTuples()))
	conn.commit()
	conn.close()
>>>>>>> master
