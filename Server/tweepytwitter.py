import tweepy
 
auth = tweepy.AppAuthHandler('CONSUMER KEY', 'CONSUMER SECRET')
  
api = tweepy.API(auth, wait_on_rate_limit=True,
                   wait_on_rate_limit_notify=True)
  
if (not api):
	print ("Can't Authenticate")
	sys.exit(-1)

count = 0
  
for status in tweepy.Cursor(api.search, q="javascript", rpp = 100, ).items():
	count = count + 1
	#print status.textprint count
	#print (count)
	#print (status.created_at)
	#print (status.id_str)
	if status.place:
		print (count)
		print (status.place.country)
	#if status.place:
	#	if status.place.name:
	#		print ("***********************************************************")
	#		print (status.text)
	#		
	#		print (status.place)
	#		print (status.text)

#6704
#13347
#20084
#26840
