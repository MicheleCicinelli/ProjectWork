import tweepy
import psycopg2

consumer = CONSUMER
app = SECRET

def get_auth(consumer_key, app_secret):
	try:
		auth = tweepy.AppAuthHandler(consumer_key, app_secret)
	
	  
		api = tweepy.API(auth, wait_on_rate_limit=True,
	                   wait_on_rate_limit_notify=True)
		return api

	except tweepy.TweepError as e:
		raise e



def get_tweets(api):
	try:	
		conn = psycopg2.connect(user='', password='',
	                            dbname='', host='',
	                            port=5432)

		curs = conn.cursor()

		id_present = False

		lang_list = "SELECT prog_lang, search_query FROM programming_languages"
		curs.execute(lang_list)

		languages = curs.fetchall()

		langs ={}

		for lang in languages:
			langs[lang[0]] = lang[1]

		#print(langs)

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

		#return count
		print(str(count) + " tweets!")


	except tweepy.TweepError as e:
		raise e
	finally:
		curs.close()
		conn.close()





if __name__ == '__main__':
    import os
    import sys

    print("TwitterDB ver 2.4")
    print("START")
    auth = get_auth(consumer, app)
    #print(get_tweets())
    get_tweets(auth)
    print("END")

