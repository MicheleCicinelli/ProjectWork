import tweepy
import psycopg2
 
auth = tweepy.AppAuthHandler(keys)
  
api = tweepy.API(auth, wait_on_rate_limit=True,
                   wait_on_rate_limit_notify=True)
  
if (not api):
	print ("Can't Authenticate")
	sys.exit(-1)

langs = {"javascript":"javascript",
		"csharp":"csharp",
		"java":"java",
		"cplusplus":"cplusplus OR cpp",
		"python":"python",
		"visual_basic":"visual basic OR visualbasic",
		"ruby":"ruby",
		"swift":"swift",
		"c":"c language OR c programming OR c developer",
		"html":"html",
		"scala":"scala",
		"obj_c":"Objective-C OR ObjC OR Obj-C",
		"php":"php"}

conn = psycopg2.connect(user='twitter', password='tsacs3m',
                            dbname='dati', host='52.16.148.22',
                            port=5432)
curs = conn.cursor()

id_present = False

for key, value in langs.items():
	print (key + " tweets...")
	stringa = "SELECT id_str FROM last_id WHERE lang LIKE '" + key + "'"
	#curs.execute('SELECT id_str FROM last_id WHERE lang LIKE "%s"',(key))
	curs.execute(stringa)
	last_id = curs.fetchone()
	print(last_id[0] + "*************** il fetch ********")
	for status in tweepy.Cursor(api.search, q=value, rpp = 100, since_id = last_id[0]).items(100):
		if id_present == False:
			#print(status.id_str)
			curs.execute('UPDATE last_id SET id_str = %s WHERE lang LIKE %s',(status.id_str, key))
			id_present = True
		if status.place and status.text != "":
			curs.execute('INSERT INTO eutweets (content, prog_lang, created_at, nation, id_str) VALUES (%s, %s, %s, %s, %s)', (status.text, key, status.created_at.date(), status.place.country, status.id_str))
	id_present = False
	conn.commit()
curs.close()
conn.close()
