# Twitter DB

Compatibile con Python 3.4

Dipendenze:
 * [tweepy v3.2](http://tweepy.readthedocs.org/en/v3.2.0/)
 * [psycopg2 v2.6](http://initd.org/psycopg/docs/)


## Data Fetching:

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


## Data Cleaning:
 * Tramite script, sempre in python, prelevo i tweets presenti nella tabella "eutweets" tramite una query che seleziona , mediante il parametro WHERE solo i tweets sporchi provenienti da uno stato europeo, e che all'interno del testo del tweet contengono almeno una delle parole utilizzate come filtro per la white list. 
La query viene generata utilizzando due database, in maniera tale potere aggiungere o rimiovere elementi senza effettuare modifiche al codice.
Per velocizzare il processo di cleaning ad ogni chiamata dello script vengono presi solo i tweets successivi all'ultimo analizzato la chiamata precedente, salvando questo dato, ed aggiornandolo ad ongi nuova esecuzione, nella tabella "last_id_cleaned"


## Data Analysis
 * Utilizzando uno script simile a quello per il cleaning, con le stesse logiche sull'id per la velocizzazione, analizzo uno per uno i tweet puliti, verificando il linguaggio di riferimento, la nazione di provenienza e il periodo in cui sono stati postati (anno e mese), dopodichè verifico se nella tabella stats esiste gia un dato di riferimento. se esite verrà aggiornato, altrimenti verrà creato un nuovo record, che poi verrà aggiornato
