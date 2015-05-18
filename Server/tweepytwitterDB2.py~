import tweepy
import psycopg2
 
auth = tweepy.AppAuthHandler('K0F60xVVT5SkGdf56bjmrDhkD', 'QPw04S5cnTE7rTTZv6eMOPr5pk7PIQ8vA7uFhTn20agWT8f10q')
  
api = tweepy.API(auth, wait_on_rate_limit=True,
                   wait_on_rate_limit_notify=True)
  
if (not api):
	print ("Can't Authenticate")
	sys.exit(-1)

count = 1 
langs = {"javascript":"javascript OR javascript code OR javascript developer OR javascript IDE OR java script OR javascripting OR javascript project OR javascript programming OR javascript language",
		"csharp":"CSharp language OR csharp programming OR csharp IDE OR csharp code",
		"java":"java prog OR java programming OR java language OR java IDE OR java developer OR java object OR java code",
		"cplusplus":"cplusplus",
		"python":"python programming OR python language OR python pipy OR python code",
		"visual_basic":"visual basic OR visualbasic",
		"ruby":"ruby programming OR ruby language OR ruby code OR ruby developer",
		"swift":"swift language OR swift programming OR swift ios OR swift developer",
		"c":"c language OR c programming OR c developer",
		"html":"html OR html css OR html code OR html developer OR html php OR html programming OR HTML5 OR html tag",
		"scala":"scala code OR scala programming OR scala language OR scala developer",
		"obj_c":"Objective-C OR ObjC OR Obj-C"}

conn = psycopg2.connect(user='twitter', password='twitter',
                            dbname='twitterdb', host='localhost',
                            port=5432)
curs = conn.cursor()

for key, value in langs.items():
	print (key + " tweets...")
	for status in tweepy.Cursor(api.search, q=value, rpp = 100).items():
		if count >= 5:
			break
		if status.place and status.text != "":
			curs.execute('INSERT INTO eutweets (content, prog_lang, created_at, nation, id_str) VALUES (%s, %s, %s, %s, %s)', (status.text, key, status.created_at.date(), status.place.country, status.id_str))
			print("numero tweet per " + key + " " + str(count))
			count += 1
	conn.commit()
	count = 1
curs.close()
conn.close()