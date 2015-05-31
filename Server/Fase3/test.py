# -*- coding: utf-8 -*-

import psycopg2

if __name__ == '__main__':

	conn = psycopg2.connect(user='', password='', dbname='', host='', port=5432)

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
	id = idC.fetchall()

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

#	key_like = ") AND ("
#	for key in keywords:
#		key_like = key_like + ""

	query = 'SELECT * FROM eutweets WHERE id >' + str(id[0][0]) + ' ' + lang_like + ' ' + state_like

	statesC.close()
	langsC.close()
	idC.close()

	print(query)
