# Twitter DB
============

	Compatibile con Python 3.4

	Dipendenze:
	 [tweepy v3.2](http://tweepy.readthedocs.org/en/v3.2.0/)
	 [psycopg2 v2.6](http://initd.org/psycopg/docs/)


## Data Fetching:
-----------------

 * Ricerca:
	Ricerca tramite script in python, utilizzando la libreria "tweepy", dei tweets a livello globale che contengono parole chiave 
	riconducibili ai linguaggi di programmazione desiderati presenti in una lista all'interno della tabella "keywords"
	e presentano la voce "place" così da poterne determinare l'origine. I tweets che rispettano questi parametri vengono salvati
	nella tabella "eutweets".

 * Cursore:
	Per ogni linguaggio viene salvato nella tabella "last_id" l'ultimo id del tweet archiviato così da migliorare la ricerca al prossimo
	avvio dello script che partirà dal più recente tweet nel DB Twitter avanzando per 10.000 elementi cercando di raggiungere il "last_id"
	inerente al linguaggio cercato.

 * Rate limit:
	Nel momento in cui viene raggiunto il numero massimo di richieste a Twitter (riferimento alla documentazione ufficiale 
	[twitter dev](https://dev.twitter.com/rest/public/rate-limiting)), lo script rimarrà in attesa (sleeping) fino a quando non verrà superato il tempo di attesa.


## Data Analisys:
-----------------

	 
