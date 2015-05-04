--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: tweet_id; Type: SEQUENCE; Schema: public; Owner: twitter
--

CREATE SEQUENCE tweet_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tweet_id OWNER TO twitter;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tweets; Type: TABLE; Schema: public; Owner: twitter; Tablespace: 
--

CREATE TABLE tweets (
    "ID" integer DEFAULT nextval('tweet_id'::regclass) NOT NULL,
    text character varying(160) NOT NULL,
    "user" character varying(20) NOT NULL,
    retweets integer NOT NULL,
    favorites integer NOT NULL,
    "state " character varying(20) NOT NULL,
    language character varying(20) NOT NULL
);


ALTER TABLE public.tweets OWNER TO twitter;

--
-- Name: tweet_id; Type: SEQUENCE SET; Schema: public; Owner: twitter
--

SELECT pg_catalog.setval('tweet_id', 10000, true);


--
-- Data for Name: tweets; Type: TABLE DATA; Schema: public; Owner: twitter
--

COPY tweets ("ID", text, "user", retweets, favorites, "state ", language) FROM stdin;
1	Tweet1	User1	1372	1619	Finland	Scala
2	Tweet2	User2	3571	4263	Czech Republic	JavaScript
3	Tweet3	User3	4606	1530	France	C++
4	Tweet4	User4	3843	4967	Slovenia	Ruby
5	Tweet5	User5	3261	4067	Romania	Scala
6	Tweet6	User6	1952	199	Belgium	PHP
7	Tweet7	User7	2496	4049	Cyprus	C#
8	Tweet8	User8	705	4202	Hungary	JavaScript
9	Tweet9	User9	2380	1459	Slovakia	Java
10	Tweet10	User10	4811	2650	Denmark	Visual Basic
11	Tweet11	User11	4002	654	Sweden	Ruby
12	Tweet12	User12	2439	2691	Bulgaria	Python
13	Tweet13	User13	3082	900	Spain	C
14	Tweet14	User14	4608	4825	Denmark	C++
15	Tweet15	User15	4684	1142	Cyprus	Obj C
16	Tweet16	User16	2876	909	Germany	Scala
17	Tweet17	User17	3942	4262	Croatia	C++
18	Tweet18	User18	1242	1762	Portugal	Obj C
19	Tweet19	User19	485	4278	Finland	C
20	Tweet20	User20	2554	1367	Latvia	Python
21	Tweet21	User21	3069	1827	Romania	C
22	Tweet22	User22	3413	4867	Poland	C#
23	Tweet23	User23	3267	893	Ireland	C++
24	Tweet24	User24	4175	836	Luxembourg	Java
25	Tweet25	User25	2164	3716	Austria	PHP
26	Tweet26	User26	1733	1903	Austria	Visual Basic
27	Tweet27	User27	2168	1994	Lithuania	Visual Basic
28	Tweet28	User28	2734	2658	Croatia	C#
29	Tweet29	User29	3627	4164	Estonia	Python
30	Tweet30	User30	1267	3938	Bulgaria	C++
31	Tweet31	User31	2459	4376	Netherlands	C++
32	Tweet32	User32	3586	4304	Greece	C
33	Tweet33	User33	4555	3454	Bulgaria	C++
34	Tweet34	User34	3487	781	Austria	Java
35	Tweet35	User35	3966	4082	Hungary	JavaScript
36	Tweet36	User36	1296	2699	Greece	Obj C
37	Tweet37	User37	3688	992	Malta	C#
38	Tweet38	User38	4634	4213	Czech Republic	Ruby
39	Tweet39	User39	1389	3449	Finland	C#
40	Tweet40	User40	4269	2127	Luxembourg	C++
41	Tweet41	User41	140	242	United Kingdom	Java
42	Tweet42	User42	3046	2284	Slovenia	Obj C
43	Tweet43	User43	3274	832	Slovenia	C++
44	Tweet44	User44	2192	3122	Denmark	Obj C
45	Tweet45	User45	1819	149	Spain	C
46	Tweet46	User46	2775	4447	Croatia	PHP
47	Tweet47	User47	205	4433	Slovakia	Visual Basic
48	Tweet48	User48	4973	3440	Malta	C
49	Tweet49	User49	1297	620	Finland	C++
50	Tweet50	User50	4547	648	Greece	C#
51	Tweet51	User51	2005	3393	Czech Republic	JavaScript
52	Tweet52	User52	1390	1456	Spain	Obj C
53	Tweet53	User53	3785	4443	Latvia	JavaScript
54	Tweet54	User54	1644	3373	Greece	Java
55	Tweet55	User55	1386	4503	Poland	C
56	Tweet56	User56	2722	4921	Spain	JavaScript
57	Tweet57	User57	2203	4842	Malta	C#
58	Tweet58	User58	1694	1639	Malta	C
59	Tweet59	User59	1497	3587	Denmark	Scala
60	Tweet60	User60	2479	3534	Netherlands	Ruby
61	Tweet61	User61	814	3367	Bulgaria	C
62	Tweet62	User62	3404	1263	Croatia	Python
63	Tweet63	User63	1592	2872	Croatia	C
64	Tweet64	User64	3721	1816	Sweden	C#
65	Tweet65	User65	3810	159	Netherlands	C
66	Tweet66	User66	422	515	Spain	PHP
67	Tweet67	User67	4667	3673	Spain	Obj C
68	Tweet68	User68	4031	1515	Greece	Python
69	Tweet69	User69	4385	911	Sweden	C
70	Tweet70	User70	3132	1056	Italy	Visual Basic
71	Tweet71	User71	833	4238	Romania	Ruby
72	Tweet72	User72	3758	243	Malta	C++
73	Tweet73	User73	1543	2736	Spain	Obj C
74	Tweet74	User74	1956	3656	Lithuania	C
75	Tweet75	User75	4023	2732	Portugal	PHP
76	Tweet76	User76	2088	2369	Sweden	Obj C
77	Tweet77	User77	1316	4	Lithuania	Java
78	Tweet78	User78	2159	4477	Finland	C++
79	Tweet79	User79	3120	1963	Sweden	Obj C
80	Tweet80	User80	4222	3473	Croatia	Visual Basic
81	Tweet81	User81	4017	4945	Portugal	C++
82	Tweet82	User82	869	1205	Cyprus	Ruby
83	Tweet83	User83	2247	2260	Finland	Python
84	Tweet84	User84	710	2909	Denmark	Ruby
85	Tweet85	User85	3977	2444	United Kingdom	Ruby
86	Tweet86	User86	2416	1119	Ireland	C
87	Tweet87	User87	898	296	Ireland	PHP
88	Tweet88	User88	2568	921	Luxembourg	C#
89	Tweet89	User89	1855	3816	Italy	C++
90	Tweet90	User90	3218	435	United Kingdom	Obj C
91	Tweet91	User91	1042	583	Belgium	C#
92	Tweet92	User92	499	2328	Hungary	Ruby
93	Tweet93	User93	96	4311	Greece	C
94	Tweet94	User94	927	2013	Czech Republic	JavaScript
95	Tweet95	User95	3309	3847	Austria	Ruby
96	Tweet96	User96	3533	2027	Croatia	C
97	Tweet97	User97	76	2980	Luxembourg	C#
98	Tweet98	User98	3057	2277	Hungary	C++
99	Tweet99	User99	1952	3124	Lithuania	C
100	Tweet100	User100	585	4045	Czech Republic	PHP
101	Tweet101	User101	1975	4586	Spain	C++
102	Tweet102	User102	1531	1081	Romania	PHP
103	Tweet103	User103	3080	3109	United Kingdom	Python
104	Tweet104	User104	4758	2249	Belgium	C
105	Tweet105	User105	2918	2993	Croatia	C#
106	Tweet106	User106	4857	326	United Kingdom	PHP
107	Tweet107	User107	2508	1744	Ireland	Ruby
108	Tweet108	User108	3371	3220	Czech Republic	C#
109	Tweet109	User109	72	507	Austria	C++
110	Tweet110	User110	1763	3710	Ireland	Visual Basic
111	Tweet111	User111	4165	2635	Denmark	Obj C
112	Tweet112	User112	1728	996	France	PHP
113	Tweet113	User113	3336	623	Hungary	C
114	Tweet114	User114	4121	4870	Lithuania	C
115	Tweet115	User115	2024	495	Poland	Ruby
116	Tweet116	User116	4383	2052	Netherlands	PHP
117	Tweet117	User117	4105	2140	Sweden	Obj C
118	Tweet118	User118	4062	3661	Ireland	C#
119	Tweet119	User119	1453	1962	Ireland	C
120	Tweet120	User120	179	2222	Portugal	C
121	Tweet121	User121	2961	2284	Belgium	Python
122	Tweet122	User122	480	4819	Portugal	Scala
123	Tweet123	User123	4271	3674	Bulgaria	Scala
124	Tweet124	User124	2703	4971	Cyprus	Python
125	Tweet125	User125	1456	4958	Romania	Java
126	Tweet126	User126	3069	4627	Czech Republic	Visual Basic
127	Tweet127	User127	2124	2371	Belgium	Visual Basic
128	Tweet128	User128	1964	743	Greece	C++
129	Tweet129	User129	1354	4294	Romania	PHP
130	Tweet130	User130	2190	1241	Lithuania	C
131	Tweet131	User131	2593	2500	Finland	Visual Basic
132	Tweet132	User132	3187	3455	Croatia	C
133	Tweet133	User133	2301	3999	Belgium	JavaScript
134	Tweet134	User134	4792	3085	Slovakia	Visual Basic
135	Tweet135	User135	99	4062	Latvia	C
136	Tweet136	User136	4241	1619	Slovakia	Java
137	Tweet137	User137	2084	3761	France	Python
138	Tweet138	User138	3218	1723	Netherlands	PHP
139	Tweet139	User139	3312	1012	Sweden	Scala
140	Tweet140	User140	4295	2486	Latvia	C
141	Tweet141	User141	2307	3042	Cyprus	Obj C
142	Tweet142	User142	3864	1538	Italy	C#
143	Tweet143	User143	4809	4675	Spain	Visual Basic
144	Tweet144	User144	2161	2433	Italy	Python
145	Tweet145	User145	3385	2038	Lithuania	Ruby
146	Tweet146	User146	4570	3057	Sweden	Java
147	Tweet147	User147	31	281	Ireland	Ruby
148	Tweet148	User148	3068	3996	Finland	JavaScript
149	Tweet149	User149	4889	1642	Slovenia	Scala
150	Tweet150	User150	4592	4397	Italy	Java
151	Tweet151	User151	2173	2026	Austria	C++
152	Tweet152	User152	3520	3319	Croatia	PHP
153	Tweet153	User153	3449	2981	Portugal	C++
154	Tweet154	User154	3909	2678	Malta	PHP
155	Tweet155	User155	1109	1643	Poland	C#
156	Tweet156	User156	1786	3693	United Kingdom	Java
157	Tweet157	User157	1872	2043	Poland	C#
158	Tweet158	User158	1243	3160	Sweden	Scala
159	Tweet159	User159	2077	3699	Czech Republic	JavaScript
160	Tweet160	User160	4288	1630	Romania	Ruby
161	Tweet161	User161	1531	590	Poland	Java
162	Tweet162	User162	3723	1023	Poland	C
163	Tweet163	User163	109	4177	Malta	Visual Basic
164	Tweet164	User164	1113	194	Belgium	C#
165	Tweet165	User165	1185	788	Netherlands	Obj C
166	Tweet166	User166	717	373	Italy	C
167	Tweet167	User167	4669	4256	Slovenia	JavaScript
168	Tweet168	User168	2008	3616	Czech Republic	PHP
169	Tweet169	User169	4613	2711	Estonia	C++
170	Tweet170	User170	614	706	Portugal	Obj C
171	Tweet171	User171	1955	1049	Belgium	C++
172	Tweet172	User172	362	4371	Malta	Java
173	Tweet173	User173	1469	2321	Bulgaria	Java
174	Tweet174	User174	2159	2413	Czech Republic	Java
175	Tweet175	User175	3269	4751	United Kingdom	Obj C
176	Tweet176	User176	1482	1330	United Kingdom	Obj C
177	Tweet177	User177	3972	1278	Slovenia	JavaScript
178	Tweet178	User178	4750	2247	Finland	PHP
179	Tweet179	User179	1610	2414	Ireland	JavaScript
180	Tweet180	User180	991	2798	Slovakia	Scala
181	Tweet181	User181	106	1192	Lithuania	Python
182	Tweet182	User182	3200	1443	Latvia	JavaScript
183	Tweet183	User183	3338	2218	United Kingdom	C++
184	Tweet184	User184	1174	2395	Spain	JavaScript
185	Tweet185	User185	3215	1359	Germany	JavaScript
186	Tweet186	User186	1449	2857	Ireland	Obj C
187	Tweet187	User187	2040	1027	Lithuania	Obj C
188	Tweet188	User188	3398	1005	Greece	C++
189	Tweet189	User189	138	4406	Denmark	Java
190	Tweet190	User190	3748	2460	Finland	Java
191	Tweet191	User191	224	2070	Croatia	Visual Basic
192	Tweet192	User192	4395	4874	Poland	JavaScript
193	Tweet193	User193	1156	3971	Slovakia	PHP
194	Tweet194	User194	457	3981	France	Python
195	Tweet195	User195	561	581	Spain	Ruby
196	Tweet196	User196	1727	279	Ireland	Obj C
197	Tweet197	User197	2546	955	Portugal	Ruby
198	Tweet198	User198	1984	4146	Denmark	Python
199	Tweet199	User199	1862	3950	Estonia	Ruby
200	Tweet200	User200	4298	2934	Denmark	C
201	Tweet201	User201	3372	1977	Croatia	JavaScript
202	Tweet202	User202	4046	53	Lithuania	Java
203	Tweet203	User203	1649	2035	Bulgaria	C++
204	Tweet204	User204	4271	1773	Greece	Python
205	Tweet205	User205	2525	2004	Hungary	Obj C
206	Tweet206	User206	656	911	Poland	C++
207	Tweet207	User207	1440	706	United Kingdom	C++
208	Tweet208	User208	580	4037	Poland	Obj C
209	Tweet209	User209	3373	2587	Luxembourg	C++
210	Tweet210	User210	4166	3862	Denmark	PHP
211	Tweet211	User211	3279	3102	Cyprus	Ruby
212	Tweet212	User212	265	188	Hungary	C++
213	Tweet213	User213	3158	1838	Germany	C
214	Tweet214	User214	4539	3013	Bulgaria	Java
215	Tweet215	User215	3181	1817	Ireland	C
216	Tweet216	User216	1361	934	Poland	Obj C
217	Tweet217	User217	165	3825	France	Obj C
218	Tweet218	User218	1517	1010	Croatia	C
219	Tweet219	User219	3483	4029	Italy	C#
220	Tweet220	User220	906	3828	Czech Republic	Ruby
221	Tweet221	User221	2279	2381	Latvia	Ruby
222	Tweet222	User222	4537	4719	Portugal	C
223	Tweet223	User223	3062	1906	Sweden	PHP
224	Tweet224	User224	1145	1140	Lithuania	C#
225	Tweet225	User225	1100	1705	United Kingdom	C#
226	Tweet226	User226	2666	971	Finland	Visual Basic
227	Tweet227	User227	1641	389	Estonia	C#
228	Tweet228	User228	868	99	Luxembourg	C#
229	Tweet229	User229	957	4301	Luxembourg	C
230	Tweet230	User230	4796	3715	Greece	JavaScript
231	Tweet231	User231	3984	4194	Finland	C++
232	Tweet232	User232	648	3849	United Kingdom	C#
233	Tweet233	User233	2515	3126	Denmark	Ruby
234	Tweet234	User234	1129	3427	Bulgaria	Visual Basic
235	Tweet235	User235	2976	4463	Cyprus	Obj C
236	Tweet236	User236	449	311	Austria	C#
237	Tweet237	User237	4473	384	Romania	Visual Basic
238	Tweet238	User238	1970	1649	Belgium	Python
239	Tweet239	User239	2937	2025	Denmark	Visual Basic
240	Tweet240	User240	372	3033	Malta	C++
241	Tweet241	User241	4122	148	Czech Republic	Ruby
242	Tweet242	User242	93	2322	Austria	C#
243	Tweet243	User243	162	3334	Czech Republic	C#
244	Tweet244	User244	3488	3467	Sweden	Java
245	Tweet245	User245	403	2699	Slovenia	C#
246	Tweet246	User246	1815	531	Sweden	Visual Basic
247	Tweet247	User247	4817	1336	Lithuania	Java
248	Tweet248	User248	1051	2340	Slovakia	Obj C
249	Tweet249	User249	1963	376	Slovenia	Obj C
250	Tweet250	User250	2294	1505	Denmark	Python
251	Tweet251	User251	2260	3412	Ireland	Ruby
252	Tweet252	User252	2119	2416	Portugal	Visual Basic
253	Tweet253	User253	827	4262	Austria	Java
254	Tweet254	User254	3214	4117	Netherlands	Obj C
255	Tweet255	User255	193	3344	Estonia	Visual Basic
256	Tweet256	User256	2798	3980	Germany	JavaScript
257	Tweet257	User257	777	3000	Germany	Python
258	Tweet258	User258	3014	4677	Greece	Obj C
259	Tweet259	User259	547	2160	Latvia	C#
260	Tweet260	User260	445	4762	Portugal	C++
261	Tweet261	User261	4173	4771	Croatia	Scala
262	Tweet262	User262	1479	1132	Croatia	C
263	Tweet263	User263	3380	2407	Bulgaria	Obj C
264	Tweet264	User264	1747	4118	Ireland	C++
265	Tweet265	User265	3106	1883	Hungary	Obj C
266	Tweet266	User266	440	948	Spain	Scala
267	Tweet267	User267	3929	4277	Portugal	Ruby
268	Tweet268	User268	1155	630	Austria	Visual Basic
269	Tweet269	User269	4678	3698	Cyprus	C++
270	Tweet270	User270	2642	4838	Austria	JavaScript
271	Tweet271	User271	2782	2498	Slovakia	JavaScript
272	Tweet272	User272	4307	1150	Ireland	C#
273	Tweet273	User273	2590	726	Latvia	Obj C
274	Tweet274	User274	2445	4598	Spain	C#
275	Tweet275	User275	4860	3130	Finland	JavaScript
276	Tweet276	User276	114	2523	Czech Republic	C#
277	Tweet277	User277	2893	3437	France	C#
278	Tweet278	User278	737	4728	Sweden	C++
279	Tweet279	User279	3794	854	Finland	Java
280	Tweet280	User280	999	2395	Finland	Visual Basic
281	Tweet281	User281	2154	4891	Bulgaria	Visual Basic
282	Tweet282	User282	1734	3033	Belgium	Java
283	Tweet283	User283	2570	870	Belgium	C++
284	Tweet284	User284	2868	12	Romania	C
285	Tweet285	User285	3831	3144	Malta	Visual Basic
286	Tweet286	User286	2545	2628	Slovakia	PHP
287	Tweet287	User287	3088	836	Slovenia	C
288	Tweet288	User288	4210	2581	Ireland	Scala
289	Tweet289	User289	2769	1538	Spain	Python
290	Tweet290	User290	1990	3537	Greece	Python
291	Tweet291	User291	4455	928	France	Scala
292	Tweet292	User292	2546	2731	Spain	Ruby
293	Tweet293	User293	775	4035	Austria	Java
294	Tweet294	User294	4464	138	Spain	C#
295	Tweet295	User295	2659	1282	Finland	Scala
296	Tweet296	User296	2055	835	Portugal	C#
297	Tweet297	User297	351	195	Spain	Java
298	Tweet298	User298	1598	1968	Belgium	Java
299	Tweet299	User299	4066	2806	Netherlands	Java
300	Tweet300	User300	503	2198	Malta	C
301	Tweet301	User301	1064	1948	Ireland	Java
302	Tweet302	User302	4066	3163	Denmark	C
303	Tweet303	User303	863	2782	Poland	Scala
304	Tweet304	User304	2077	3762	Romania	Obj C
305	Tweet305	User305	2600	3705	Slovakia	JavaScript
306	Tweet306	User306	1724	757	Austria	Scala
307	Tweet307	User307	3731	3519	Netherlands	Ruby
308	Tweet308	User308	3315	742	United Kingdom	Visual Basic
309	Tweet309	User309	3584	1134	Netherlands	C#
310	Tweet310	User310	1583	1966	Belgium	PHP
311	Tweet311	User311	2259	4851	Cyprus	C
312	Tweet312	User312	4279	969	Poland	Scala
313	Tweet313	User313	721	617	Austria	Obj C
314	Tweet314	User314	89	1847	Italy	Java
315	Tweet315	User315	4723	4520	Italy	Obj C
316	Tweet316	User316	3702	2754	Hungary	Python
317	Tweet317	User317	1563	2868	Poland	Obj C
318	Tweet318	User318	4404	4357	Luxembourg	C#
319	Tweet319	User319	4326	167	Cyprus	Java
320	Tweet320	User320	4719	2273	United Kingdom	Scala
321	Tweet321	User321	1518	4330	Portugal	Java
322	Tweet322	User322	2880	3123	Ireland	Java
323	Tweet323	User323	2590	43	Denmark	Visual Basic
324	Tweet324	User324	2061	2994	Slovenia	Visual Basic
325	Tweet325	User325	3606	748	Ireland	C
326	Tweet326	User326	1682	65	Denmark	C#
327	Tweet327	User327	2257	1520	Italy	C
328	Tweet328	User328	1615	3943	Ireland	C
329	Tweet329	User329	821	4381	France	Python
330	Tweet330	User330	2508	1373	Lithuania	JavaScript
331	Tweet331	User331	1537	4173	Slovakia	C
332	Tweet332	User332	4480	3880	Denmark	C#
333	Tweet333	User333	1137	3940	Austria	C#
334	Tweet334	User334	2190	2339	Czech Republic	Obj C
335	Tweet335	User335	4621	3911	Poland	Ruby
336	Tweet336	User336	61	80	Bulgaria	Visual Basic
337	Tweet337	User337	984	2732	Greece	C++
338	Tweet338	User338	2735	3269	Poland	Scala
339	Tweet339	User339	976	1909	Austria	C
340	Tweet340	User340	2049	3661	Slovenia	C#
341	Tweet341	User341	3470	2284	France	C++
342	Tweet342	User342	2026	1302	Sweden	C
343	Tweet343	User343	1220	95	Romania	Ruby
344	Tweet344	User344	2305	302	France	C
345	Tweet345	User345	3430	165	Croatia	Visual Basic
346	Tweet346	User346	2559	2679	Malta	PHP
347	Tweet347	User347	3755	4306	Slovakia	C
348	Tweet348	User348	1212	2489	Lithuania	Visual Basic
349	Tweet349	User349	3472	1488	Denmark	Ruby
350	Tweet350	User350	4254	1392	Portugal	C#
351	Tweet351	User351	2681	3814	Cyprus	Scala
352	Tweet352	User352	2203	550	Germany	Java
353	Tweet353	User353	2027	2462	Bulgaria	C
354	Tweet354	User354	589	4520	France	C
355	Tweet355	User355	2112	2259	Ireland	PHP
356	Tweet356	User356	3362	4961	Spain	Java
357	Tweet357	User357	3693	3165	Bulgaria	Visual Basic
358	Tweet358	User358	4913	3039	Malta	Java
359	Tweet359	User359	2984	4739	Poland	PHP
360	Tweet360	User360	1019	3116	Austria	Python
361	Tweet361	User361	3984	4837	Malta	Ruby
362	Tweet362	User362	754	3199	Netherlands	Java
363	Tweet363	User363	2967	162	Sweden	C
364	Tweet364	User364	1008	2449	Croatia	Python
365	Tweet365	User365	3708	299	Portugal	Python
366	Tweet366	User366	2079	2161	Bulgaria	C++
367	Tweet367	User367	2147	1159	Estonia	Visual Basic
368	Tweet368	User368	2845	869	Sweden	Python
369	Tweet369	User369	2199	1326	Malta	C#
370	Tweet370	User370	3548	2521	Hungary	Python
371	Tweet371	User371	3049	1498	Croatia	PHP
372	Tweet372	User372	1574	927	Finland	C
373	Tweet373	User373	4023	4344	Hungary	PHP
374	Tweet374	User374	2626	38	Belgium	Ruby
375	Tweet375	User375	287	3293	Poland	C
376	Tweet376	User376	4162	1280	Spain	Obj C
377	Tweet377	User377	1199	4103	Romania	Python
378	Tweet378	User378	1792	1423	Croatia	C
379	Tweet379	User379	2284	4260	Malta	JavaScript
380	Tweet380	User380	2668	186	Lithuania	Ruby
381	Tweet381	User381	2114	2139	Hungary	Python
382	Tweet382	User382	2209	3640	Romania	PHP
383	Tweet383	User383	3577	3613	Malta	Visual Basic
384	Tweet384	User384	4140	1315	Spain	C
385	Tweet385	User385	4830	999	Denmark	Visual Basic
386	Tweet386	User386	3716	1666	Romania	Scala
387	Tweet387	User387	3083	59	Hungary	Scala
388	Tweet388	User388	266	522	Sweden	Java
389	Tweet389	User389	3435	3522	Latvia	C++
390	Tweet390	User390	1951	544	United Kingdom	Java
391	Tweet391	User391	4062	3593	Cyprus	C++
392	Tweet392	User392	3769	2527	Austria	C#
393	Tweet393	User393	813	1899	Ireland	JavaScript
394	Tweet394	User394	2843	1346	Germany	Visual Basic
395	Tweet395	User395	4891	1101	Bulgaria	Python
396	Tweet396	User396	1545	3577	Luxembourg	Python
397	Tweet397	User397	3275	291	Luxembourg	JavaScript
398	Tweet398	User398	3935	4255	Sweden	JavaScript
399	Tweet399	User399	1701	4308	Hungary	Python
400	Tweet400	User400	3122	1826	Croatia	C
401	Tweet401	User401	694	1241	Slovakia	Scala
402	Tweet402	User402	4765	3673	Ireland	Ruby
403	Tweet403	User403	4621	4954	Denmark	PHP
404	Tweet404	User404	84	2169	Romania	C#
405	Tweet405	User405	2049	1208	Lithuania	Visual Basic
406	Tweet406	User406	978	1157	Romania	C
407	Tweet407	User407	63	4626	Luxembourg	JavaScript
408	Tweet408	User408	3067	2188	Luxembourg	Scala
409	Tweet409	User409	1738	2151	Croatia	JavaScript
410	Tweet410	User410	1751	4224	Croatia	Visual Basic
411	Tweet411	User411	4690	1087	Portugal	Java
412	Tweet412	User412	2429	995	Croatia	C
413	Tweet413	User413	1036	366	United Kingdom	Obj C
414	Tweet414	User414	3589	836	Germany	Python
415	Tweet415	User415	3490	2407	Latvia	Java
416	Tweet416	User416	2403	187	Belgium	Visual Basic
417	Tweet417	User417	4053	3299	Cyprus	C++
418	Tweet418	User418	1138	2031	Malta	Obj C
419	Tweet419	User419	829	2244	Hungary	PHP
420	Tweet420	User420	3913	1114	Denmark	C
421	Tweet421	User421	3275	740	Finland	JavaScript
422	Tweet422	User422	3172	4520	France	JavaScript
423	Tweet423	User423	1268	248	Spain	Visual Basic
424	Tweet424	User424	4094	2186	France	Python
425	Tweet425	User425	34	3395	Slovakia	Scala
426	Tweet426	User426	1625	232	Lithuania	Ruby
427	Tweet427	User427	4865	2622	Malta	Visual Basic
428	Tweet428	User428	1862	4242	Portugal	Visual Basic
429	Tweet429	User429	4209	3368	Sweden	C#
430	Tweet430	User430	133	4762	Portugal	Visual Basic
431	Tweet431	User431	2362	3504	Croatia	C++
432	Tweet432	User432	4315	3511	Cyprus	Visual Basic
433	Tweet433	User433	1426	2888	Belgium	Python
434	Tweet434	User434	4446	110	Austria	C
435	Tweet435	User435	3573	2474	France	C
436	Tweet436	User436	3602	1272	Slovenia	Java
437	Tweet437	User437	4360	1394	Latvia	JavaScript
438	Tweet438	User438	81	4341	France	C
439	Tweet439	User439	2823	1003	Lithuania	Python
440	Tweet440	User440	1652	4992	Denmark	PHP
441	Tweet441	User441	2430	2133	Bulgaria	Obj C
442	Tweet442	User442	741	1556	Estonia	Ruby
443	Tweet443	User443	1917	3821	United Kingdom	C
444	Tweet444	User444	2458	3186	Hungary	C#
445	Tweet445	User445	3327	176	Latvia	Java
446	Tweet446	User446	4736	2068	Italy	Scala
447	Tweet447	User447	152	4338	Finland	Python
448	Tweet448	User448	1158	4519	Hungary	Obj C
449	Tweet449	User449	1972	1105	Latvia	Java
450	Tweet450	User450	4078	344	Cyprus	C#
451	Tweet451	User451	2596	4568	Lithuania	Scala
452	Tweet452	User452	4123	193	Hungary	Java
453	Tweet453	User453	531	4295	Luxembourg	C
454	Tweet454	User454	2320	1756	Hungary	Scala
455	Tweet455	User455	3176	2913	Italy	Obj C
456	Tweet456	User456	722	291	Luxembourg	Ruby
457	Tweet457	User457	1561	1126	Austria	C#
458	Tweet458	User458	2215	4558	France	Python
459	Tweet459	User459	2068	2215	Czech Republic	Java
460	Tweet460	User460	3918	804	Cyprus	C
461	Tweet461	User461	3825	333	Denmark	Python
462	Tweet462	User462	1543	3858	Bulgaria	Obj C
463	Tweet463	User463	4301	4475	Belgium	Obj C
464	Tweet464	User464	697	82	Estonia	JavaScript
465	Tweet465	User465	1052	4968	Slovenia	C++
466	Tweet466	User466	1722	3081	Portugal	Java
467	Tweet467	User467	2983	4851	Italy	Visual Basic
468	Tweet468	User468	1748	4079	Slovakia	C#
469	Tweet469	User469	3912	195	Cyprus	Ruby
470	Tweet470	User470	4854	4737	Slovenia	Ruby
471	Tweet471	User471	171	2003	Ireland	JavaScript
472	Tweet472	User472	2147	2213	Slovenia	Ruby
473	Tweet473	User473	4603	4660	Finland	Java
474	Tweet474	User474	3821	964	Cyprus	JavaScript
475	Tweet475	User475	1501	3129	Latvia	Scala
476	Tweet476	User476	2501	2932	Cyprus	Ruby
477	Tweet477	User477	3440	4769	Spain	Java
478	Tweet478	User478	4248	1138	Belgium	PHP
479	Tweet479	User479	1759	4748	Sweden	Scala
480	Tweet480	User480	1574	4306	Poland	C
481	Tweet481	User481	1871	1762	Romania	Visual Basic
482	Tweet482	User482	4263	1762	Slovakia	Visual Basic
483	Tweet483	User483	3606	373	Romania	Visual Basic
484	Tweet484	User484	133	631	Hungary	Java
485	Tweet485	User485	24	3302	Denmark	Visual Basic
486	Tweet486	User486	3522	1917	Germany	Java
487	Tweet487	User487	3138	2708	United Kingdom	PHP
488	Tweet488	User488	3810	1697	Cyprus	C
489	Tweet489	User489	45	3048	Estonia	JavaScript
490	Tweet490	User490	3856	1259	United Kingdom	Visual Basic
491	Tweet491	User491	73	4059	Spain	Java
492	Tweet492	User492	55	554	Croatia	Ruby
493	Tweet493	User493	584	2491	Netherlands	Java
494	Tweet494	User494	3247	3745	Romania	Java
495	Tweet495	User495	10	4247	Cyprus	Ruby
496	Tweet496	User496	3266	395	Netherlands	PHP
497	Tweet497	User497	2285	1736	Lithuania	Java
498	Tweet498	User498	3267	4520	Slovakia	Java
499	Tweet499	User499	3781	375	Slovakia	Python
500	Tweet500	User500	3531	3038	Latvia	Python
501	Tweet501	User501	3557	3490	Romania	Scala
502	Tweet502	User502	915	4564	Finland	Ruby
503	Tweet503	User503	1272	3495	Cyprus	JavaScript
504	Tweet504	User504	1634	4774	Lithuania	Visual Basic
1024	Tweet1024	User1024	4382	4195	Malta	C
505	Tweet505	User505	3234	1951	Lithuania	JavaScript
506	Tweet506	User506	4026	2645	Bulgaria	C#
507	Tweet507	User507	296	2918	Czech Republic	C
508	Tweet508	User508	4595	4510	Austria	C++
509	Tweet509	User509	307	544	Finland	C#
510	Tweet510	User510	1797	4053	Romania	C++
511	Tweet511	User511	2089	79	Greece	JavaScript
512	Tweet512	User512	2781	2307	Bulgaria	JavaScript
513	Tweet513	User513	3920	2004	Netherlands	C++
514	Tweet514	User514	2801	2845	Finland	Scala
515	Tweet515	User515	2914	911	Italy	C
516	Tweet516	User516	3915	3610	Sweden	C#
517	Tweet517	User517	4967	2678	Portugal	Visual Basic
518	Tweet518	User518	4991	3297	France	Java
519	Tweet519	User519	4840	1662	United Kingdom	C++
520	Tweet520	User520	1283	2221	Portugal	Python
521	Tweet521	User521	1058	1156	Denmark	JavaScript
522	Tweet522	User522	3019	4707	Spain	C++
523	Tweet523	User523	1699	1638	Finland	Ruby
524	Tweet524	User524	2704	2502	Austria	Visual Basic
525	Tweet525	User525	3009	3515	Germany	Visual Basic
526	Tweet526	User526	3409	4632	United Kingdom	Python
527	Tweet527	User527	3843	3844	Greece	PHP
528	Tweet528	User528	1436	372	Finland	Java
529	Tweet529	User529	625	1783	Lithuania	Ruby
530	Tweet530	User530	4215	3107	United Kingdom	PHP
531	Tweet531	User531	1266	18	Netherlands	C#
532	Tweet532	User532	4613	4799	Cyprus	PHP
533	Tweet533	User533	511	2116	France	Obj C
534	Tweet534	User534	1629	444	Sweden	C
535	Tweet535	User535	3440	4718	Italy	Visual Basic
536	Tweet536	User536	655	1823	France	Visual Basic
537	Tweet537	User537	536	359	Ireland	Scala
538	Tweet538	User538	2271	781	Austria	Java
539	Tweet539	User539	694	839	Belgium	Ruby
540	Tweet540	User540	1737	612	France	Python
541	Tweet541	User541	3201	4260	Estonia	JavaScript
542	Tweet542	User542	75	2053	Sweden	C++
543	Tweet543	User543	4096	4962	Austria	C#
544	Tweet544	User544	1088	2741	Latvia	PHP
545	Tweet545	User545	2135	1859	Slovakia	C#
546	Tweet546	User546	944	3249	Sweden	PHP
547	Tweet547	User547	20	2879	Latvia	JavaScript
548	Tweet548	User548	3670	1664	Austria	Obj C
549	Tweet549	User549	1773	531	Lithuania	Ruby
550	Tweet550	User550	2219	4733	France	Obj C
551	Tweet551	User551	4751	3969	France	Python
552	Tweet552	User552	4472	2961	Italy	C#
553	Tweet553	User553	446	4516	Belgium	Python
554	Tweet554	User554	4440	4521	Estonia	JavaScript
555	Tweet555	User555	4883	2543	Latvia	PHP
556	Tweet556	User556	4578	2318	Poland	Ruby
557	Tweet557	User557	4769	4565	Greece	Scala
558	Tweet558	User558	4965	3987	Finland	JavaScript
559	Tweet559	User559	2300	3361	Bulgaria	Obj C
560	Tweet560	User560	4186	859	Romania	C#
561	Tweet561	User561	662	2417	Portugal	Visual Basic
562	Tweet562	User562	2554	1424	Italy	Python
563	Tweet563	User563	1889	1496	Italy	Java
564	Tweet564	User564	2200	1807	United Kingdom	Java
565	Tweet565	User565	3538	3299	Estonia	C
566	Tweet566	User566	1495	3806	Luxembourg	C++
567	Tweet567	User567	1631	4990	Lithuania	C
568	Tweet568	User568	802	3703	Finland	C
569	Tweet569	User569	3073	3349	Finland	Ruby
570	Tweet570	User570	3865	3079	Bulgaria	Obj C
571	Tweet571	User571	2241	4742	Austria	C#
572	Tweet572	User572	4637	3385	Sweden	Visual Basic
573	Tweet573	User573	2219	442	Belgium	Python
574	Tweet574	User574	4852	4924	Italy	Visual Basic
575	Tweet575	User575	1496	1766	Germany	PHP
576	Tweet576	User576	1221	1778	Latvia	C
577	Tweet577	User577	2270	3566	Romania	Java
578	Tweet578	User578	3536	3302	Spain	Scala
579	Tweet579	User579	3179	4683	Luxembourg	C
580	Tweet580	User580	2471	3018	Italy	Ruby
581	Tweet581	User581	1416	1344	Luxembourg	Obj C
582	Tweet582	User582	3584	1104	Netherlands	Ruby
583	Tweet583	User583	3603	3353	Finland	Obj C
584	Tweet584	User584	4158	2571	Luxembourg	C
585	Tweet585	User585	4885	4066	Spain	Ruby
586	Tweet586	User586	4622	4304	Bulgaria	C
587	Tweet587	User587	4322	2563	Estonia	C++
588	Tweet588	User588	2690	972	Croatia	Scala
589	Tweet589	User589	4211	3001	Hungary	PHP
590	Tweet590	User590	4737	3682	Luxembourg	C
591	Tweet591	User591	208	4377	Malta	Scala
592	Tweet592	User592	421	4004	Malta	Visual Basic
593	Tweet593	User593	4903	1085	Greece	Visual Basic
594	Tweet594	User594	92	4981	Portugal	Java
595	Tweet595	User595	1607	1471	Poland	Python
596	Tweet596	User596	769	4687	Poland	Python
597	Tweet597	User597	3725	3172	Lithuania	Ruby
598	Tweet598	User598	3065	4605	Slovenia	C
599	Tweet599	User599	3603	3142	Denmark	Ruby
600	Tweet600	User600	2692	4682	Finland	C#
601	Tweet601	User601	3309	630	Lithuania	C
602	Tweet602	User602	1514	414	Slovenia	C
603	Tweet603	User603	4388	3381	Poland	Ruby
604	Tweet604	User604	4779	2429	Ireland	C
605	Tweet605	User605	1198	2977	Cyprus	JavaScript
606	Tweet606	User606	557	4032	Malta	Scala
607	Tweet607	User607	2780	66	Netherlands	Visual Basic
608	Tweet608	User608	1125	3855	Italy	Ruby
609	Tweet609	User609	3642	2597	Finland	Java
610	Tweet610	User610	3918	3921	Latvia	Python
611	Tweet611	User611	3927	747	United Kingdom	Scala
612	Tweet612	User612	4117	4445	Slovenia	Python
613	Tweet613	User613	3890	3641	Slovakia	Python
614	Tweet614	User614	2959	1309	Austria	Python
615	Tweet615	User615	306	4387	Denmark	JavaScript
616	Tweet616	User616	4121	4363	Denmark	Python
617	Tweet617	User617	1603	979	Netherlands	C#
618	Tweet618	User618	24	4554	Portugal	Visual Basic
619	Tweet619	User619	2401	993	Spain	Visual Basic
620	Tweet620	User620	2594	3057	Austria	Ruby
621	Tweet621	User621	2688	4407	Cyprus	Obj C
622	Tweet622	User622	4940	1187	France	Java
623	Tweet623	User623	1031	4501	Poland	JavaScript
624	Tweet624	User624	4437	828	Malta	Ruby
625	Tweet625	User625	3344	2854	Poland	Java
626	Tweet626	User626	2923	1818	Hungary	Obj C
627	Tweet627	User627	2840	1150	Germany	C
628	Tweet628	User628	1983	4800	Poland	Python
629	Tweet629	User629	4432	4921	Finland	PHP
630	Tweet630	User630	2201	4517	Cyprus	Obj C
631	Tweet631	User631	277	4825	Poland	Visual Basic
632	Tweet632	User632	4156	4822	Bulgaria	Python
633	Tweet633	User633	4522	467	Denmark	C#
634	Tweet634	User634	4678	4548	Slovakia	PHP
635	Tweet635	User635	4644	486	Estonia	PHP
636	Tweet636	User636	3887	4191	Denmark	Scala
637	Tweet637	User637	147	633	Poland	Visual Basic
638	Tweet638	User638	4166	2418	Slovakia	Visual Basic
639	Tweet639	User639	930	3342	Czech Republic	Ruby
640	Tweet640	User640	64	249	Latvia	Scala
641	Tweet641	User641	4193	4833	Malta	Scala
642	Tweet642	User642	1340	3360	Italy	Java
643	Tweet643	User643	1392	641	Estonia	C++
644	Tweet644	User644	181	3899	Bulgaria	Scala
645	Tweet645	User645	3472	2326	Spain	C
646	Tweet646	User646	1527	3844	Portugal	Python
647	Tweet647	User647	3924	908	Denmark	C
648	Tweet648	User648	504	1627	Belgium	Visual Basic
649	Tweet649	User649	649	4985	Czech Republic	Python
650	Tweet650	User650	4319	1959	Poland	Visual Basic
651	Tweet651	User651	804	3336	Netherlands	Ruby
652	Tweet652	User652	1536	1057	Ireland	Java
653	Tweet653	User653	174	310	Latvia	JavaScript
654	Tweet654	User654	3429	4949	Cyprus	Scala
655	Tweet655	User655	3668	4368	Luxembourg	C++
656	Tweet656	User656	4960	2417	Hungary	Ruby
657	Tweet657	User657	4715	995	Portugal	Obj C
658	Tweet658	User658	240	3836	Hungary	Python
659	Tweet659	User659	4196	112	United Kingdom	C++
660	Tweet660	User660	3860	2868	Sweden	C++
661	Tweet661	User661	760	2239	Malta	Obj C
662	Tweet662	User662	3938	3226	Czech Republic	JavaScript
663	Tweet663	User663	595	4977	Netherlands	Ruby
664	Tweet664	User664	2083	1311	Portugal	PHP
665	Tweet665	User665	1514	4350	Latvia	JavaScript
666	Tweet666	User666	4684	4161	Slovakia	JavaScript
667	Tweet667	User667	3877	4311	Portugal	PHP
668	Tweet668	User668	3555	499	Finland	Java
669	Tweet669	User669	1706	72	Romania	Scala
670	Tweet670	User670	2968	2321	Belgium	Ruby
671	Tweet671	User671	4630	2930	Portugal	Obj C
672	Tweet672	User672	300	2669	Estonia	Java
673	Tweet673	User673	3756	2729	Luxembourg	Scala
674	Tweet674	User674	479	1619	Croatia	Python
675	Tweet675	User675	2510	478	France	Java
676	Tweet676	User676	2790	3734	Austria	C++
677	Tweet677	User677	3065	4819	Denmark	Visual Basic
678	Tweet678	User678	1601	3826	Portugal	C#
679	Tweet679	User679	3479	3102	Malta	C
680	Tweet680	User680	2560	2008	Portugal	Java
681	Tweet681	User681	616	3523	Croatia	Java
682	Tweet682	User682	2885	3448	Czech Republic	PHP
683	Tweet683	User683	4869	1665	Slovakia	C++
684	Tweet684	User684	1444	334	Latvia	Obj C
685	Tweet685	User685	4031	1585	Croatia	C++
686	Tweet686	User686	1023	2867	Slovenia	C#
687	Tweet687	User687	3312	794	Czech Republic	Visual Basic
688	Tweet688	User688	325	878	Slovakia	Ruby
689	Tweet689	User689	2555	4375	Czech Republic	Java
690	Tweet690	User690	1187	831	Poland	Visual Basic
691	Tweet691	User691	4220	4560	Ireland	C#
692	Tweet692	User692	488	3146	Spain	Ruby
693	Tweet693	User693	3258	588	Denmark	Scala
694	Tweet694	User694	4179	2161	Portugal	C++
695	Tweet695	User695	2570	3129	Slovenia	C
696	Tweet696	User696	4966	4925	United Kingdom	Visual Basic
697	Tweet697	User697	3030	3589	Poland	PHP
698	Tweet698	User698	1098	2056	Netherlands	JavaScript
699	Tweet699	User699	975	1406	Germany	C
700	Tweet700	User700	1086	4738	Croatia	Python
701	Tweet701	User701	4228	22	France	C#
702	Tweet702	User702	4490	3352	Sweden	Visual Basic
703	Tweet703	User703	3098	3769	United Kingdom	Obj C
704	Tweet704	User704	4526	3336	Finland	Java
705	Tweet705	User705	1611	3271	Sweden	Ruby
706	Tweet706	User706	1508	3904	Spain	C#
707	Tweet707	User707	3638	4922	Bulgaria	Ruby
708	Tweet708	User708	1413	4925	Sweden	Visual Basic
709	Tweet709	User709	3229	1272	Greece	Ruby
710	Tweet710	User710	1940	392	Estonia	C++
711	Tweet711	User711	3222	3319	Cyprus	Java
712	Tweet712	User712	2257	4334	Croatia	C
713	Tweet713	User713	2026	423	Denmark	Obj C
714	Tweet714	User714	2108	446	Sweden	Ruby
715	Tweet715	User715	557	344	Bulgaria	C#
716	Tweet716	User716	293	3597	Latvia	C
717	Tweet717	User717	622	1747	Greece	C#
718	Tweet718	User718	3196	2177	Croatia	Python
719	Tweet719	User719	3208	389	Slovenia	Ruby
720	Tweet720	User720	4931	4833	Germany	Obj C
721	Tweet721	User721	3023	4688	Finland	Visual Basic
722	Tweet722	User722	851	1521	Greece	JavaScript
723	Tweet723	User723	1851	2646	France	Python
724	Tweet724	User724	2965	1758	Italy	Visual Basic
725	Tweet725	User725	193	2988	Slovenia	JavaScript
726	Tweet726	User726	4702	2356	Ireland	C#
727	Tweet727	User727	1901	2040	Luxembourg	Visual Basic
728	Tweet728	User728	2142	2518	Denmark	C
729	Tweet729	User729	752	2999	Slovakia	Ruby
730	Tweet730	User730	2650	3374	Romania	Ruby
731	Tweet731	User731	2013	3332	Poland	C++
732	Tweet732	User732	4620	1895	France	C
733	Tweet733	User733	1472	1559	Malta	Python
734	Tweet734	User734	4366	3880	United Kingdom	Ruby
735	Tweet735	User735	4046	988	Slovakia	C++
736	Tweet736	User736	3291	4419	Slovakia	C++
737	Tweet737	User737	3748	348	Netherlands	Scala
738	Tweet738	User738	1800	1454	Spain	PHP
739	Tweet739	User739	1329	2779	Latvia	Scala
740	Tweet740	User740	4536	4828	Slovenia	C++
741	Tweet741	User741	2261	253	Slovenia	PHP
742	Tweet742	User742	4705	2392	Estonia	Python
743	Tweet743	User743	2444	3648	Sweden	C++
744	Tweet744	User744	741	1843	Luxembourg	Scala
745	Tweet745	User745	2327	1319	Estonia	Visual Basic
746	Tweet746	User746	1908	3936	Croatia	Python
747	Tweet747	User747	4812	4700	Slovakia	C#
748	Tweet748	User748	2759	40	Denmark	PHP
749	Tweet749	User749	4909	1122	Netherlands	Obj C
750	Tweet750	User750	382	2489	Bulgaria	Python
751	Tweet751	User751	4355	4031	Germany	Visual Basic
752	Tweet752	User752	4793	807	Romania	Scala
753	Tweet753	User753	528	2616	Slovenia	JavaScript
754	Tweet754	User754	1875	2703	Malta	C
755	Tweet755	User755	2271	905	Ireland	C#
756	Tweet756	User756	3035	1400	Latvia	Ruby
757	Tweet757	User757	2144	3036	Czech Republic	JavaScript
758	Tweet758	User758	1392	1708	Poland	Visual Basic
759	Tweet759	User759	2955	2510	Slovakia	Obj C
760	Tweet760	User760	69	1422	Finland	Obj C
761	Tweet761	User761	1533	3553	Poland	C#
762	Tweet762	User762	3255	44	Poland	Ruby
763	Tweet763	User763	4898	4878	United Kingdom	Visual Basic
764	Tweet764	User764	1060	299	Slovakia	Scala
765	Tweet765	User765	405	2411	Estonia	C#
766	Tweet766	User766	2831	3105	Romania	C++
767	Tweet767	User767	4055	4872	Luxembourg	C++
768	Tweet768	User768	2295	2624	Italy	Ruby
769	Tweet769	User769	494	673	Poland	Java
770	Tweet770	User770	864	2456	Czech Republic	Obj C
771	Tweet771	User771	4530	4028	United Kingdom	C
772	Tweet772	User772	1637	2448	Croatia	Java
773	Tweet773	User773	1275	1273	Luxembourg	Python
774	Tweet774	User774	1552	4200	Finland	C
775	Tweet775	User775	4892	1529	Slovenia	JavaScript
776	Tweet776	User776	1712	630	Malta	PHP
777	Tweet777	User777	4209	1398	Slovenia	PHP
778	Tweet778	User778	2576	2250	Greece	JavaScript
779	Tweet779	User779	2263	305	Netherlands	C
780	Tweet780	User780	2092	2731	Portugal	PHP
781	Tweet781	User781	3112	2583	Austria	C++
782	Tweet782	User782	1850	1364	Latvia	C#
783	Tweet783	User783	4551	523	Spain	Obj C
784	Tweet784	User784	3632	1628	Poland	C
785	Tweet785	User785	248	2797	Bulgaria	Java
786	Tweet786	User786	44	2155	United Kingdom	C++
787	Tweet787	User787	2304	3626	Spain	Visual Basic
788	Tweet788	User788	81	138	Finland	C#
789	Tweet789	User789	1776	2643	United Kingdom	Obj C
790	Tweet790	User790	319	3404	Slovakia	Visual Basic
791	Tweet791	User791	4472	983	Bulgaria	Scala
792	Tweet792	User792	4870	2011	United Kingdom	Python
793	Tweet793	User793	3240	1646	Hungary	C#
794	Tweet794	User794	3944	1657	United Kingdom	C
795	Tweet795	User795	3869	4621	Sweden	Visual Basic
796	Tweet796	User796	4123	2752	Austria	C#
797	Tweet797	User797	1696	815	Estonia	C
798	Tweet798	User798	3011	1172	Austria	C
799	Tweet799	User799	457	2978	France	Scala
800	Tweet800	User800	878	3975	France	Scala
801	Tweet801	User801	931	4385	Austria	JavaScript
802	Tweet802	User802	3522	3556	Hungary	Obj C
803	Tweet803	User803	3921	2242	Hungary	C#
804	Tweet804	User804	4564	4158	Finland	Visual Basic
805	Tweet805	User805	3165	4859	Greece	Java
806	Tweet806	User806	637	821	Czech Republic	C
807	Tweet807	User807	4524	3928	Estonia	Java
808	Tweet808	User808	4262	4939	Portugal	Visual Basic
809	Tweet809	User809	4476	4348	United Kingdom	C
810	Tweet810	User810	3734	216	Spain	Obj C
811	Tweet811	User811	1787	2608	Italy	C++
812	Tweet812	User812	4770	1796	Hungary	C++
813	Tweet813	User813	521	510	Croatia	PHP
814	Tweet814	User814	118	2365	Czech Republic	Java
815	Tweet815	User815	647	2491	Poland	Ruby
2273	Tweet2273	User2273	196	187	Italy	C
816	Tweet816	User816	1112	1964	France	Obj C
817	Tweet817	User817	1981	1998	Romania	JavaScript
818	Tweet818	User818	1001	2415	Ireland	Ruby
819	Tweet819	User819	3885	4089	Spain	Scala
820	Tweet820	User820	4387	2488	Malta	C++
821	Tweet821	User821	649	2691	Austria	Java
822	Tweet822	User822	4380	3822	Croatia	JavaScript
823	Tweet823	User823	4363	2635	Spain	Obj C
824	Tweet824	User824	2473	2485	Cyprus	Visual Basic
825	Tweet825	User825	2555	1808	Estonia	Scala
826	Tweet826	User826	3294	476	Belgium	PHP
827	Tweet827	User827	2390	2495	United Kingdom	Visual Basic
828	Tweet828	User828	3233	2516	Austria	Ruby
829	Tweet829	User829	754	219	Slovenia	C
830	Tweet830	User830	4934	3485	United Kingdom	Python
831	Tweet831	User831	744	1931	Finland	JavaScript
832	Tweet832	User832	2979	4891	Romania	C
833	Tweet833	User833	4528	4968	Malta	Obj C
834	Tweet834	User834	604	1100	Italy	C#
835	Tweet835	User835	1857	1703	Lithuania	C#
836	Tweet836	User836	3395	3187	Czech Republic	Python
837	Tweet837	User837	976	3206	Portugal	Obj C
838	Tweet838	User838	3619	1761	Portugal	PHP
839	Tweet839	User839	2651	521	Bulgaria	C#
840	Tweet840	User840	2269	1215	France	Obj C
841	Tweet841	User841	368	491	Poland	C#
842	Tweet842	User842	1386	4340	Belgium	Visual Basic
843	Tweet843	User843	3136	2780	Bulgaria	PHP
844	Tweet844	User844	1656	2143	Estonia	C
845	Tweet845	User845	1929	2575	Croatia	Scala
846	Tweet846	User846	2362	670	Latvia	Java
847	Tweet847	User847	2303	126	France	Scala
848	Tweet848	User848	2652	4618	Italy	Visual Basic
849	Tweet849	User849	55	4727	Belgium	Visual Basic
850	Tweet850	User850	606	2821	Estonia	Ruby
851	Tweet851	User851	2920	4236	Austria	Scala
852	Tweet852	User852	1530	3553	Belgium	C#
853	Tweet853	User853	3097	553	Finland	C++
854	Tweet854	User854	2288	2460	Croatia	C
855	Tweet855	User855	2303	3776	Lithuania	Python
856	Tweet856	User856	3328	1903	Belgium	Java
857	Tweet857	User857	2870	4511	Austria	Ruby
858	Tweet858	User858	697	3213	Italy	Python
859	Tweet859	User859	1448	3873	Romania	Python
860	Tweet860	User860	1775	1936	Croatia	C++
861	Tweet861	User861	2535	3428	Denmark	Java
862	Tweet862	User862	4492	355	Slovenia	Obj C
863	Tweet863	User863	3658	3605	Luxembourg	Java
864	Tweet864	User864	2445	2947	Ireland	Scala
865	Tweet865	User865	2956	3060	Portugal	C
866	Tweet866	User866	253	4758	Spain	Python
867	Tweet867	User867	1103	1032	Greece	Obj C
868	Tweet868	User868	1694	3135	United Kingdom	C++
869	Tweet869	User869	4196	2592	Poland	Visual Basic
870	Tweet870	User870	1915	1684	Finland	C#
871	Tweet871	User871	1670	1294	Finland	JavaScript
872	Tweet872	User872	3347	3349	Estonia	Obj C
873	Tweet873	User873	942	3123	Austria	JavaScript
874	Tweet874	User874	3240	4756	Italy	JavaScript
875	Tweet875	User875	628	1781	Belgium	C++
876	Tweet876	User876	4340	1004	Croatia	PHP
877	Tweet877	User877	423	325	Hungary	Obj C
878	Tweet878	User878	2121	592	Finland	Java
879	Tweet879	User879	1873	700	Sweden	C#
880	Tweet880	User880	1165	3265	Spain	PHP
881	Tweet881	User881	2048	1945	Portugal	Scala
882	Tweet882	User882	3798	4364	Lithuania	C++
883	Tweet883	User883	462	3814	Finland	C++
884	Tweet884	User884	3913	2256	Croatia	C++
885	Tweet885	User885	3475	2021	United Kingdom	Obj C
886	Tweet886	User886	3891	2365	Romania	JavaScript
887	Tweet887	User887	2685	105	Cyprus	Python
888	Tweet888	User888	2109	492	Austria	C#
889	Tweet889	User889	3578	4308	Lithuania	Java
890	Tweet890	User890	2183	2088	United Kingdom	C#
891	Tweet891	User891	4781	4065	Poland	Python
892	Tweet892	User892	1373	1321	Germany	Scala
893	Tweet893	User893	2452	973	Ireland	Java
894	Tweet894	User894	1646	3609	Lithuania	Python
895	Tweet895	User895	1219	3479	Spain	PHP
896	Tweet896	User896	762	828	Slovenia	Python
897	Tweet897	User897	1606	2394	Bulgaria	JavaScript
898	Tweet898	User898	762	2926	Sweden	Obj C
899	Tweet899	User899	4715	343	Greece	Scala
900	Tweet900	User900	864	4347	Netherlands	C++
901	Tweet901	User901	4670	1403	Finland	Python
902	Tweet902	User902	3616	525	Sweden	C#
903	Tweet903	User903	2249	1176	France	C
904	Tweet904	User904	1529	577	Malta	C++
905	Tweet905	User905	1397	2355	Slovakia	PHP
906	Tweet906	User906	342	3763	Malta	PHP
907	Tweet907	User907	3828	362	Hungary	Obj C
908	Tweet908	User908	2401	4142	Poland	Scala
909	Tweet909	User909	900	3443	Malta	Visual Basic
910	Tweet910	User910	1966	1120	Netherlands	C++
911	Tweet911	User911	330	4874	Luxembourg	Java
912	Tweet912	User912	545	236	Belgium	Java
913	Tweet913	User913	836	2560	Germany	Java
914	Tweet914	User914	3499	142	Latvia	Obj C
915	Tweet915	User915	1339	4357	Romania	C#
916	Tweet916	User916	1641	4685	Luxembourg	PHP
917	Tweet917	User917	1032	2483	Luxembourg	PHP
918	Tweet918	User918	4113	196	Belgium	Visual Basic
919	Tweet919	User919	89	1244	Romania	Obj C
920	Tweet920	User920	361	2565	Cyprus	PHP
921	Tweet921	User921	2677	3552	Netherlands	Visual Basic
922	Tweet922	User922	1141	1078	Estonia	Python
923	Tweet923	User923	4899	4470	Bulgaria	Obj C
924	Tweet924	User924	1765	1588	Portugal	Visual Basic
925	Tweet925	User925	1606	1561	Denmark	C
926	Tweet926	User926	3921	1655	Lithuania	JavaScript
927	Tweet927	User927	135	4701	Sweden	Python
928	Tweet928	User928	4590	1456	Lithuania	C#
929	Tweet929	User929	4649	1275	Slovakia	C++
930	Tweet930	User930	4742	3138	Portugal	Scala
931	Tweet931	User931	2030	1036	Finland	PHP
932	Tweet932	User932	2454	1583	Poland	Scala
933	Tweet933	User933	4717	4267	Germany	C
934	Tweet934	User934	368	241	Slovakia	C
935	Tweet935	User935	4055	2155	Estonia	Scala
936	Tweet936	User936	2713	3892	Germany	C++
937	Tweet937	User937	789	2918	Austria	C
938	Tweet938	User938	4391	3962	France	Ruby
939	Tweet939	User939	573	957	Bulgaria	PHP
940	Tweet940	User940	3411	2625	Latvia	Visual Basic
941	Tweet941	User941	4947	15	Belgium	Scala
942	Tweet942	User942	2512	3751	Romania	Java
943	Tweet943	User943	2126	3459	Ireland	Obj C
944	Tweet944	User944	2801	4918	Ireland	JavaScript
945	Tweet945	User945	4917	3242	United Kingdom	JavaScript
946	Tweet946	User946	3647	480	Slovenia	Python
947	Tweet947	User947	4218	4742	Belgium	C
948	Tweet948	User948	3144	4312	Ireland	Obj C
949	Tweet949	User949	3663	894	Latvia	Visual Basic
950	Tweet950	User950	4206	4312	Malta	Python
951	Tweet951	User951	3643	2144	Greece	C#
952	Tweet952	User952	150	1641	France	C++
953	Tweet953	User953	42	3492	Austria	C
954	Tweet954	User954	2955	2856	France	Visual Basic
955	Tweet955	User955	4530	2404	Slovakia	C++
956	Tweet956	User956	4996	3433	Ireland	C
957	Tweet957	User957	4892	3763	Portugal	Java
958	Tweet958	User958	1432	328	United Kingdom	Ruby
959	Tweet959	User959	2752	952	Latvia	C#
960	Tweet960	User960	1842	4490	Portugal	Java
961	Tweet961	User961	763	4898	Latvia	C++
962	Tweet962	User962	1734	3246	Netherlands	Visual Basic
963	Tweet963	User963	4943	4563	Luxembourg	C#
964	Tweet964	User964	3386	4169	Slovenia	Visual Basic
965	Tweet965	User965	1244	2247	Romania	C++
966	Tweet966	User966	4171	3349	Greece	PHP
967	Tweet967	User967	3750	3663	Spain	Python
968	Tweet968	User968	1988	3202	Slovakia	Scala
969	Tweet969	User969	3858	1686	Bulgaria	C
970	Tweet970	User970	3268	1368	Luxembourg	Java
971	Tweet971	User971	143	1949	Slovakia	Obj C
972	Tweet972	User972	1499	610	Ireland	Scala
973	Tweet973	User973	252	4864	Portugal	JavaScript
974	Tweet974	User974	4178	4121	Denmark	Scala
975	Tweet975	User975	4506	2800	Belgium	Python
976	Tweet976	User976	4429	182	Denmark	Scala
977	Tweet977	User977	1493	3247	Denmark	Java
978	Tweet978	User978	4013	676	Czech Republic	Scala
979	Tweet979	User979	3205	2817	Czech Republic	PHP
980	Tweet980	User980	3053	4096	Italy	C++
981	Tweet981	User981	4985	8	Cyprus	Obj C
982	Tweet982	User982	2019	3865	Estonia	C#
983	Tweet983	User983	2681	1249	Finland	Python
984	Tweet984	User984	561	475	Belgium	Visual Basic
985	Tweet985	User985	3726	4102	Slovenia	PHP
986	Tweet986	User986	3003	689	Hungary	C#
987	Tweet987	User987	442	1703	Portugal	C#
988	Tweet988	User988	1217	1507	Finland	Python
989	Tweet989	User989	4424	4040	Sweden	Python
990	Tweet990	User990	1902	1899	Slovenia	Java
991	Tweet991	User991	2707	1018	Belgium	C++
992	Tweet992	User992	1212	3892	Denmark	Visual Basic
993	Tweet993	User993	2158	4609	Luxembourg	Java
994	Tweet994	User994	2831	4120	Portugal	PHP
995	Tweet995	User995	504	2116	United Kingdom	C
996	Tweet996	User996	2723	3119	United Kingdom	Visual Basic
997	Tweet997	User997	2600	1853	Slovakia	C
998	Tweet998	User998	1902	965	Netherlands	C++
999	Tweet999	User999	389	3147	Cyprus	Java
1000	Tweet1000	User1000	3213	4859	Luxembourg	PHP
1001	Tweet1001	User1001	2315	2435	Hungary	C#
1002	Tweet1002	User1002	4331	3673	Portugal	Obj C
1003	Tweet1003	User1003	3133	786	Latvia	PHP
1004	Tweet1004	User1004	1323	4753	Greece	Visual Basic
1005	Tweet1005	User1005	1994	1723	Latvia	C
1006	Tweet1006	User1006	2547	135	Cyprus	Scala
1007	Tweet1007	User1007	4787	2019	Czech Republic	Ruby
1008	Tweet1008	User1008	176	4991	Austria	Java
1009	Tweet1009	User1009	4234	4012	Estonia	JavaScript
1010	Tweet1010	User1010	864	3459	France	PHP
1011	Tweet1011	User1011	2242	1596	Hungary	Visual Basic
1012	Tweet1012	User1012	730	3373	Germany	Visual Basic
1013	Tweet1013	User1013	4770	1279	Hungary	C#
1014	Tweet1014	User1014	417	3215	Estonia	Ruby
1015	Tweet1015	User1015	2713	1564	Netherlands	Scala
1016	Tweet1016	User1016	4607	784	Hungary	JavaScript
1017	Tweet1017	User1017	66	842	Finland	Scala
1018	Tweet1018	User1018	3491	1236	Austria	PHP
1019	Tweet1019	User1019	274	3977	Slovenia	Scala
1020	Tweet1020	User1020	990	4991	Slovakia	C
1021	Tweet1021	User1021	756	878	Luxembourg	Python
1022	Tweet1022	User1022	2432	3165	Slovenia	Ruby
1023	Tweet1023	User1023	3044	2951	Italy	Scala
1025	Tweet1025	User1025	33	3309	Hungary	Java
1026	Tweet1026	User1026	3867	4351	Malta	C
1027	Tweet1027	User1027	1573	4757	Latvia	Visual Basic
1028	Tweet1028	User1028	3925	3910	Slovenia	Java
1029	Tweet1029	User1029	4046	3188	Greece	Scala
1030	Tweet1030	User1030	3722	1463	Lithuania	C
1031	Tweet1031	User1031	1687	2833	Belgium	C#
1032	Tweet1032	User1032	2432	1414	Malta	Python
1033	Tweet1033	User1033	1171	3787	Hungary	Obj C
1034	Tweet1034	User1034	1901	3814	Slovakia	C++
1035	Tweet1035	User1035	2356	1553	Bulgaria	C#
1036	Tweet1036	User1036	926	2933	Cyprus	JavaScript
1037	Tweet1037	User1037	368	3870	Italy	Python
1038	Tweet1038	User1038	1772	3007	Luxembourg	PHP
1039	Tweet1039	User1039	2959	4871	Slovenia	PHP
1040	Tweet1040	User1040	2273	2902	Greece	Python
1041	Tweet1041	User1041	4451	3589	Germany	Scala
1042	Tweet1042	User1042	1673	1217	United Kingdom	Java
1043	Tweet1043	User1043	2835	178	Luxembourg	C
1044	Tweet1044	User1044	1670	2834	Latvia	Java
1045	Tweet1045	User1045	1350	2314	Romania	PHP
1046	Tweet1046	User1046	670	985	Latvia	JavaScript
1047	Tweet1047	User1047	2430	3257	Slovakia	JavaScript
1048	Tweet1048	User1048	4688	2185	Romania	PHP
1049	Tweet1049	User1049	272	4656	Hungary	Visual Basic
1050	Tweet1050	User1050	648	4933	Slovenia	Python
1051	Tweet1051	User1051	1911	4075	Croatia	JavaScript
1052	Tweet1052	User1052	937	3869	Cyprus	Ruby
1053	Tweet1053	User1053	3243	510	Croatia	Scala
1054	Tweet1054	User1054	4822	4603	Germany	C++
1055	Tweet1055	User1055	2887	3107	Latvia	Scala
1056	Tweet1056	User1056	2355	3879	Lithuania	Obj C
1057	Tweet1057	User1057	3029	1019	Finland	Python
1058	Tweet1058	User1058	4928	4639	Luxembourg	JavaScript
1059	Tweet1059	User1059	488	4227	Luxembourg	Visual Basic
1060	Tweet1060	User1060	242	2607	Ireland	Ruby
1061	Tweet1061	User1061	390	1900	Ireland	Obj C
1062	Tweet1062	User1062	2635	468	Estonia	JavaScript
1063	Tweet1063	User1063	3443	1491	Belgium	C
1064	Tweet1064	User1064	3787	967	Hungary	Ruby
1065	Tweet1065	User1065	4098	4452	Spain	PHP
1066	Tweet1066	User1066	3112	1580	Luxembourg	C#
1067	Tweet1067	User1067	2493	580	Portugal	Obj C
1068	Tweet1068	User1068	3404	864	Luxembourg	PHP
1069	Tweet1069	User1069	3730	4704	Latvia	Scala
1070	Tweet1070	User1070	2317	2229	Slovenia	Obj C
1071	Tweet1071	User1071	1030	107	Latvia	Ruby
1072	Tweet1072	User1072	2721	2449	Sweden	Obj C
1073	Tweet1073	User1073	956	2268	Poland	C++
1074	Tweet1074	User1074	3758	1021	Estonia	JavaScript
1075	Tweet1075	User1075	2384	3713	Lithuania	Ruby
1076	Tweet1076	User1076	4051	1780	Estonia	Java
1077	Tweet1077	User1077	1049	1502	Slovenia	Ruby
1078	Tweet1078	User1078	3645	1447	Netherlands	C#
1079	Tweet1079	User1079	1405	1487	Finland	C
1080	Tweet1080	User1080	302	236	Netherlands	C++
1081	Tweet1081	User1081	3680	2930	Netherlands	Ruby
1082	Tweet1082	User1082	1829	2885	Hungary	JavaScript
1083	Tweet1083	User1083	22	2998	Denmark	C
1084	Tweet1084	User1084	577	299	Netherlands	Obj C
1085	Tweet1085	User1085	1738	2569	Slovenia	Visual Basic
1086	Tweet1086	User1086	524	1310	Malta	PHP
1087	Tweet1087	User1087	4082	2798	Cyprus	Python
1088	Tweet1088	User1088	1806	4793	Spain	C#
1089	Tweet1089	User1089	775	1795	Slovenia	Ruby
1090	Tweet1090	User1090	674	863	Malta	Visual Basic
1091	Tweet1091	User1091	4978	3590	Italy	JavaScript
1092	Tweet1092	User1092	3461	3662	Belgium	Python
1093	Tweet1093	User1093	4247	4297	Croatia	C
1094	Tweet1094	User1094	1047	2071	Germany	PHP
1095	Tweet1095	User1095	4630	3254	Spain	C
1096	Tweet1096	User1096	2110	1123	Poland	C#
1097	Tweet1097	User1097	4005	2749	Slovenia	Obj C
1098	Tweet1098	User1098	1182	1120	Austria	Visual Basic
1099	Tweet1099	User1099	3675	4628	Slovakia	C
1100	Tweet1100	User1100	4998	102	Italy	JavaScript
1101	Tweet1101	User1101	3719	4768	France	Python
1102	Tweet1102	User1102	1207	3978	Romania	Visual Basic
1103	Tweet1103	User1103	2013	2232	Bulgaria	Scala
1104	Tweet1104	User1104	4117	483	Czech Republic	Visual Basic
1105	Tweet1105	User1105	2673	2603	Sweden	C#
1106	Tweet1106	User1106	1276	3354	Czech Republic	C++
1107	Tweet1107	User1107	4298	633	France	Scala
1108	Tweet1108	User1108	2219	231	United Kingdom	Java
1109	Tweet1109	User1109	1678	1599	Malta	Obj C
1110	Tweet1110	User1110	2272	2983	Finland	C#
1111	Tweet1111	User1111	2876	4249	Romania	C
1112	Tweet1112	User1112	2003	1362	Belgium	PHP
1113	Tweet1113	User1113	1153	4493	Belgium	C++
1114	Tweet1114	User1114	1539	2115	Portugal	C#
1115	Tweet1115	User1115	2925	673	Lithuania	Scala
1116	Tweet1116	User1116	2647	1220	United Kingdom	PHP
1117	Tweet1117	User1117	1188	1490	Slovakia	Visual Basic
1118	Tweet1118	User1118	4274	4730	Croatia	Obj C
1119	Tweet1119	User1119	2616	579	Spain	Scala
1120	Tweet1120	User1120	4540	3093	Romania	Obj C
1121	Tweet1121	User1121	3993	4025	Sweden	Visual Basic
1122	Tweet1122	User1122	4709	1537	France	Java
1123	Tweet1123	User1123	1358	3060	Bulgaria	C
1124	Tweet1124	User1124	609	99	France	Scala
1125	Tweet1125	User1125	177	637	Belgium	C#
1126	Tweet1126	User1126	438	4245	Latvia	Ruby
1127	Tweet1127	User1127	253	4247	Lithuania	C
1128	Tweet1128	User1128	1195	2624	Croatia	Ruby
1129	Tweet1129	User1129	244	707	United Kingdom	Scala
1130	Tweet1130	User1130	949	2672	Ireland	Python
1131	Tweet1131	User1131	1822	4842	Romania	Python
1132	Tweet1132	User1132	1804	736	Luxembourg	C++
1133	Tweet1133	User1133	2410	2501	Lithuania	C
1134	Tweet1134	User1134	184	1367	Romania	Python
1135	Tweet1135	User1135	4589	349	Austria	Visual Basic
1136	Tweet1136	User1136	3189	3523	Estonia	Python
1137	Tweet1137	User1137	3213	257	Malta	Obj C
1138	Tweet1138	User1138	497	827	Poland	JavaScript
1139	Tweet1139	User1139	2204	3016	Italy	Obj C
1140	Tweet1140	User1140	896	2661	United Kingdom	JavaScript
1141	Tweet1141	User1141	2721	1697	Estonia	Obj C
1142	Tweet1142	User1142	884	4777	Lithuania	C++
1143	Tweet1143	User1143	3461	2754	Slovakia	C
1144	Tweet1144	User1144	3900	85	Bulgaria	Java
1145	Tweet1145	User1145	2870	366	Netherlands	C#
1146	Tweet1146	User1146	4337	1894	Czech Republic	Scala
1147	Tweet1147	User1147	3034	294	Ireland	Obj C
1148	Tweet1148	User1148	855	4218	Sweden	Python
1149	Tweet1149	User1149	3056	3592	Greece	PHP
1150	Tweet1150	User1150	4244	1486	Denmark	C
1151	Tweet1151	User1151	290	1144	Greece	Obj C
1152	Tweet1152	User1152	1960	1599	Poland	JavaScript
1153	Tweet1153	User1153	1962	4588	Czech Republic	Visual Basic
1154	Tweet1154	User1154	2620	1064	Portugal	Java
1155	Tweet1155	User1155	4801	4399	United Kingdom	C#
1156	Tweet1156	User1156	262	1861	Lithuania	Scala
1157	Tweet1157	User1157	1826	782	Greece	PHP
1158	Tweet1158	User1158	3808	2364	Hungary	Ruby
1159	Tweet1159	User1159	568	2742	Italy	JavaScript
1160	Tweet1160	User1160	2551	3873	Hungary	C++
1161	Tweet1161	User1161	1356	3828	Ireland	Visual Basic
1162	Tweet1162	User1162	4595	3466	Luxembourg	Scala
1163	Tweet1163	User1163	2620	2135	Slovakia	Java
1164	Tweet1164	User1164	3681	1877	Luxembourg	C
1165	Tweet1165	User1165	2629	4364	Austria	PHP
1166	Tweet1166	User1166	1623	56	Greece	C++
1167	Tweet1167	User1167	4773	4033	Estonia	C#
1168	Tweet1168	User1168	4819	427	Germany	Python
1169	Tweet1169	User1169	2395	1173	Ireland	C#
1170	Tweet1170	User1170	2642	1654	Austria	Java
1171	Tweet1171	User1171	2930	3920	Portugal	Java
1172	Tweet1172	User1172	2561	3816	Croatia	Obj C
1173	Tweet1173	User1173	1814	2224	Czech Republic	Ruby
1174	Tweet1174	User1174	1569	1876	Cyprus	Python
1175	Tweet1175	User1175	602	2266	Estonia	C
1176	Tweet1176	User1176	2956	3510	Germany	C#
1177	Tweet1177	User1177	3654	4593	France	C++
1178	Tweet1178	User1178	1369	278	Latvia	C++
1179	Tweet1179	User1179	3054	3878	Malta	Scala
1180	Tweet1180	User1180	985	2902	Czech Republic	Scala
1181	Tweet1181	User1181	552	2165	Poland	C++
1182	Tweet1182	User1182	3286	634	Greece	PHP
1183	Tweet1183	User1183	2342	291	Slovakia	C
1184	Tweet1184	User1184	258	2978	Ireland	Visual Basic
1185	Tweet1185	User1185	915	3409	Malta	Obj C
1186	Tweet1186	User1186	3702	4262	Denmark	C++
1187	Tweet1187	User1187	235	4254	Romania	Python
1188	Tweet1188	User1188	49	1295	Hungary	Visual Basic
1189	Tweet1189	User1189	4074	371	Greece	C
1190	Tweet1190	User1190	1898	2091	Spain	Visual Basic
1191	Tweet1191	User1191	875	3599	Finland	Obj C
1192	Tweet1192	User1192	3825	4521	Malta	Java
1193	Tweet1193	User1193	358	417	Croatia	PHP
1194	Tweet1194	User1194	2415	1391	Slovakia	Java
1195	Tweet1195	User1195	2869	970	Belgium	C#
1196	Tweet1196	User1196	3374	448	Netherlands	PHP
1197	Tweet1197	User1197	677	4469	Netherlands	Scala
1198	Tweet1198	User1198	1414	1621	Czech Republic	JavaScript
1199	Tweet1199	User1199	21	2380	Netherlands	JavaScript
1200	Tweet1200	User1200	3910	888	Croatia	Java
1201	Tweet1201	User1201	3780	4762	Spain	Visual Basic
1202	Tweet1202	User1202	3027	3992	Finland	JavaScript
1203	Tweet1203	User1203	2750	4103	Germany	Java
1204	Tweet1204	User1204	2243	1729	Estonia	Obj C
1205	Tweet1205	User1205	135	2332	Denmark	JavaScript
1206	Tweet1206	User1206	1606	4910	Bulgaria	C++
1207	Tweet1207	User1207	2230	4555	Hungary	Python
1208	Tweet1208	User1208	4730	588	Netherlands	Visual Basic
1209	Tweet1209	User1209	521	1662	Latvia	C++
1210	Tweet1210	User1210	1153	4109	Denmark	PHP
1211	Tweet1211	User1211	743	627	Romania	C#
1212	Tweet1212	User1212	2448	2845	Hungary	Java
1213	Tweet1213	User1213	262	3578	Portugal	C
1214	Tweet1214	User1214	2361	1239	Ireland	C++
1215	Tweet1215	User1215	4574	3722	Slovakia	Java
1216	Tweet1216	User1216	419	375	Malta	Scala
1217	Tweet1217	User1217	1858	2878	Malta	Java
1218	Tweet1218	User1218	1514	2466	Czech Republic	Python
1219	Tweet1219	User1219	3250	492	Denmark	Java
1220	Tweet1220	User1220	3258	4760	Lithuania	PHP
1221	Tweet1221	User1221	4183	231	Hungary	Ruby
1222	Tweet1222	User1222	1998	2858	Austria	Python
1223	Tweet1223	User1223	4865	695	Finland	PHP
1224	Tweet1224	User1224	3742	97	Ireland	C
1225	Tweet1225	User1225	3605	1592	Croatia	JavaScript
1226	Tweet1226	User1226	4179	2369	Finland	Ruby
1227	Tweet1227	User1227	1608	4246	Spain	Python
1228	Tweet1228	User1228	1016	781	Slovenia	Java
1229	Tweet1229	User1229	1408	4539	Estonia	Python
1230	Tweet1230	User1230	213	1983	Malta	Visual Basic
1231	Tweet1231	User1231	881	4302	France	C++
1232	Tweet1232	User1232	423	2849	Luxembourg	Python
1233	Tweet1233	User1233	4491	917	Greece	Python
1234	Tweet1234	User1234	3257	264	Italy	Ruby
1235	Tweet1235	User1235	709	3193	Cyprus	PHP
1236	Tweet1236	User1236	2659	2511	Finland	JavaScript
1237	Tweet1237	User1237	2042	3013	Spain	Ruby
1238	Tweet1238	User1238	2414	1058	Sweden	Python
1239	Tweet1239	User1239	3990	3094	Czech Republic	Obj C
1240	Tweet1240	User1240	1163	4077	Cyprus	C
1241	Tweet1241	User1241	871	1981	Portugal	Java
1242	Tweet1242	User1242	848	541	Denmark	C++
1243	Tweet1243	User1243	533	4941	Greece	Obj C
1244	Tweet1244	User1244	594	3954	Bulgaria	C#
1245	Tweet1245	User1245	3112	1802	Malta	PHP
1246	Tweet1246	User1246	106	3796	Estonia	C#
1247	Tweet1247	User1247	2774	205	Denmark	Scala
1248	Tweet1248	User1248	3588	2428	United Kingdom	JavaScript
1249	Tweet1249	User1249	1391	2787	Slovakia	Obj C
1250	Tweet1250	User1250	1834	1125	Luxembourg	PHP
1251	Tweet1251	User1251	1735	2505	Portugal	C++
1252	Tweet1252	User1252	706	3189	Spain	Obj C
1253	Tweet1253	User1253	4740	4995	Sweden	Obj C
1254	Tweet1254	User1254	4407	4210	Latvia	C#
1255	Tweet1255	User1255	1675	4929	Ireland	JavaScript
1256	Tweet1256	User1256	3655	4660	Portugal	PHP
1257	Tweet1257	User1257	218	882	Austria	PHP
1258	Tweet1258	User1258	3924	1767	Greece	Obj C
1259	Tweet1259	User1259	1024	139	Estonia	Scala
1260	Tweet1260	User1260	3743	2540	Cyprus	Java
1261	Tweet1261	User1261	4248	3356	Latvia	C
1262	Tweet1262	User1262	3237	3595	Luxembourg	Java
1263	Tweet1263	User1263	279	1383	Croatia	Obj C
1264	Tweet1264	User1264	89	3966	Poland	C++
1265	Tweet1265	User1265	1313	1149	Spain	Obj C
1266	Tweet1266	User1266	2503	1507	Romania	C#
1267	Tweet1267	User1267	2152	4760	Slovenia	C
1268	Tweet1268	User1268	391	3243	Croatia	C++
1269	Tweet1269	User1269	2892	2997	Poland	C
1270	Tweet1270	User1270	1097	2006	Austria	JavaScript
1271	Tweet1271	User1271	3729	454	Austria	Obj C
1272	Tweet1272	User1272	4999	3394	Malta	Python
1273	Tweet1273	User1273	3540	3311	Cyprus	Scala
1274	Tweet1274	User1274	3171	3552	Portugal	C++
1275	Tweet1275	User1275	532	2252	Croatia	Java
1276	Tweet1276	User1276	2809	4521	Latvia	Obj C
1277	Tweet1277	User1277	4018	4947	Austria	Ruby
1278	Tweet1278	User1278	2417	1712	Croatia	JavaScript
1279	Tweet1279	User1279	1281	3549	Germany	JavaScript
1280	Tweet1280	User1280	2828	1178	Luxembourg	PHP
1281	Tweet1281	User1281	3983	4647	Sweden	Visual Basic
1282	Tweet1282	User1282	3462	4991	Germany	Ruby
1283	Tweet1283	User1283	974	4042	Spain	Java
1284	Tweet1284	User1284	3536	1967	Bulgaria	Obj C
1285	Tweet1285	User1285	3739	818	Austria	Python
1286	Tweet1286	User1286	4439	1256	Slovakia	C#
1287	Tweet1287	User1287	2766	1259	Malta	Visual Basic
1288	Tweet1288	User1288	2349	3692	Luxembourg	PHP
1289	Tweet1289	User1289	3669	1018	Hungary	Scala
1290	Tweet1290	User1290	3992	3489	Netherlands	Java
1291	Tweet1291	User1291	1247	3058	Czech Republic	Ruby
1292	Tweet1292	User1292	2185	2834	Belgium	Ruby
1293	Tweet1293	User1293	4102	4026	Croatia	Obj C
1294	Tweet1294	User1294	1762	2656	Austria	Visual Basic
1295	Tweet1295	User1295	2345	4672	Malta	Java
1296	Tweet1296	User1296	3348	431	Slovenia	Visual Basic
1297	Tweet1297	User1297	96	3654	Netherlands	PHP
1298	Tweet1298	User1298	1774	2888	Slovenia	Python
1299	Tweet1299	User1299	823	3289	Italy	Visual Basic
1300	Tweet1300	User1300	1466	1380	Poland	C#
1301	Tweet1301	User1301	4326	1387	Poland	C
1302	Tweet1302	User1302	2091	4504	Slovakia	Java
1303	Tweet1303	User1303	3463	621	Ireland	Obj C
1304	Tweet1304	User1304	4506	2272	Denmark	Python
1305	Tweet1305	User1305	1269	1199	Bulgaria	Visual Basic
1306	Tweet1306	User1306	1574	4101	Ireland	C
1307	Tweet1307	User1307	4501	3434	Hungary	Obj C
1308	Tweet1308	User1308	1221	661	Latvia	JavaScript
1309	Tweet1309	User1309	4219	2432	Estonia	Java
1310	Tweet1310	User1310	413	271	Netherlands	Visual Basic
1311	Tweet1311	User1311	1409	3038	Lithuania	Ruby
1312	Tweet1312	User1312	2581	1126	Ireland	Python
1313	Tweet1313	User1313	4891	1654	France	Java
1314	Tweet1314	User1314	253	4978	Slovenia	Obj C
1315	Tweet1315	User1315	4068	722	United Kingdom	PHP
1316	Tweet1316	User1316	946	2623	Malta	C#
1317	Tweet1317	User1317	4157	4860	Slovakia	JavaScript
1318	Tweet1318	User1318	50	3946	Spain	Scala
1319	Tweet1319	User1319	1685	4516	Sweden	JavaScript
1320	Tweet1320	User1320	4780	2174	Hungary	JavaScript
1321	Tweet1321	User1321	1304	2955	Spain	Ruby
1322	Tweet1322	User1322	4245	3303	Spain	JavaScript
1323	Tweet1323	User1323	4310	4861	France	Python
1324	Tweet1324	User1324	3962	1496	Portugal	C#
1325	Tweet1325	User1325	2368	1216	Malta	Obj C
1326	Tweet1326	User1326	4431	2960	United Kingdom	Scala
1327	Tweet1327	User1327	1391	3142	Lithuania	Scala
1328	Tweet1328	User1328	4921	3528	Malta	C#
1329	Tweet1329	User1329	1017	1259	Latvia	Obj C
1330	Tweet1330	User1330	4513	4464	Luxembourg	PHP
1331	Tweet1331	User1331	3670	54	Finland	Java
1332	Tweet1332	User1332	2315	201	Netherlands	Obj C
1333	Tweet1333	User1333	1787	690	Sweden	Visual Basic
1334	Tweet1334	User1334	1510	642	Germany	JavaScript
1335	Tweet1335	User1335	1384	2966	Sweden	C#
1336	Tweet1336	User1336	2933	4226	Portugal	C#
1337	Tweet1337	User1337	2433	2058	Czech Republic	C
1338	Tweet1338	User1338	1091	4284	Sweden	Java
1339	Tweet1339	User1339	4964	3029	Portugal	Obj C
1340	Tweet1340	User1340	3118	4813	Romania	PHP
1341	Tweet1341	User1341	647	3387	Lithuania	Java
1342	Tweet1342	User1342	1151	4506	Latvia	JavaScript
1343	Tweet1343	User1343	714	4981	Malta	C
1344	Tweet1344	User1344	1076	437	Portugal	Java
1345	Tweet1345	User1345	3044	595	Hungary	Ruby
1346	Tweet1346	User1346	3246	969	Romania	C#
1347	Tweet1347	User1347	3458	4274	Finland	C++
1348	Tweet1348	User1348	2199	3466	Cyprus	Python
1349	Tweet1349	User1349	4401	1539	Hungary	PHP
1350	Tweet1350	User1350	112	2265	United Kingdom	C
1351	Tweet1351	User1351	670	4269	Slovenia	C++
1352	Tweet1352	User1352	1763	1975	Germany	Python
1353	Tweet1353	User1353	178	2768	Cyprus	PHP
1354	Tweet1354	User1354	4773	2434	Bulgaria	C#
1355	Tweet1355	User1355	2010	1754	France	PHP
1356	Tweet1356	User1356	2856	671	Latvia	Python
1357	Tweet1357	User1357	3054	3697	Hungary	JavaScript
1358	Tweet1358	User1358	347	433	Ireland	Obj C
1359	Tweet1359	User1359	1047	1786	Croatia	Visual Basic
1360	Tweet1360	User1360	3492	4370	Slovenia	JavaScript
1361	Tweet1361	User1361	1453	3814	Portugal	Python
1362	Tweet1362	User1362	305	1320	Netherlands	C++
1363	Tweet1363	User1363	2867	3608	Latvia	C++
1364	Tweet1364	User1364	438	821	Croatia	Ruby
1365	Tweet1365	User1365	683	4117	Lithuania	Obj C
1366	Tweet1366	User1366	674	1567	Poland	Python
1367	Tweet1367	User1367	4658	1510	Lithuania	Scala
1368	Tweet1368	User1368	1685	3815	Portugal	Obj C
1369	Tweet1369	User1369	112	1331	United Kingdom	C
1370	Tweet1370	User1370	1356	582	France	Python
1371	Tweet1371	User1371	687	717	Portugal	C#
1372	Tweet1372	User1372	1203	1324	Sweden	C
1373	Tweet1373	User1373	3571	4973	Malta	Python
1374	Tweet1374	User1374	2376	1002	Slovenia	C
1375	Tweet1375	User1375	762	4500	Portugal	JavaScript
1376	Tweet1376	User1376	4053	399	Croatia	Python
1377	Tweet1377	User1377	958	4543	Denmark	JavaScript
1378	Tweet1378	User1378	1420	3403	Lithuania	PHP
1379	Tweet1379	User1379	3781	4839	Austria	PHP
1380	Tweet1380	User1380	2809	570	Sweden	Visual Basic
1381	Tweet1381	User1381	4450	356	Sweden	Java
1382	Tweet1382	User1382	3870	3508	Slovakia	JavaScript
1383	Tweet1383	User1383	4537	3757	Latvia	Obj C
1384	Tweet1384	User1384	4189	4356	Ireland	PHP
1385	Tweet1385	User1385	293	13	Latvia	C#
1386	Tweet1386	User1386	1277	4220	Sweden	C
1387	Tweet1387	User1387	2469	907	Denmark	PHP
1388	Tweet1388	User1388	3767	4259	Denmark	Ruby
1389	Tweet1389	User1389	982	3671	Slovakia	JavaScript
1390	Tweet1390	User1390	4642	2850	Sweden	Visual Basic
1391	Tweet1391	User1391	571	3925	Croatia	C++
1392	Tweet1392	User1392	2443	4195	Estonia	JavaScript
1393	Tweet1393	User1393	1200	4692	Netherlands	C#
1394	Tweet1394	User1394	1933	1043	Estonia	C#
1395	Tweet1395	User1395	2339	264	Latvia	Python
1396	Tweet1396	User1396	3406	826	Sweden	C
1397	Tweet1397	User1397	3126	2313	Slovakia	Java
1398	Tweet1398	User1398	115	1495	Sweden	C
1399	Tweet1399	User1399	1434	2697	Latvia	C++
1400	Tweet1400	User1400	2757	1967	Estonia	C
1401	Tweet1401	User1401	3133	3917	Hungary	Obj C
1402	Tweet1402	User1402	521	2825	Cyprus	C
1403	Tweet1403	User1403	3122	4665	Netherlands	Java
1404	Tweet1404	User1404	3061	679	Hungary	Visual Basic
1405	Tweet1405	User1405	3838	588	Sweden	C
1406	Tweet1406	User1406	454	210	Croatia	Python
1407	Tweet1407	User1407	4096	2558	Luxembourg	JavaScript
1408	Tweet1408	User1408	4815	4121	Spain	Obj C
1409	Tweet1409	User1409	1398	2438	Estonia	Scala
1410	Tweet1410	User1410	502	292	Belgium	Java
1411	Tweet1411	User1411	3985	2290	Slovenia	C#
1412	Tweet1412	User1412	322	1824	Germany	C++
1413	Tweet1413	User1413	2524	1000	Romania	PHP
1414	Tweet1414	User1414	2684	2002	Poland	Java
1415	Tweet1415	User1415	3538	3786	Portugal	Obj C
1416	Tweet1416	User1416	2130	2456	Spain	Obj C
1417	Tweet1417	User1417	2661	2294	France	Scala
1418	Tweet1418	User1418	1339	278	Ireland	Visual Basic
1419	Tweet1419	User1419	89	3295	Czech Republic	Python
1420	Tweet1420	User1420	1407	3255	Hungary	C
1421	Tweet1421	User1421	2449	1158	France	C
1422	Tweet1422	User1422	4940	2419	Lithuania	JavaScript
1423	Tweet1423	User1423	4400	892	Poland	C#
1424	Tweet1424	User1424	33	3747	Sweden	JavaScript
1425	Tweet1425	User1425	395	2494	Luxembourg	Scala
1426	Tweet1426	User1426	293	2956	Germany	PHP
1427	Tweet1427	User1427	954	3570	Slovakia	C#
1428	Tweet1428	User1428	2061	3213	United Kingdom	Obj C
1429	Tweet1429	User1429	1798	2803	Netherlands	JavaScript
1430	Tweet1430	User1430	381	3694	Poland	Scala
1431	Tweet1431	User1431	4983	3568	Luxembourg	JavaScript
1432	Tweet1432	User1432	4697	3008	Denmark	Ruby
1433	Tweet1433	User1433	832	834	Luxembourg	Ruby
1434	Tweet1434	User1434	4643	2919	Finland	Visual Basic
1435	Tweet1435	User1435	2509	4053	Austria	C#
1436	Tweet1436	User1436	4984	2280	Spain	Ruby
1437	Tweet1437	User1437	3607	3460	Czech Republic	C#
1438	Tweet1438	User1438	1654	4692	Latvia	Visual Basic
1439	Tweet1439	User1439	704	3022	Ireland	Obj C
1440	Tweet1440	User1440	2021	4436	Malta	C
1441	Tweet1441	User1441	3400	3309	Cyprus	PHP
1442	Tweet1442	User1442	4997	4199	Hungary	Scala
1443	Tweet1443	User1443	3369	1745	Latvia	PHP
1444	Tweet1444	User1444	2032	321	Malta	Scala
1445	Tweet1445	User1445	4852	3993	Latvia	Python
1446	Tweet1446	User1446	1248	1684	Poland	JavaScript
1447	Tweet1447	User1447	2003	2702	Luxembourg	C++
1448	Tweet1448	User1448	3736	21	Cyprus	C#
1449	Tweet1449	User1449	1147	1860	Italy	Ruby
1450	Tweet1450	User1450	4104	2782	France	C++
1451	Tweet1451	User1451	954	1338	Ireland	Visual Basic
1452	Tweet1452	User1452	4192	1865	Latvia	Visual Basic
1453	Tweet1453	User1453	3283	724	Italy	Obj C
1454	Tweet1454	User1454	1801	721	Croatia	JavaScript
1455	Tweet1455	User1455	1225	3941	Germany	Java
1456	Tweet1456	User1456	633	4422	Romania	C#
1457	Tweet1457	User1457	2420	2713	Bulgaria	Obj C
1458	Tweet1458	User1458	1835	2572	Slovenia	Visual Basic
1459	Tweet1459	User1459	629	2138	Finland	C
1460	Tweet1460	User1460	14	311	France	PHP
1461	Tweet1461	User1461	641	3477	Belgium	Scala
1462	Tweet1462	User1462	359	2477	Malta	C
1463	Tweet1463	User1463	3249	1474	Greece	Python
1464	Tweet1464	User1464	4324	3166	Spain	Java
1465	Tweet1465	User1465	1439	4182	Hungary	C++
1466	Tweet1466	User1466	3260	4530	Sweden	C++
1467	Tweet1467	User1467	221	271	Cyprus	Scala
1468	Tweet1468	User1468	173	675	Finland	PHP
1469	Tweet1469	User1469	4870	891	Latvia	C++
1470	Tweet1470	User1470	225	3398	Italy	Java
1471	Tweet1471	User1471	3147	1929	Hungary	JavaScript
1472	Tweet1472	User1472	2216	1673	Romania	C
1473	Tweet1473	User1473	2183	1895	Lithuania	Ruby
1474	Tweet1474	User1474	3300	2099	United Kingdom	C++
1475	Tweet1475	User1475	1344	774	Romania	C#
1476	Tweet1476	User1476	186	1036	Germany	Ruby
1477	Tweet1477	User1477	364	1754	Greece	Ruby
1478	Tweet1478	User1478	3998	160	Ireland	Python
1479	Tweet1479	User1479	1074	391	Poland	C++
1480	Tweet1480	User1480	1940	3161	Italy	Java
1481	Tweet1481	User1481	811	2738	Sweden	JavaScript
1482	Tweet1482	User1482	255	2594	Italy	Python
1483	Tweet1483	User1483	3504	362	France	Ruby
1484	Tweet1484	User1484	3219	4344	Croatia	C++
1485	Tweet1485	User1485	374	783	United Kingdom	Ruby
1486	Tweet1486	User1486	4560	4260	Cyprus	PHP
1487	Tweet1487	User1487	326	4859	Denmark	C#
1488	Tweet1488	User1488	3790	1353	France	Python
1489	Tweet1489	User1489	379	3840	Sweden	PHP
1490	Tweet1490	User1490	3029	1384	Austria	PHP
1491	Tweet1491	User1491	1094	1479	Luxembourg	Ruby
1492	Tweet1492	User1492	2611	2398	Greece	C++
1493	Tweet1493	User1493	3925	3642	Sweden	JavaScript
1494	Tweet1494	User1494	2909	3237	France	Visual Basic
1495	Tweet1495	User1495	1846	4977	Lithuania	C#
1496	Tweet1496	User1496	4453	3602	Hungary	Java
1497	Tweet1497	User1497	4851	208	Croatia	C
1498	Tweet1498	User1498	4054	703	Romania	Ruby
1499	Tweet1499	User1499	4985	1722	Finland	Java
1500	Tweet1500	User1500	1882	3549	France	Python
1501	Tweet1501	User1501	1088	1272	Austria	C++
1502	Tweet1502	User1502	3768	241	Portugal	Obj C
1503	Tweet1503	User1503	2558	1314	Slovenia	Obj C
1504	Tweet1504	User1504	4849	436	Germany	JavaScript
1505	Tweet1505	User1505	1139	4312	Finland	Obj C
1506	Tweet1506	User1506	4257	3817	Greece	C#
1507	Tweet1507	User1507	2297	1304	Poland	C
1508	Tweet1508	User1508	546	3148	France	Visual Basic
1509	Tweet1509	User1509	4034	4084	Germany	Ruby
1510	Tweet1510	User1510	1876	1815	Slovakia	Ruby
1511	Tweet1511	User1511	3569	2535	Denmark	PHP
1512	Tweet1512	User1512	597	243	Slovakia	JavaScript
1513	Tweet1513	User1513	2447	775	Poland	C++
1514	Tweet1514	User1514	792	370	Czech Republic	Python
1515	Tweet1515	User1515	2651	4574	Romania	Visual Basic
1516	Tweet1516	User1516	2236	4254	Czech Republic	Python
1517	Tweet1517	User1517	4354	4937	Hungary	C
1518	Tweet1518	User1518	2291	471	Malta	Scala
1519	Tweet1519	User1519	4292	1809	Slovenia	Ruby
1520	Tweet1520	User1520	1895	368	Czech Republic	C++
1521	Tweet1521	User1521	1843	3325	Finland	Scala
1522	Tweet1522	User1522	2603	3463	Lithuania	JavaScript
1523	Tweet1523	User1523	302	3579	Poland	Java
1524	Tweet1524	User1524	384	3462	Greece	JavaScript
1525	Tweet1525	User1525	4588	3034	Germany	Visual Basic
1526	Tweet1526	User1526	2959	4109	Czech Republic	Python
1527	Tweet1527	User1527	1733	1138	Luxembourg	C#
1528	Tweet1528	User1528	4349	1935	Malta	Ruby
1529	Tweet1529	User1529	1501	2374	Romania	JavaScript
1530	Tweet1530	User1530	3925	1507	United Kingdom	Visual Basic
1531	Tweet1531	User1531	2527	3993	Croatia	C
1532	Tweet1532	User1532	2812	3677	Austria	C#
1533	Tweet1533	User1533	2814	1633	Finland	Obj C
1534	Tweet1534	User1534	1025	3439	Hungary	C
1535	Tweet1535	User1535	420	907	Austria	Obj C
1536	Tweet1536	User1536	1244	362	Italy	C#
1537	Tweet1537	User1537	1155	2316	Italy	Python
1538	Tweet1538	User1538	3870	119	Latvia	C#
1539	Tweet1539	User1539	2489	1216	Portugal	C#
1540	Tweet1540	User1540	143	4456	Croatia	JavaScript
1541	Tweet1541	User1541	4879	2330	Luxembourg	C#
1542	Tweet1542	User1542	3389	2891	Finland	Scala
1543	Tweet1543	User1543	1530	766	Lithuania	Ruby
1544	Tweet1544	User1544	1369	3831	Luxembourg	Scala
1545	Tweet1545	User1545	2748	162	Portugal	Java
1546	Tweet1546	User1546	4919	1996	Slovenia	Scala
1547	Tweet1547	User1547	1225	3179	Finland	JavaScript
1548	Tweet1548	User1548	2422	3964	Sweden	C++
1549	Tweet1549	User1549	2524	3017	Spain	Ruby
1550	Tweet1550	User1550	1899	3029	Czech Republic	C++
1551	Tweet1551	User1551	3618	183	Slovakia	Obj C
1552	Tweet1552	User1552	3515	1167	Romania	Python
1553	Tweet1553	User1553	273	3138	Romania	C++
1554	Tweet1554	User1554	4332	2367	Luxembourg	C#
1555	Tweet1555	User1555	4197	3710	Cyprus	PHP
1556	Tweet1556	User1556	3269	2962	Austria	C#
1557	Tweet1557	User1557	2682	4630	Cyprus	C#
1558	Tweet1558	User1558	714	3537	France	C
1559	Tweet1559	User1559	4030	4089	France	C#
1560	Tweet1560	User1560	1380	714	Netherlands	C++
1561	Tweet1561	User1561	3093	2549	Ireland	JavaScript
1562	Tweet1562	User1562	3919	1936	Germany	PHP
1563	Tweet1563	User1563	379	4084	Hungary	Java
1564	Tweet1564	User1564	1335	363	Finland	C#
1565	Tweet1565	User1565	4107	2647	Czech Republic	C
1566	Tweet1566	User1566	1682	4474	Portugal	C++
1567	Tweet1567	User1567	3201	567	Spain	C
1568	Tweet1568	User1568	4619	4555	Lithuania	PHP
1569	Tweet1569	User1569	4261	2184	Luxembourg	Obj C
1570	Tweet1570	User1570	1122	3230	Luxembourg	C
1571	Tweet1571	User1571	1738	2507	Netherlands	Ruby
1572	Tweet1572	User1572	3763	4840	Slovakia	JavaScript
1573	Tweet1573	User1573	4670	3682	United Kingdom	C++
1574	Tweet1574	User1574	4720	3835	Malta	Scala
1575	Tweet1575	User1575	281	448	Germany	Obj C
1576	Tweet1576	User1576	4956	564	France	JavaScript
1577	Tweet1577	User1577	965	2057	Poland	Visual Basic
1578	Tweet1578	User1578	2861	2780	Luxembourg	Visual Basic
1579	Tweet1579	User1579	1877	1824	Latvia	Scala
1580	Tweet1580	User1580	1457	4786	Germany	Ruby
1581	Tweet1581	User1581	330	3320	Estonia	C
1582	Tweet1582	User1582	2008	446	Slovenia	Ruby
1583	Tweet1583	User1583	3748	4005	Finland	Scala
1584	Tweet1584	User1584	4067	3115	Hungary	PHP
1585	Tweet1585	User1585	1296	2858	Estonia	JavaScript
1586	Tweet1586	User1586	3849	3785	Estonia	C#
1587	Tweet1587	User1587	4519	4357	Netherlands	JavaScript
1588	Tweet1588	User1588	3978	3274	Bulgaria	Visual Basic
1589	Tweet1589	User1589	4387	2788	Portugal	C++
1590	Tweet1590	User1590	4478	4193	Sweden	Ruby
1591	Tweet1591	User1591	3781	1914	Bulgaria	Visual Basic
1592	Tweet1592	User1592	1842	2516	Malta	C#
1593	Tweet1593	User1593	317	2220	Ireland	C#
1594	Tweet1594	User1594	3463	2905	Hungary	C#
1595	Tweet1595	User1595	1640	105	Cyprus	Scala
1596	Tweet1596	User1596	4676	1751	Sweden	Scala
1597	Tweet1597	User1597	1957	4613	United Kingdom	C++
1598	Tweet1598	User1598	4937	483	Spain	JavaScript
1599	Tweet1599	User1599	2579	1247	Italy	Obj C
1600	Tweet1600	User1600	5	4530	Ireland	JavaScript
1601	Tweet1601	User1601	4989	308	Denmark	C
1602	Tweet1602	User1602	1947	4726	Sweden	C#
1603	Tweet1603	User1603	900	809	Malta	Java
1604	Tweet1604	User1604	2966	3711	Croatia	Obj C
1605	Tweet1605	User1605	4328	1649	Cyprus	C++
1606	Tweet1606	User1606	2713	4420	Slovenia	Obj C
1607	Tweet1607	User1607	3591	721	United Kingdom	JavaScript
1608	Tweet1608	User1608	2665	888	Finland	Ruby
1609	Tweet1609	User1609	655	4428	Austria	C#
1610	Tweet1610	User1610	1150	4641	Greece	Obj C
1611	Tweet1611	User1611	2338	3848	Netherlands	PHP
1612	Tweet1612	User1612	909	2931	Poland	Java
1613	Tweet1613	User1613	1462	4539	Germany	PHP
1614	Tweet1614	User1614	3885	3436	Spain	Visual Basic
1615	Tweet1615	User1615	3025	82	France	Visual Basic
1616	Tweet1616	User1616	369	3658	Ireland	JavaScript
1617	Tweet1617	User1617	449	338	Greece	Visual Basic
1618	Tweet1618	User1618	4477	2294	Slovenia	C#
1619	Tweet1619	User1619	4703	2652	Belgium	Visual Basic
1620	Tweet1620	User1620	909	3666	Bulgaria	C#
1621	Tweet1621	User1621	2322	1106	Belgium	Ruby
1622	Tweet1622	User1622	1426	1365	Lithuania	JavaScript
1623	Tweet1623	User1623	360	1004	Ireland	C++
1624	Tweet1624	User1624	1097	4785	Spain	C++
1625	Tweet1625	User1625	1211	1083	United Kingdom	C#
1626	Tweet1626	User1626	2209	3082	Austria	JavaScript
1627	Tweet1627	User1627	3434	1448	Netherlands	C#
1628	Tweet1628	User1628	1040	1066	Cyprus	Obj C
1629	Tweet1629	User1629	1146	4376	Netherlands	Java
1630	Tweet1630	User1630	2360	262	Cyprus	Java
1631	Tweet1631	User1631	454	3868	Portugal	PHP
1632	Tweet1632	User1632	1171	2510	Latvia	C++
1633	Tweet1633	User1633	2612	3296	France	Scala
1634	Tweet1634	User1634	4745	3969	Netherlands	C++
1635	Tweet1635	User1635	4974	1921	Finland	Ruby
1636	Tweet1636	User1636	3264	709	Greece	C
1637	Tweet1637	User1637	412	2611	Germany	C++
1638	Tweet1638	User1638	2888	962	Sweden	C
1639	Tweet1639	User1639	1492	2353	Portugal	Scala
1640	Tweet1640	User1640	853	4489	France	Scala
1641	Tweet1641	User1641	518	4209	Greece	Visual Basic
1642	Tweet1642	User1642	4971	2953	Slovenia	C#
1643	Tweet1643	User1643	3354	4423	Romania	PHP
1644	Tweet1644	User1644	1735	2086	Lithuania	C#
1645	Tweet1645	User1645	2000	1024	Greece	Java
1646	Tweet1646	User1646	459	1557	Ireland	C++
1647	Tweet1647	User1647	3304	3630	Luxembourg	Obj C
1648	Tweet1648	User1648	3884	1818	Luxembourg	Scala
1649	Tweet1649	User1649	3657	4964	Lithuania	Python
1650	Tweet1650	User1650	1355	3408	Cyprus	Ruby
1651	Tweet1651	User1651	3894	4387	Croatia	PHP
1652	Tweet1652	User1652	4381	3614	Denmark	Visual Basic
1653	Tweet1653	User1653	3771	4582	Austria	JavaScript
1654	Tweet1654	User1654	4190	3093	Ireland	C#
1655	Tweet1655	User1655	4538	1867	Cyprus	Java
1656	Tweet1656	User1656	4967	2872	Finland	C#
1657	Tweet1657	User1657	363	4663	Sweden	Visual Basic
1658	Tweet1658	User1658	4295	4521	Bulgaria	C
1659	Tweet1659	User1659	2962	275	Austria	JavaScript
1660	Tweet1660	User1660	1728	987	Romania	Python
1661	Tweet1661	User1661	2079	3507	Romania	Scala
1662	Tweet1662	User1662	27	4724	Lithuania	Obj C
1663	Tweet1663	User1663	1757	4688	Spain	C++
1664	Tweet1664	User1664	3351	569	Netherlands	JavaScript
1665	Tweet1665	User1665	4859	1733	Luxembourg	Visual Basic
1666	Tweet1666	User1666	3630	3649	Belgium	Scala
1667	Tweet1667	User1667	4640	1258	Germany	Scala
1668	Tweet1668	User1668	4165	3236	Austria	Visual Basic
1669	Tweet1669	User1669	521	4791	Portugal	C#
1670	Tweet1670	User1670	4526	3544	Denmark	Ruby
1671	Tweet1671	User1671	3539	2078	Lithuania	Python
1672	Tweet1672	User1672	4446	4152	Netherlands	Ruby
1673	Tweet1673	User1673	292	4391	Czech Republic	C++
1674	Tweet1674	User1674	1581	2799	Latvia	Obj C
1675	Tweet1675	User1675	3646	434	Latvia	Python
1676	Tweet1676	User1676	1682	4814	Romania	Ruby
1677	Tweet1677	User1677	1906	1724	Poland	C#
1678	Tweet1678	User1678	3060	82	Netherlands	Scala
1679	Tweet1679	User1679	2814	1986	Greece	JavaScript
1680	Tweet1680	User1680	665	1731	Greece	Java
1681	Tweet1681	User1681	2567	397	Belgium	C
1682	Tweet1682	User1682	3969	1423	Greece	Python
1683	Tweet1683	User1683	2358	2473	Luxembourg	Visual Basic
1684	Tweet1684	User1684	4438	4827	Czech Republic	C++
1685	Tweet1685	User1685	555	4817	Belgium	C#
1686	Tweet1686	User1686	645	429	Belgium	C
1687	Tweet1687	User1687	3171	280	Cyprus	C++
1688	Tweet1688	User1688	2443	1227	Latvia	Scala
1689	Tweet1689	User1689	3120	3137	Sweden	C
1690	Tweet1690	User1690	2420	4263	Italy	Ruby
1691	Tweet1691	User1691	948	3787	Croatia	C#
1692	Tweet1692	User1692	1936	440	Malta	Python
1693	Tweet1693	User1693	2957	1140	Belgium	Python
1694	Tweet1694	User1694	1348	360	Lithuania	Obj C
1695	Tweet1695	User1695	244	2359	Bulgaria	C++
1696	Tweet1696	User1696	1816	2483	France	PHP
1697	Tweet1697	User1697	3222	1550	Slovakia	Scala
1698	Tweet1698	User1698	1627	690	Portugal	C++
1699	Tweet1699	User1699	49	1570	Cyprus	Scala
1700	Tweet1700	User1700	259	3638	Greece	C#
1701	Tweet1701	User1701	834	1134	Denmark	Visual Basic
1702	Tweet1702	User1702	1439	2255	Slovakia	Visual Basic
1703	Tweet1703	User1703	591	4180	Romania	JavaScript
1704	Tweet1704	User1704	2121	1748	Spain	Java
1705	Tweet1705	User1705	3719	428	Latvia	PHP
1706	Tweet1706	User1706	406	2512	Greece	JavaScript
1707	Tweet1707	User1707	1926	2014	Germany	Scala
1708	Tweet1708	User1708	3597	3454	Czech Republic	Obj C
1709	Tweet1709	User1709	14	3425	Slovenia	Scala
1710	Tweet1710	User1710	3663	740	Denmark	JavaScript
1711	Tweet1711	User1711	4827	2246	Austria	C#
1712	Tweet1712	User1712	1131	1752	Latvia	Python
1713	Tweet1713	User1713	1522	3010	Lithuania	Java
1714	Tweet1714	User1714	2182	1530	Croatia	C
1715	Tweet1715	User1715	3517	1458	Luxembourg	Python
1716	Tweet1716	User1716	4506	2202	Malta	C#
1717	Tweet1717	User1717	4509	3650	Lithuania	PHP
1718	Tweet1718	User1718	2529	2376	Slovakia	PHP
1719	Tweet1719	User1719	2648	1919	Portugal	PHP
1720	Tweet1720	User1720	494	2378	Hungary	Ruby
1721	Tweet1721	User1721	2947	1652	Austria	Visual Basic
1722	Tweet1722	User1722	3079	3221	Bulgaria	Obj C
1723	Tweet1723	User1723	4193	1	Lithuania	PHP
1724	Tweet1724	User1724	2204	2272	Latvia	Visual Basic
1725	Tweet1725	User1725	3222	815	Malta	Ruby
1726	Tweet1726	User1726	452	2722	France	C
1727	Tweet1727	User1727	3964	4495	Sweden	C
1728	Tweet1728	User1728	1749	3342	Romania	Java
1729	Tweet1729	User1729	4933	1257	Lithuania	PHP
1730	Tweet1730	User1730	2415	3043	France	Ruby
1731	Tweet1731	User1731	3066	870	Latvia	Ruby
1732	Tweet1732	User1732	4263	3856	Netherlands	JavaScript
1733	Tweet1733	User1733	3804	2001	Hungary	JavaScript
1734	Tweet1734	User1734	4015	2229	Sweden	Python
1735	Tweet1735	User1735	1931	923	Sweden	Obj C
1736	Tweet1736	User1736	4380	288	Austria	Ruby
1737	Tweet1737	User1737	3946	3646	Romania	Scala
1738	Tweet1738	User1738	2959	4888	Poland	C
1739	Tweet1739	User1739	4871	1969	Cyprus	C
1740	Tweet1740	User1740	2335	1509	Finland	C
1741	Tweet1741	User1741	3857	2846	Malta	JavaScript
1742	Tweet1742	User1742	2643	4967	Belgium	Obj C
1743	Tweet1743	User1743	4194	1221	Denmark	Java
1744	Tweet1744	User1744	977	3600	Latvia	Java
1745	Tweet1745	User1745	1582	4895	Belgium	Scala
1746	Tweet1746	User1746	2303	4986	Finland	Ruby
1747	Tweet1747	User1747	1282	3137	Croatia	C++
1748	Tweet1748	User1748	2686	2978	Croatia	Visual Basic
1749	Tweet1749	User1749	2921	4327	Spain	Obj C
1750	Tweet1750	User1750	1285	2704	France	C#
1751	Tweet1751	User1751	3871	731	Poland	PHP
1752	Tweet1752	User1752	639	663	Slovenia	C++
1753	Tweet1753	User1753	1707	673	Latvia	Obj C
1754	Tweet1754	User1754	2183	1693	Lithuania	C++
1755	Tweet1755	User1755	4038	78	Poland	PHP
1756	Tweet1756	User1756	62	4768	Spain	Java
1757	Tweet1757	User1757	4283	547	Lithuania	Obj C
1758	Tweet1758	User1758	3465	876	Czech Republic	Ruby
1759	Tweet1759	User1759	2541	4610	Italy	JavaScript
1760	Tweet1760	User1760	1434	3205	Romania	Scala
1761	Tweet1761	User1761	4559	943	Sweden	JavaScript
1762	Tweet1762	User1762	412	1062	Bulgaria	C
1763	Tweet1763	User1763	4402	572	Germany	C++
1764	Tweet1764	User1764	848	2520	Estonia	Scala
1765	Tweet1765	User1765	3443	2377	Belgium	Python
1766	Tweet1766	User1766	1645	4205	Estonia	Obj C
1767	Tweet1767	User1767	4629	3018	Cyprus	JavaScript
1768	Tweet1768	User1768	3746	2456	Estonia	Java
1769	Tweet1769	User1769	3243	4336	Italy	Scala
1770	Tweet1770	User1770	555	1507	Denmark	Java
1771	Tweet1771	User1771	738	906	United Kingdom	C#
1772	Tweet1772	User1772	940	3323	Austria	JavaScript
1773	Tweet1773	User1773	3	2924	Latvia	Scala
1774	Tweet1774	User1774	4080	4275	Bulgaria	Ruby
1775	Tweet1775	User1775	4246	3577	Lithuania	Java
1776	Tweet1776	User1776	1738	1617	Denmark	Ruby
1777	Tweet1777	User1777	2260	2926	Greece	Visual Basic
1778	Tweet1778	User1778	3122	2120	Slovakia	Scala
1779	Tweet1779	User1779	3769	929	Portugal	Ruby
1780	Tweet1780	User1780	1391	1504	Portugal	Python
1781	Tweet1781	User1781	2502	1116	Denmark	Obj C
1782	Tweet1782	User1782	3615	1424	Croatia	JavaScript
1783	Tweet1783	User1783	4134	4469	Czech Republic	PHP
1784	Tweet1784	User1784	1293	1337	Hungary	Obj C
1785	Tweet1785	User1785	4794	2009	Netherlands	Java
1786	Tweet1786	User1786	2637	4318	Bulgaria	Obj C
1787	Tweet1787	User1787	4179	1653	Netherlands	Visual Basic
1788	Tweet1788	User1788	3237	2959	Finland	Python
1789	Tweet1789	User1789	1286	4414	Latvia	Ruby
1790	Tweet1790	User1790	2583	3835	Belgium	Python
1791	Tweet1791	User1791	1625	2831	Finland	Java
1792	Tweet1792	User1792	519	2123	Germany	C
1793	Tweet1793	User1793	4427	352	Sweden	Visual Basic
1794	Tweet1794	User1794	4191	1643	Sweden	Ruby
1795	Tweet1795	User1795	388	3384	Netherlands	Ruby
1796	Tweet1796	User1796	1627	2913	Germany	C++
1797	Tweet1797	User1797	1024	4350	Austria	C
1798	Tweet1798	User1798	721	3928	Finland	Ruby
1799	Tweet1799	User1799	3769	1520	Netherlands	PHP
1800	Tweet1800	User1800	1102	1291	Cyprus	JavaScript
1801	Tweet1801	User1801	1529	830	Denmark	Obj C
1802	Tweet1802	User1802	4747	96	Lithuania	Visual Basic
1803	Tweet1803	User1803	3773	1866	Belgium	JavaScript
1804	Tweet1804	User1804	3760	161	Denmark	Scala
1805	Tweet1805	User1805	4392	1288	Denmark	C++
1806	Tweet1806	User1806	3821	3579	Malta	Scala
1807	Tweet1807	User1807	215	3088	Portugal	Java
1808	Tweet1808	User1808	1172	1749	Germany	Visual Basic
1809	Tweet1809	User1809	4913	1823	Spain	PHP
1810	Tweet1810	User1810	2964	6	Netherlands	PHP
1811	Tweet1811	User1811	2016	2284	Czech Republic	PHP
1812	Tweet1812	User1812	169	2976	Romania	PHP
1813	Tweet1813	User1813	993	563	Luxembourg	Ruby
1814	Tweet1814	User1814	3628	1898	Croatia	C++
1815	Tweet1815	User1815	4826	2479	United Kingdom	JavaScript
1816	Tweet1816	User1816	3891	3160	Belgium	PHP
1817	Tweet1817	User1817	2174	4432	Portugal	Python
1818	Tweet1818	User1818	4499	1593	France	C
1819	Tweet1819	User1819	1419	3593	Croatia	JavaScript
1820	Tweet1820	User1820	3961	3452	Slovakia	Scala
1821	Tweet1821	User1821	528	312	Latvia	C
1822	Tweet1822	User1822	4274	4786	Germany	C
1823	Tweet1823	User1823	3614	3835	Slovakia	C++
1824	Tweet1824	User1824	379	1831	Croatia	C++
1825	Tweet1825	User1825	2435	108	Poland	Scala
1826	Tweet1826	User1826	3801	4979	Netherlands	JavaScript
1827	Tweet1827	User1827	758	781	Malta	Scala
1828	Tweet1828	User1828	4579	4952	Sweden	Java
1829	Tweet1829	User1829	3513	3503	Bulgaria	PHP
1830	Tweet1830	User1830	3044	4595	Estonia	C#
1831	Tweet1831	User1831	1795	2301	Romania	PHP
1832	Tweet1832	User1832	4674	2261	Estonia	Ruby
1833	Tweet1833	User1833	1640	1703	Romania	Obj C
1834	Tweet1834	User1834	2455	2797	Cyprus	Python
1835	Tweet1835	User1835	942	4111	Lithuania	C++
1836	Tweet1836	User1836	13	60	Czech Republic	PHP
1837	Tweet1837	User1837	4225	1892	Latvia	Ruby
1838	Tweet1838	User1838	4738	1112	Austria	C
1839	Tweet1839	User1839	2002	1994	Belgium	C
1840	Tweet1840	User1840	71	3746	Slovakia	Scala
1841	Tweet1841	User1841	3076	3870	Romania	Python
1842	Tweet1842	User1842	2530	4418	Sweden	Visual Basic
1843	Tweet1843	User1843	2598	3731	Czech Republic	C
1844	Tweet1844	User1844	555	2318	Spain	Obj C
1845	Tweet1845	User1845	3400	611	Latvia	JavaScript
1846	Tweet1846	User1846	2534	1083	Austria	Ruby
1847	Tweet1847	User1847	1830	3722	Lithuania	PHP
1848	Tweet1848	User1848	1889	4035	Greece	PHP
1849	Tweet1849	User1849	1760	3343	Lithuania	Ruby
1850	Tweet1850	User1850	395	4119	Portugal	Java
1851	Tweet1851	User1851	4721	1864	Cyprus	C#
1852	Tweet1852	User1852	2342	4253	Portugal	C++
1853	Tweet1853	User1853	3461	1048	Ireland	C++
1854	Tweet1854	User1854	2185	978	Poland	C++
1855	Tweet1855	User1855	467	3503	Lithuania	Obj C
1856	Tweet1856	User1856	4091	4369	Latvia	Java
1857	Tweet1857	User1857	3018	69	Luxembourg	PHP
1858	Tweet1858	User1858	2902	2082	Croatia	Visual Basic
1859	Tweet1859	User1859	2154	2746	Netherlands	Java
1860	Tweet1860	User1860	86	2398	Romania	PHP
1861	Tweet1861	User1861	2394	2996	Belgium	Scala
1862	Tweet1862	User1862	1101	2127	Czech Republic	C
1863	Tweet1863	User1863	872	1227	Ireland	Ruby
1864	Tweet1864	User1864	4469	2928	Poland	Scala
1865	Tweet1865	User1865	4904	4983	France	Python
1866	Tweet1866	User1866	4089	337	Czech Republic	Java
1867	Tweet1867	User1867	1239	2050	Czech Republic	C++
1868	Tweet1868	User1868	4796	3223	Poland	C#
1869	Tweet1869	User1869	1226	417	Germany	C++
1870	Tweet1870	User1870	2540	156	Lithuania	C++
1871	Tweet1871	User1871	239	1959	Slovenia	Ruby
1872	Tweet1872	User1872	4366	1545	Luxembourg	Visual Basic
1873	Tweet1873	User1873	4682	4709	France	C
1874	Tweet1874	User1874	1136	1262	Ireland	C#
1875	Tweet1875	User1875	3246	4262	Belgium	C++
1876	Tweet1876	User1876	1312	381	Slovenia	C
1877	Tweet1877	User1877	915	514	Italy	Visual Basic
1878	Tweet1878	User1878	1789	448	Slovenia	Python
1879	Tweet1879	User1879	3962	3190	Hungary	Scala
1880	Tweet1880	User1880	1130	677	Denmark	Ruby
1881	Tweet1881	User1881	1700	4602	United Kingdom	Ruby
1882	Tweet1882	User1882	838	1972	Latvia	C++
1883	Tweet1883	User1883	249	3562	Poland	PHP
1884	Tweet1884	User1884	4974	3065	United Kingdom	Python
1885	Tweet1885	User1885	3024	1203	Austria	Obj C
1886	Tweet1886	User1886	4535	2669	Slovenia	Visual Basic
1887	Tweet1887	User1887	4605	3956	Cyprus	Scala
1888	Tweet1888	User1888	967	2345	Slovakia	Python
1889	Tweet1889	User1889	4787	609	Slovenia	Java
1890	Tweet1890	User1890	4284	974	United Kingdom	C#
1891	Tweet1891	User1891	3717	4253	Spain	Visual Basic
1892	Tweet1892	User1892	2713	4237	Slovakia	Python
1893	Tweet1893	User1893	4655	812	Lithuania	JavaScript
1894	Tweet1894	User1894	4297	4079	Poland	Ruby
1895	Tweet1895	User1895	399	1035	Ireland	C++
1896	Tweet1896	User1896	2407	866	Italy	Java
1897	Tweet1897	User1897	4774	2289	Luxembourg	C
1898	Tweet1898	User1898	4921	3662	Hungary	C
1899	Tweet1899	User1899	2329	281	United Kingdom	Obj C
1900	Tweet1900	User1900	370	3477	Poland	Java
1901	Tweet1901	User1901	3750	3280	Slovenia	Python
1902	Tweet1902	User1902	1340	1377	Hungary	Obj C
1903	Tweet1903	User1903	2212	270	Croatia	Python
1904	Tweet1904	User1904	4046	1599	Czech Republic	Visual Basic
1905	Tweet1905	User1905	241	3284	Denmark	Visual Basic
1906	Tweet1906	User1906	3999	4317	Poland	C
1907	Tweet1907	User1907	4059	4239	Poland	Scala
1908	Tweet1908	User1908	3998	2106	Poland	JavaScript
1909	Tweet1909	User1909	4633	1554	Denmark	JavaScript
1910	Tweet1910	User1910	2287	1343	Denmark	Ruby
1911	Tweet1911	User1911	18	4039	Belgium	Python
1912	Tweet1912	User1912	4518	4080	Bulgaria	Java
1913	Tweet1913	User1913	3611	3928	Luxembourg	C#
1914	Tweet1914	User1914	4570	4174	Latvia	Scala
1915	Tweet1915	User1915	1420	2594	Portugal	C
1916	Tweet1916	User1916	3720	1491	United Kingdom	C
1917	Tweet1917	User1917	2096	2015	Finland	PHP
1918	Tweet1918	User1918	2770	1616	Slovakia	Scala
1919	Tweet1919	User1919	515	593	Luxembourg	Python
1920	Tweet1920	User1920	3042	3622	Malta	C
1921	Tweet1921	User1921	2752	1791	Latvia	Java
1922	Tweet1922	User1922	264	1249	United Kingdom	Ruby
1923	Tweet1923	User1923	1926	3578	Germany	C
1924	Tweet1924	User1924	4490	1123	United Kingdom	C++
1925	Tweet1925	User1925	467	4539	Italy	Python
1926	Tweet1926	User1926	1111	3299	Austria	Java
1927	Tweet1927	User1927	1782	1983	Italy	Scala
1928	Tweet1928	User1928	2021	205	Portugal	Java
1929	Tweet1929	User1929	2249	2335	Netherlands	C++
1930	Tweet1930	User1930	258	2886	Cyprus	C
1931	Tweet1931	User1931	4196	683	Ireland	Ruby
1932	Tweet1932	User1932	1183	551	Sweden	Python
1933	Tweet1933	User1933	891	1132	Cyprus	C
1934	Tweet1934	User1934	813	1620	United Kingdom	C++
1935	Tweet1935	User1935	4009	2746	Finland	Obj C
1936	Tweet1936	User1936	4678	4516	Bulgaria	C
1937	Tweet1937	User1937	4820	4622	Estonia	C#
1938	Tweet1938	User1938	492	51	Belgium	C#
1939	Tweet1939	User1939	1689	3351	Cyprus	JavaScript
1940	Tweet1940	User1940	4889	1871	Estonia	Python
1941	Tweet1941	User1941	1113	1957	Estonia	Java
1942	Tweet1942	User1942	3945	2882	Bulgaria	C++
1943	Tweet1943	User1943	1158	1684	Finland	Python
1944	Tweet1944	User1944	173	4391	Belgium	C#
1945	Tweet1945	User1945	4348	4189	Luxembourg	PHP
1946	Tweet1946	User1946	4261	2920	Sweden	C++
1947	Tweet1947	User1947	4206	806	Ireland	Ruby
1948	Tweet1948	User1948	831	2416	Latvia	Scala
1949	Tweet1949	User1949	4952	1003	Portugal	C
1950	Tweet1950	User1950	1062	487	Malta	Visual Basic
1951	Tweet1951	User1951	1186	3783	Germany	Java
1952	Tweet1952	User1952	3693	179	Hungary	C
1953	Tweet1953	User1953	4852	3100	Germany	PHP
1954	Tweet1954	User1954	2957	4409	Hungary	C
1955	Tweet1955	User1955	2688	2716	Estonia	Java
1956	Tweet1956	User1956	2654	4914	Hungary	C#
1957	Tweet1957	User1957	1973	3603	Portugal	Visual Basic
1958	Tweet1958	User1958	2631	2577	Bulgaria	Scala
1959	Tweet1959	User1959	1104	4036	Estonia	Java
1960	Tweet1960	User1960	1929	1020	Czech Republic	Ruby
1961	Tweet1961	User1961	3235	4023	Netherlands	C++
1962	Tweet1962	User1962	3450	4280	Latvia	Obj C
1963	Tweet1963	User1963	2503	4357	Lithuania	C#
1964	Tweet1964	User1964	285	4093	Austria	Visual Basic
1965	Tweet1965	User1965	3511	71	Estonia	Ruby
1966	Tweet1966	User1966	1068	2009	Latvia	C++
1967	Tweet1967	User1967	291	4388	Estonia	C#
1968	Tweet1968	User1968	4671	3251	Croatia	Python
1969	Tweet1969	User1969	2463	4468	Ireland	C++
1970	Tweet1970	User1970	1610	666	Czech Republic	Scala
1971	Tweet1971	User1971	3294	4484	Germany	Python
1972	Tweet1972	User1972	1556	2015	Slovakia	C#
1973	Tweet1973	User1973	2592	979	Germany	Ruby
1974	Tweet1974	User1974	1492	3441	United Kingdom	Java
1975	Tweet1975	User1975	1741	726	France	Ruby
1976	Tweet1976	User1976	1739	1948	Romania	Python
1977	Tweet1977	User1977	2170	4775	Germany	Ruby
1978	Tweet1978	User1978	4211	2278	Bulgaria	JavaScript
1979	Tweet1979	User1979	2979	3996	Czech Republic	Python
1980	Tweet1980	User1980	1345	1576	Germany	Scala
1981	Tweet1981	User1981	3345	228	Portugal	JavaScript
1982	Tweet1982	User1982	2967	118	Latvia	C
1983	Tweet1983	User1983	1195	1052	Austria	Visual Basic
1984	Tweet1984	User1984	4080	3224	Lithuania	C++
1985	Tweet1985	User1985	3729	3159	Portugal	Visual Basic
1986	Tweet1986	User1986	2724	4453	France	Ruby
1987	Tweet1987	User1987	2774	3800	Slovakia	Obj C
1988	Tweet1988	User1988	2710	140	Cyprus	C#
1989	Tweet1989	User1989	4570	648	Cyprus	JavaScript
1990	Tweet1990	User1990	1344	1347	Spain	Python
1991	Tweet1991	User1991	2393	905	Latvia	C#
1992	Tweet1992	User1992	3028	4566	Denmark	Java
1993	Tweet1993	User1993	25	3197	Malta	C++
1994	Tweet1994	User1994	3781	2817	Estonia	Ruby
1995	Tweet1995	User1995	4234	2632	Slovakia	Python
1996	Tweet1996	User1996	1977	4379	France	C++
1997	Tweet1997	User1997	3029	4300	United Kingdom	Scala
1998	Tweet1998	User1998	727	3039	Malta	Java
1999	Tweet1999	User1999	4192	1023	Romania	Scala
2000	Tweet2000	User2000	576	4707	Lithuania	Visual Basic
2001	Tweet2001	User2001	1611	1890	Luxembourg	Java
2002	Tweet2002	User2002	4826	464	Finland	Java
2003	Tweet2003	User2003	4936	4230	Netherlands	C++
2004	Tweet2004	User2004	1180	1888	Lithuania	Java
2005	Tweet2005	User2005	1478	1671	Malta	Python
2006	Tweet2006	User2006	1330	4518	Germany	Java
2007	Tweet2007	User2007	931	3935	Sweden	Ruby
2008	Tweet2008	User2008	1911	4204	Croatia	C#
2009	Tweet2009	User2009	1370	3637	Ireland	C
2010	Tweet2010	User2010	4661	1781	France	Ruby
2011	Tweet2011	User2011	2182	3358	Croatia	Python
2012	Tweet2012	User2012	4256	680	Ireland	Visual Basic
2013	Tweet2013	User2013	64	2723	Estonia	Python
2014	Tweet2014	User2014	4492	2020	Portugal	Java
2015	Tweet2015	User2015	167	1780	Slovakia	C++
2016	Tweet2016	User2016	584	631	Croatia	Obj C
2017	Tweet2017	User2017	4951	38	Slovakia	Java
2018	Tweet2018	User2018	1124	888	Finland	Ruby
2019	Tweet2019	User2019	1105	3176	Austria	Ruby
2020	Tweet2020	User2020	4443	3640	Sweden	Ruby
2021	Tweet2021	User2021	4173	2464	Luxembourg	JavaScript
2022	Tweet2022	User2022	4469	1135	Luxembourg	Scala
2023	Tweet2023	User2023	2122	887	Cyprus	Ruby
2024	Tweet2024	User2024	3314	240	France	JavaScript
2025	Tweet2025	User2025	521	417	Ireland	Java
2026	Tweet2026	User2026	4731	3850	Netherlands	JavaScript
2027	Tweet2027	User2027	3194	2009	Bulgaria	Scala
2028	Tweet2028	User2028	3444	4245	Portugal	PHP
2029	Tweet2029	User2029	230	3505	Cyprus	PHP
2030	Tweet2030	User2030	392	4289	France	PHP
2031	Tweet2031	User2031	301	1872	Hungary	Ruby
2032	Tweet2032	User2032	2799	3309	Italy	Ruby
2033	Tweet2033	User2033	106	1764	Luxembourg	Ruby
2034	Tweet2034	User2034	456	1451	Malta	Ruby
2035	Tweet2035	User2035	2632	3604	Estonia	PHP
2036	Tweet2036	User2036	15	3137	Estonia	C++
2037	Tweet2037	User2037	1759	1918	United Kingdom	JavaScript
2038	Tweet2038	User2038	3086	1312	Portugal	JavaScript
2039	Tweet2039	User2039	298	2828	France	PHP
2040	Tweet2040	User2040	1880	3912	Germany	Java
2041	Tweet2041	User2041	3942	2700	Sweden	C
2042	Tweet2042	User2042	3536	1164	Czech Republic	JavaScript
2043	Tweet2043	User2043	2718	1896	Croatia	Python
2044	Tweet2044	User2044	511	3970	Portugal	C++
2045	Tweet2045	User2045	3601	914	Denmark	Visual Basic
2046	Tweet2046	User2046	2102	4666	Romania	JavaScript
2047	Tweet2047	User2047	4360	1118	Estonia	Obj C
2048	Tweet2048	User2048	601	2573	Spain	Scala
2049	Tweet2049	User2049	235	4651	Latvia	Python
2050	Tweet2050	User2050	1420	3034	Romania	Obj C
2051	Tweet2051	User2051	3092	864	Sweden	PHP
2052	Tweet2052	User2052	1774	2237	France	JavaScript
2053	Tweet2053	User2053	2064	2574	Spain	C
2054	Tweet2054	User2054	4963	1523	Hungary	C++
2055	Tweet2055	User2055	1295	3474	Luxembourg	JavaScript
2056	Tweet2056	User2056	4121	909	Italy	Visual Basic
2057	Tweet2057	User2057	4088	2481	Netherlands	Scala
2058	Tweet2058	User2058	4092	3815	Croatia	Scala
2059	Tweet2059	User2059	2459	1121	Belgium	Python
2060	Tweet2060	User2060	3872	1818	Czech Republic	C++
2061	Tweet2061	User2061	4430	2086	Luxembourg	Python
2062	Tweet2062	User2062	15	1540	Slovenia	C#
2063	Tweet2063	User2063	3717	3142	Finland	Scala
2064	Tweet2064	User2064	4622	2965	Germany	Ruby
2065	Tweet2065	User2065	2833	3099	Belgium	PHP
2066	Tweet2066	User2066	4751	214	Latvia	C#
2067	Tweet2067	User2067	1804	333	Slovakia	Obj C
2068	Tweet2068	User2068	4902	4849	Austria	JavaScript
2069	Tweet2069	User2069	7	966	Denmark	PHP
2070	Tweet2070	User2070	1823	194	Slovakia	Python
2071	Tweet2071	User2071	2925	4750	United Kingdom	Python
2072	Tweet2072	User2072	4825	4746	Estonia	Scala
2073	Tweet2073	User2073	130	2746	Hungary	Python
2074	Tweet2074	User2074	3970	2021	Latvia	Python
2075	Tweet2075	User2075	3959	2845	Sweden	JavaScript
2076	Tweet2076	User2076	797	3662	Sweden	Java
2077	Tweet2077	User2077	2125	3638	Bulgaria	Ruby
2078	Tweet2078	User2078	616	1173	Romania	Java
2079	Tweet2079	User2079	3020	150	Hungary	Java
2080	Tweet2080	User2080	1804	4345	France	Java
2081	Tweet2081	User2081	4374	3061	Portugal	Obj C
2082	Tweet2082	User2082	3974	1701	Portugal	C
2083	Tweet2083	User2083	4695	4932	Hungary	C
2084	Tweet2084	User2084	4071	2717	Spain	Obj C
2085	Tweet2085	User2085	1258	752	Slovenia	JavaScript
2086	Tweet2086	User2086	654	2424	Latvia	C
2087	Tweet2087	User2087	324	4873	Portugal	Ruby
2088	Tweet2088	User2088	2559	3984	Slovakia	C#
2089	Tweet2089	User2089	2209	1315	Lithuania	Visual Basic
2090	Tweet2090	User2090	1818	818	Denmark	Java
2091	Tweet2091	User2091	4532	2731	Belgium	JavaScript
2092	Tweet2092	User2092	601	3978	Bulgaria	Obj C
2093	Tweet2093	User2093	516	417	France	Ruby
2094	Tweet2094	User2094	838	1312	Slovakia	Obj C
2095	Tweet2095	User2095	1449	3249	Germany	Java
2096	Tweet2096	User2096	3801	2582	Hungary	PHP
2097	Tweet2097	User2097	902	2928	Slovenia	C
2098	Tweet2098	User2098	2496	2937	United Kingdom	Ruby
2099	Tweet2099	User2099	3901	3637	Greece	Obj C
2100	Tweet2100	User2100	4280	1010	Slovenia	Ruby
2101	Tweet2101	User2101	3168	4249	Croatia	C
2102	Tweet2102	User2102	4409	4856	Cyprus	C
2103	Tweet2103	User2103	1523	3838	Denmark	Visual Basic
2104	Tweet2104	User2104	1405	4326	Malta	Java
2105	Tweet2105	User2105	58	520	Estonia	Visual Basic
2106	Tweet2106	User2106	826	3397	Romania	PHP
2107	Tweet2107	User2107	3174	4918	Denmark	Java
2108	Tweet2108	User2108	1401	547	France	Ruby
2109	Tweet2109	User2109	1993	2139	Denmark	PHP
2110	Tweet2110	User2110	952	1687	Cyprus	Visual Basic
2111	Tweet2111	User2111	917	2219	Cyprus	Visual Basic
2112	Tweet2112	User2112	4393	3709	Sweden	JavaScript
2113	Tweet2113	User2113	3324	1595	Poland	C
2114	Tweet2114	User2114	4173	844	Poland	Obj C
2115	Tweet2115	User2115	532	1515	Estonia	Obj C
2116	Tweet2116	User2116	63	3264	Sweden	Java
2117	Tweet2117	User2117	4639	4391	Ireland	C++
2118	Tweet2118	User2118	4099	2284	France	Python
2119	Tweet2119	User2119	4709	853	Belgium	JavaScript
2120	Tweet2120	User2120	2672	4668	Estonia	C#
2121	Tweet2121	User2121	1223	1810	Slovakia	JavaScript
2122	Tweet2122	User2122	4091	566	Greece	JavaScript
2123	Tweet2123	User2123	4862	1423	Finland	Obj C
2124	Tweet2124	User2124	2063	3861	France	Ruby
2125	Tweet2125	User2125	1957	4942	Slovenia	Java
2126	Tweet2126	User2126	1148	3511	Spain	Scala
2127	Tweet2127	User2127	1320	210	Austria	Java
2128	Tweet2128	User2128	2273	4655	Croatia	PHP
2129	Tweet2129	User2129	15	1797	Hungary	C
2130	Tweet2130	User2130	779	1744	Malta	C++
2131	Tweet2131	User2131	2390	3850	Slovenia	C#
2132	Tweet2132	User2132	2807	3944	Finland	Ruby
2133	Tweet2133	User2133	3638	2979	Croatia	C#
2134	Tweet2134	User2134	756	740	Luxembourg	Python
2135	Tweet2135	User2135	2685	1810	Slovakia	PHP
2136	Tweet2136	User2136	1301	423	Bulgaria	Python
2137	Tweet2137	User2137	4242	3019	Estonia	C
2138	Tweet2138	User2138	418	1467	Netherlands	Java
2139	Tweet2139	User2139	4748	1586	Bulgaria	PHP
2140	Tweet2140	User2140	424	2898	Slovenia	C
2141	Tweet2141	User2141	478	784	Romania	Java
2142	Tweet2142	User2142	2795	4019	Bulgaria	C#
2143	Tweet2143	User2143	1529	1338	Romania	JavaScript
2144	Tweet2144	User2144	1277	133	Lithuania	Obj C
2145	Tweet2145	User2145	4842	492	Slovenia	Visual Basic
2146	Tweet2146	User2146	4534	2726	Bulgaria	Visual Basic
2147	Tweet2147	User2147	2154	2932	Denmark	Scala
2148	Tweet2148	User2148	4699	2331	Netherlands	JavaScript
2149	Tweet2149	User2149	2948	1	Croatia	C
2150	Tweet2150	User2150	2766	4509	Czech Republic	Scala
2151	Tweet2151	User2151	1086	670	Hungary	PHP
2152	Tweet2152	User2152	4496	2347	Spain	Python
2153	Tweet2153	User2153	617	2446	Lithuania	C++
2154	Tweet2154	User2154	4960	2934	Italy	C
2155	Tweet2155	User2155	159	3594	Malta	C++
2156	Tweet2156	User2156	1152	4894	United Kingdom	Python
2157	Tweet2157	User2157	2563	314	Romania	C++
2158	Tweet2158	User2158	2117	4834	Sweden	Visual Basic
2159	Tweet2159	User2159	3927	68	Netherlands	C#
2160	Tweet2160	User2160	665	2787	Malta	Python
2161	Tweet2161	User2161	1734	4697	Austria	Visual Basic
2162	Tweet2162	User2162	219	4155	Germany	JavaScript
2163	Tweet2163	User2163	2426	2180	Luxembourg	Scala
2164	Tweet2164	User2164	2389	1374	Lithuania	C
2165	Tweet2165	User2165	4887	2708	Austria	C++
2166	Tweet2166	User2166	4073	25	Latvia	Ruby
2167	Tweet2167	User2167	4461	3406	Luxembourg	C
2168	Tweet2168	User2168	900	842	Slovakia	PHP
2169	Tweet2169	User2169	1404	4317	Romania	C++
2170	Tweet2170	User2170	3074	1586	Cyprus	C++
2171	Tweet2171	User2171	2519	3127	Ireland	Ruby
2172	Tweet2172	User2172	1188	1304	Germany	PHP
2173	Tweet2173	User2173	4109	4540	Portugal	Python
2174	Tweet2174	User2174	2298	3308	Finland	C
2175	Tweet2175	User2175	4453	4729	Cyprus	Python
2176	Tweet2176	User2176	4058	4309	Ireland	Scala
2177	Tweet2177	User2177	1992	1103	Bulgaria	JavaScript
2178	Tweet2178	User2178	3146	4704	United Kingdom	Scala
2179	Tweet2179	User2179	3857	1310	Germany	Scala
2180	Tweet2180	User2180	3030	321	Finland	Obj C
2181	Tweet2181	User2181	3385	2219	Bulgaria	Scala
2182	Tweet2182	User2182	4373	3688	United Kingdom	Visual Basic
2183	Tweet2183	User2183	4808	2792	Netherlands	Obj C
2184	Tweet2184	User2184	1792	1423	Luxembourg	PHP
2185	Tweet2185	User2185	1391	335	Italy	PHP
2186	Tweet2186	User2186	4111	4482	Czech Republic	JavaScript
2187	Tweet2187	User2187	1146	1616	Germany	C++
2188	Tweet2188	User2188	1375	1803	Czech Republic	C#
2189	Tweet2189	User2189	2958	256	Greece	Java
2190	Tweet2190	User2190	440	1888	Bulgaria	Scala
2191	Tweet2191	User2191	4197	2547	Denmark	C
2192	Tweet2192	User2192	1246	3216	Netherlands	C++
2193	Tweet2193	User2193	3742	1938	Spain	Visual Basic
2194	Tweet2194	User2194	2112	16	Italy	C++
2195	Tweet2195	User2195	3184	308	Lithuania	JavaScript
2196	Tweet2196	User2196	2178	3129	United Kingdom	PHP
2197	Tweet2197	User2197	247	2442	Malta	JavaScript
2198	Tweet2198	User2198	2374	480	Estonia	Java
2199	Tweet2199	User2199	2077	772	Italy	PHP
2200	Tweet2200	User2200	4673	3405	Croatia	Ruby
2201	Tweet2201	User2201	1399	4162	Czech Republic	Java
2202	Tweet2202	User2202	1412	3982	Slovenia	Java
2203	Tweet2203	User2203	1573	4749	Portugal	Obj C
2204	Tweet2204	User2204	4198	3900	France	Obj C
2205	Tweet2205	User2205	71	943	Germany	C
2206	Tweet2206	User2206	884	3930	Spain	C++
2207	Tweet2207	User2207	1226	2992	Latvia	PHP
2208	Tweet2208	User2208	4990	154	Italy	Scala
2209	Tweet2209	User2209	1670	4378	Greece	Python
2210	Tweet2210	User2210	3719	3089	Lithuania	C
2211	Tweet2211	User2211	2735	612	Slovenia	C#
2212	Tweet2212	User2212	1486	4615	Luxembourg	C#
2213	Tweet2213	User2213	3034	919	Slovenia	C
2214	Tweet2214	User2214	1837	3657	Lithuania	Visual Basic
2215	Tweet2215	User2215	3844	508	Latvia	Obj C
2216	Tweet2216	User2216	1318	3800	Netherlands	Scala
2217	Tweet2217	User2217	2261	323	Sweden	C
2218	Tweet2218	User2218	3227	3780	Belgium	C#
2219	Tweet2219	User2219	2066	499	Austria	PHP
2220	Tweet2220	User2220	4771	31	Slovenia	Obj C
2221	Tweet2221	User2221	3939	4849	Slovakia	Ruby
2222	Tweet2222	User2222	1730	4069	Denmark	C
2223	Tweet2223	User2223	239	211	Luxembourg	Ruby
2224	Tweet2224	User2224	1197	3298	Austria	C
2225	Tweet2225	User2225	3813	1377	Bulgaria	JavaScript
2226	Tweet2226	User2226	1867	4821	Cyprus	Scala
2227	Tweet2227	User2227	4328	2237	Greece	Ruby
2228	Tweet2228	User2228	1301	1943	Cyprus	C
2229	Tweet2229	User2229	564	2731	Malta	Python
2230	Tweet2230	User2230	3164	676	Latvia	Ruby
2231	Tweet2231	User2231	3625	3634	Czech Republic	Visual Basic
2232	Tweet2232	User2232	1709	1427	Romania	Java
2233	Tweet2233	User2233	4724	4724	Latvia	PHP
2234	Tweet2234	User2234	4096	1284	Romania	Java
2235	Tweet2235	User2235	3020	582	Germany	C++
2236	Tweet2236	User2236	1565	3618	Bulgaria	Java
2237	Tweet2237	User2237	999	1482	Denmark	C++
2238	Tweet2238	User2238	3772	93	Italy	Ruby
2239	Tweet2239	User2239	1938	2677	Romania	Java
2240	Tweet2240	User2240	136	448	Latvia	Obj C
2241	Tweet2241	User2241	764	4412	Spain	Java
2242	Tweet2242	User2242	2352	4197	Romania	PHP
2243	Tweet2243	User2243	4603	490	France	C#
2244	Tweet2244	User2244	3927	680	Slovenia	C
2245	Tweet2245	User2245	2934	114	Belgium	Visual Basic
2246	Tweet2246	User2246	261	1951	Netherlands	Ruby
2247	Tweet2247	User2247	4210	4783	Belgium	PHP
2248	Tweet2248	User2248	4877	457	Greece	PHP
2249	Tweet2249	User2249	2745	2299	Poland	Obj C
2250	Tweet2250	User2250	1073	4931	Malta	PHP
2251	Tweet2251	User2251	4289	4894	Slovenia	Ruby
2252	Tweet2252	User2252	159	3234	Croatia	Scala
2253	Tweet2253	User2253	453	185	Spain	JavaScript
2254	Tweet2254	User2254	3864	1494	France	Visual Basic
2255	Tweet2255	User2255	264	721	Poland	Scala
2256	Tweet2256	User2256	2369	4585	Finland	PHP
2257	Tweet2257	User2257	3217	3179	Greece	Obj C
2258	Tweet2258	User2258	1210	2349	Denmark	Scala
2259	Tweet2259	User2259	392	3326	Netherlands	Java
2260	Tweet2260	User2260	1194	390	Malta	Ruby
2261	Tweet2261	User2261	4919	561	Slovenia	C#
2262	Tweet2262	User2262	2099	4015	United Kingdom	Scala
2263	Tweet2263	User2263	915	4124	Spain	C#
2264	Tweet2264	User2264	1197	2106	Malta	PHP
2265	Tweet2265	User2265	894	3589	Spain	Python
2266	Tweet2266	User2266	4113	1930	Belgium	Python
2267	Tweet2267	User2267	4509	594	Germany	PHP
2268	Tweet2268	User2268	3299	2891	Bulgaria	JavaScript
2269	Tweet2269	User2269	3719	3513	Cyprus	C#
2270	Tweet2270	User2270	2448	4212	Malta	PHP
2271	Tweet2271	User2271	3859	3936	Slovakia	C++
2272	Tweet2272	User2272	117	2449	Malta	Scala
2274	Tweet2274	User2274	2808	4356	Croatia	C#
2275	Tweet2275	User2275	241	626	Malta	Visual Basic
2276	Tweet2276	User2276	501	2942	Austria	Visual Basic
2277	Tweet2277	User2277	2668	1213	Sweden	C
2278	Tweet2278	User2278	1696	2427	Italy	C
2279	Tweet2279	User2279	362	2955	Estonia	Obj C
2280	Tweet2280	User2280	1708	4412	Malta	C
2281	Tweet2281	User2281	211	3945	Luxembourg	Scala
2282	Tweet2282	User2282	2242	1725	Croatia	JavaScript
2283	Tweet2283	User2283	4983	2130	Czech Republic	C
2284	Tweet2284	User2284	1667	608	France	Scala
2285	Tweet2285	User2285	131	3479	Austria	Obj C
2286	Tweet2286	User2286	2449	2232	United Kingdom	Obj C
2287	Tweet2287	User2287	180	2036	Denmark	PHP
2288	Tweet2288	User2288	137	2949	Malta	Obj C
2289	Tweet2289	User2289	1978	1331	Czech Republic	PHP
2290	Tweet2290	User2290	1353	2453	Luxembourg	Scala
2291	Tweet2291	User2291	512	4708	Slovakia	Visual Basic
2292	Tweet2292	User2292	2323	4855	Romania	C++
2293	Tweet2293	User2293	4959	1371	Italy	C
2294	Tweet2294	User2294	3535	2255	Finland	Java
2295	Tweet2295	User2295	4472	4911	Italy	Python
2296	Tweet2296	User2296	184	4823	Italy	Java
2297	Tweet2297	User2297	3162	3476	Austria	C#
2298	Tweet2298	User2298	676	2306	Estonia	Ruby
2299	Tweet2299	User2299	4162	3802	Luxembourg	Visual Basic
2300	Tweet2300	User2300	2079	2593	Portugal	Visual Basic
2301	Tweet2301	User2301	1341	1098	Lithuania	C
2302	Tweet2302	User2302	116	1934	Finland	JavaScript
2303	Tweet2303	User2303	2378	1955	Germany	Ruby
2304	Tweet2304	User2304	1097	1902	Slovakia	JavaScript
2305	Tweet2305	User2305	4058	312	Belgium	JavaScript
2306	Tweet2306	User2306	289	3913	Poland	PHP
2307	Tweet2307	User2307	3564	3110	Italy	JavaScript
2308	Tweet2308	User2308	3504	564	France	Python
2309	Tweet2309	User2309	4502	122	Netherlands	C++
2310	Tweet2310	User2310	2437	3807	Hungary	Scala
2311	Tweet2311	User2311	4402	1043	Spain	Python
2312	Tweet2312	User2312	4938	4167	Cyprus	Obj C
2313	Tweet2313	User2313	3961	2890	Hungary	PHP
2314	Tweet2314	User2314	863	2871	Belgium	C
2315	Tweet2315	User2315	1124	3992	Sweden	Python
2316	Tweet2316	User2316	1020	3954	Slovakia	C++
2317	Tweet2317	User2317	4044	3421	Greece	PHP
2318	Tweet2318	User2318	1184	4844	Poland	C++
2319	Tweet2319	User2319	1086	2490	Latvia	JavaScript
2320	Tweet2320	User2320	810	4484	Portugal	C#
2321	Tweet2321	User2321	847	1941	Italy	Java
2322	Tweet2322	User2322	2355	657	Bulgaria	PHP
2323	Tweet2323	User2323	2808	1956	Cyprus	Visual Basic
2324	Tweet2324	User2324	880	3939	France	Scala
2325	Tweet2325	User2325	1335	3766	Slovakia	Scala
2326	Tweet2326	User2326	4940	4553	Bulgaria	Obj C
2327	Tweet2327	User2327	2734	4626	France	C++
2328	Tweet2328	User2328	1225	1741	Ireland	JavaScript
2329	Tweet2329	User2329	2771	997	Finland	Ruby
2330	Tweet2330	User2330	1353	4211	Netherlands	PHP
2331	Tweet2331	User2331	529	939	Belgium	JavaScript
2332	Tweet2332	User2332	4504	3623	Spain	Scala
2333	Tweet2333	User2333	2584	3820	Belgium	Python
2334	Tweet2334	User2334	1295	3345	Ireland	Python
2335	Tweet2335	User2335	262	4426	Poland	Ruby
2336	Tweet2336	User2336	3036	3824	Austria	PHP
2337	Tweet2337	User2337	4163	982	Greece	Ruby
2338	Tweet2338	User2338	2280	4773	Estonia	Python
2339	Tweet2339	User2339	4665	114	Sweden	Scala
2340	Tweet2340	User2340	2285	691	Slovenia	C#
2341	Tweet2341	User2341	503	251	Netherlands	C++
2342	Tweet2342	User2342	1952	731	Austria	PHP
2343	Tweet2343	User2343	418	4368	Croatia	Ruby
2344	Tweet2344	User2344	4313	3242	Slovenia	C
2345	Tweet2345	User2345	1056	4975	Italy	C
2346	Tweet2346	User2346	1466	3213	Slovenia	Visual Basic
2347	Tweet2347	User2347	1712	4225	Ireland	Visual Basic
2348	Tweet2348	User2348	179	2961	Slovakia	Obj C
2349	Tweet2349	User2349	4984	880	Lithuania	Scala
2350	Tweet2350	User2350	4168	535	Romania	PHP
2351	Tweet2351	User2351	1879	4724	Czech Republic	Python
2352	Tweet2352	User2352	2693	4469	Lithuania	Obj C
2353	Tweet2353	User2353	2328	4622	France	PHP
2354	Tweet2354	User2354	3106	3556	Slovenia	JavaScript
2355	Tweet2355	User2355	2009	3770	Slovenia	PHP
2356	Tweet2356	User2356	3716	4604	Austria	C#
2357	Tweet2357	User2357	380	3227	Slovakia	Visual Basic
2358	Tweet2358	User2358	2488	4074	Luxembourg	Obj C
2359	Tweet2359	User2359	3563	774	Poland	Python
2360	Tweet2360	User2360	924	25	Romania	C#
2361	Tweet2361	User2361	50	1515	Slovenia	JavaScript
2362	Tweet2362	User2362	729	2287	Slovakia	Scala
2363	Tweet2363	User2363	1314	4337	Greece	Visual Basic
2364	Tweet2364	User2364	67	3878	Cyprus	Visual Basic
2365	Tweet2365	User2365	1665	1004	Italy	C++
2366	Tweet2366	User2366	2444	3299	Slovakia	Scala
2367	Tweet2367	User2367	3296	4969	Denmark	Visual Basic
2368	Tweet2368	User2368	2140	1804	Austria	Python
2369	Tweet2369	User2369	2015	1069	Slovakia	C
2370	Tweet2370	User2370	3944	1639	United Kingdom	Obj C
2371	Tweet2371	User2371	993	2602	Italy	C++
2372	Tweet2372	User2372	188	4150	Cyprus	Java
2373	Tweet2373	User2373	4293	2924	France	PHP
2374	Tweet2374	User2374	2106	447	Hungary	Scala
2375	Tweet2375	User2375	115	1986	Italy	Python
2376	Tweet2376	User2376	3198	1973	Belgium	Ruby
2377	Tweet2377	User2377	2871	4832	Romania	C#
2378	Tweet2378	User2378	2108	1301	Estonia	C++
2379	Tweet2379	User2379	4963	2251	Hungary	Scala
2380	Tweet2380	User2380	15	3875	Slovenia	Visual Basic
2381	Tweet2381	User2381	2784	3272	United Kingdom	PHP
2382	Tweet2382	User2382	4064	3000	Lithuania	C
2383	Tweet2383	User2383	95	3960	Hungary	C
2384	Tweet2384	User2384	459	2624	Finland	Ruby
2385	Tweet2385	User2385	1822	699	Estonia	Visual Basic
2386	Tweet2386	User2386	1109	4221	Germany	C++
2387	Tweet2387	User2387	4403	1149	Austria	JavaScript
2388	Tweet2388	User2388	3378	2273	Bulgaria	Obj C
2389	Tweet2389	User2389	3694	4987	Cyprus	JavaScript
2390	Tweet2390	User2390	3439	3436	Poland	C++
2391	Tweet2391	User2391	3595	3238	Italy	JavaScript
2392	Tweet2392	User2392	3979	1936	Greece	Scala
2393	Tweet2393	User2393	1258	3807	Greece	Ruby
2394	Tweet2394	User2394	3322	119	Slovenia	Visual Basic
2395	Tweet2395	User2395	1376	2475	Greece	JavaScript
2396	Tweet2396	User2396	2531	1061	Spain	Java
2397	Tweet2397	User2397	1591	4185	Luxembourg	PHP
2398	Tweet2398	User2398	4186	415	Austria	JavaScript
2399	Tweet2399	User2399	3419	2358	Cyprus	C#
2400	Tweet2400	User2400	2705	1649	Estonia	C++
2401	Tweet2401	User2401	4790	966	Spain	Ruby
2402	Tweet2402	User2402	4230	1593	Poland	PHP
2403	Tweet2403	User2403	543	4882	Ireland	Python
2404	Tweet2404	User2404	3568	4827	Bulgaria	C#
2405	Tweet2405	User2405	113	3480	France	PHP
2406	Tweet2406	User2406	255	2258	Malta	Java
2407	Tweet2407	User2407	1414	3269	Italy	JavaScript
2408	Tweet2408	User2408	4051	2859	Malta	Scala
2409	Tweet2409	User2409	4056	461	Slovakia	Obj C
2410	Tweet2410	User2410	1954	13	United Kingdom	Visual Basic
2411	Tweet2411	User2411	1248	4705	Romania	Scala
2412	Tweet2412	User2412	3561	2863	United Kingdom	Python
2413	Tweet2413	User2413	792	1051	Hungary	PHP
2414	Tweet2414	User2414	3117	4962	Luxembourg	Visual Basic
2415	Tweet2415	User2415	162	3489	Croatia	PHP
2416	Tweet2416	User2416	1124	1438	Ireland	Scala
2417	Tweet2417	User2417	2786	38	United Kingdom	PHP
2418	Tweet2418	User2418	2259	188	Germany	C#
2419	Tweet2419	User2419	2137	1414	Hungary	Ruby
2420	Tweet2420	User2420	4509	982	Slovakia	Java
2421	Tweet2421	User2421	1718	3472	Austria	C
2422	Tweet2422	User2422	1987	2838	Finland	Visual Basic
2423	Tweet2423	User2423	1853	3745	Portugal	C
2424	Tweet2424	User2424	4958	2594	Latvia	C#
2425	Tweet2425	User2425	4214	2801	United Kingdom	Ruby
2426	Tweet2426	User2426	1388	630	Estonia	Java
2427	Tweet2427	User2427	4862	3315	Croatia	C
2428	Tweet2428	User2428	988	4456	Germany	Scala
2429	Tweet2429	User2429	2985	597	Slovenia	Java
2430	Tweet2430	User2430	1318	3755	Italy	Ruby
2431	Tweet2431	User2431	3931	3230	Malta	Ruby
2432	Tweet2432	User2432	4662	2306	Slovenia	PHP
2433	Tweet2433	User2433	1908	4309	Finland	Python
2434	Tweet2434	User2434	1095	4616	Finland	C
2435	Tweet2435	User2435	1763	4827	Croatia	C
2436	Tweet2436	User2436	962	3746	Latvia	Python
2437	Tweet2437	User2437	2990	3515	Denmark	Python
2438	Tweet2438	User2438	3729	3646	Italy	JavaScript
2439	Tweet2439	User2439	4810	4205	Greece	JavaScript
2440	Tweet2440	User2440	4670	774	Romania	Scala
2441	Tweet2441	User2441	3397	4638	Croatia	Ruby
2442	Tweet2442	User2442	3700	1196	Poland	Obj C
2443	Tweet2443	User2443	3080	185	Belgium	C#
2444	Tweet2444	User2444	2958	4058	Bulgaria	Java
2445	Tweet2445	User2445	3085	679	Estonia	Visual Basic
2446	Tweet2446	User2446	203	4188	Sweden	Java
2447	Tweet2447	User2447	1257	432	Czech Republic	C
2448	Tweet2448	User2448	4781	1374	Italy	Obj C
2449	Tweet2449	User2449	917	788	Italy	Visual Basic
2450	Tweet2450	User2450	4640	2963	Romania	Scala
2451	Tweet2451	User2451	1634	940	Luxembourg	Ruby
2452	Tweet2452	User2452	2334	1913	Croatia	JavaScript
2453	Tweet2453	User2453	2133	2982	Spain	C
2454	Tweet2454	User2454	108	1545	Cyprus	Obj C
2455	Tweet2455	User2455	4507	4907	United Kingdom	Python
2456	Tweet2456	User2456	2791	2934	Italy	JavaScript
2457	Tweet2457	User2457	4714	4486	Germany	Python
2458	Tweet2458	User2458	3864	4362	Czech Republic	C#
2459	Tweet2459	User2459	1305	4483	Latvia	Ruby
2460	Tweet2460	User2460	659	1814	Belgium	Java
2461	Tweet2461	User2461	3240	680	Germany	C#
2462	Tweet2462	User2462	3882	3267	Romania	Ruby
2463	Tweet2463	User2463	336	4996	Bulgaria	PHP
2464	Tweet2464	User2464	2122	1284	Netherlands	C#
2465	Tweet2465	User2465	639	2512	Croatia	C#
2466	Tweet2466	User2466	2424	3989	Slovakia	C#
2467	Tweet2467	User2467	508	4744	Malta	C
2468	Tweet2468	User2468	1918	187	Slovenia	Python
2469	Tweet2469	User2469	1719	4539	Finland	Obj C
2470	Tweet2470	User2470	668	807	Luxembourg	Visual Basic
2471	Tweet2471	User2471	2599	4927	Austria	Obj C
2472	Tweet2472	User2472	4643	4089	Italy	Scala
2473	Tweet2473	User2473	418	2782	Netherlands	Ruby
2474	Tweet2474	User2474	1087	1227	Estonia	JavaScript
2475	Tweet2475	User2475	902	431	France	Visual Basic
2476	Tweet2476	User2476	1905	3449	Sweden	PHP
2477	Tweet2477	User2477	1634	3949	Austria	C
2478	Tweet2478	User2478	557	4119	Netherlands	Scala
2479	Tweet2479	User2479	1766	1104	Ireland	C
2480	Tweet2480	User2480	4174	697	Greece	C
2481	Tweet2481	User2481	4363	4962	Spain	C#
2482	Tweet2482	User2482	834	4967	Germany	PHP
2483	Tweet2483	User2483	3140	501	Denmark	Python
2484	Tweet2484	User2484	302	415	Portugal	C#
2485	Tweet2485	User2485	3771	3613	Slovakia	Visual Basic
2486	Tweet2486	User2486	3589	3450	Greece	Visual Basic
2487	Tweet2487	User2487	4101	1591	Hungary	C#
2488	Tweet2488	User2488	3827	147	Spain	C#
2489	Tweet2489	User2489	2733	4734	Greece	JavaScript
2490	Tweet2490	User2490	3078	4009	France	PHP
2491	Tweet2491	User2491	4482	2405	Hungary	PHP
2492	Tweet2492	User2492	1982	4422	Portugal	C
2493	Tweet2493	User2493	4652	4436	Austria	Java
2494	Tweet2494	User2494	4922	4521	Croatia	C++
2495	Tweet2495	User2495	1612	374	Latvia	C#
2496	Tweet2496	User2496	3489	2023	Lithuania	JavaScript
2497	Tweet2497	User2497	2056	1470	Latvia	Ruby
2498	Tweet2498	User2498	1135	30	Ireland	PHP
2499	Tweet2499	User2499	591	157	Finland	C++
2500	Tweet2500	User2500	760	3717	Greece	Visual Basic
2501	Tweet2501	User2501	4069	4194	Croatia	C#
2502	Tweet2502	User2502	2532	2777	Belgium	Python
2503	Tweet2503	User2503	2024	4787	Latvia	Python
2504	Tweet2504	User2504	1328	2091	Ireland	Java
2505	Tweet2505	User2505	3985	2433	Belgium	C#
2506	Tweet2506	User2506	2869	1881	Greece	Scala
2507	Tweet2507	User2507	3460	1911	Spain	Obj C
2508	Tweet2508	User2508	2057	3943	Bulgaria	C
2509	Tweet2509	User2509	2867	3454	Slovenia	Java
2510	Tweet2510	User2510	4664	2601	Italy	Scala
2511	Tweet2511	User2511	2310	372	Portugal	PHP
2512	Tweet2512	User2512	2253	1930	Portugal	Scala
2513	Tweet2513	User2513	4800	2751	Germany	Obj C
2514	Tweet2514	User2514	4750	3825	France	C++
2515	Tweet2515	User2515	4050	1907	Estonia	Python
2516	Tweet2516	User2516	2736	816	Estonia	Visual Basic
2517	Tweet2517	User2517	3405	3599	Malta	Obj C
2518	Tweet2518	User2518	4834	3200	Finland	Scala
2519	Tweet2519	User2519	4367	2168	Austria	C
2520	Tweet2520	User2520	1243	1672	Slovakia	Visual Basic
2521	Tweet2521	User2521	3108	1906	Portugal	C
2522	Tweet2522	User2522	1272	4342	Sweden	Scala
2523	Tweet2523	User2523	973	3603	Italy	Scala
2524	Tweet2524	User2524	1056	3811	Belgium	Python
2525	Tweet2525	User2525	691	1925	Romania	C#
2526	Tweet2526	User2526	3733	1457	Romania	C
2527	Tweet2527	User2527	2351	3748	Finland	Ruby
2528	Tweet2528	User2528	997	421	Czech Republic	Ruby
2529	Tweet2529	User2529	4532	47	Austria	Python
2530	Tweet2530	User2530	2306	3312	Portugal	Python
2531	Tweet2531	User2531	2147	3693	Lithuania	Visual Basic
2532	Tweet2532	User2532	472	1353	Romania	PHP
2533	Tweet2533	User2533	643	825	Belgium	C
2534	Tweet2534	User2534	216	1054	Sweden	C#
2535	Tweet2535	User2535	4192	1881	Portugal	Scala
2536	Tweet2536	User2536	509	4626	Italy	C
2537	Tweet2537	User2537	4149	4599	Ireland	C#
2538	Tweet2538	User2538	4065	139	Greece	Python
2539	Tweet2539	User2539	1922	4362	Austria	C#
2540	Tweet2540	User2540	1276	2286	Portugal	Ruby
2541	Tweet2541	User2541	1615	2898	Slovakia	Ruby
2542	Tweet2542	User2542	2888	4243	Slovenia	Scala
2543	Tweet2543	User2543	1749	2322	Latvia	PHP
2544	Tweet2544	User2544	4642	4487	Portugal	Visual Basic
2545	Tweet2545	User2545	3328	4394	Hungary	Ruby
2546	Tweet2546	User2546	2948	3745	Romania	C++
2547	Tweet2547	User2547	3708	3379	Czech Republic	C#
2548	Tweet2548	User2548	3521	3074	Bulgaria	Visual Basic
2549	Tweet2549	User2549	544	4354	Malta	Ruby
2550	Tweet2550	User2550	1618	4609	Cyprus	Ruby
2551	Tweet2551	User2551	4657	2301	Sweden	Ruby
2552	Tweet2552	User2552	3317	3320	Czech Republic	Obj C
2553	Tweet2553	User2553	2255	2619	Denmark	Ruby
2554	Tweet2554	User2554	1875	2631	Slovakia	Visual Basic
2555	Tweet2555	User2555	3627	1273	United Kingdom	Ruby
2556	Tweet2556	User2556	3103	1219	Czech Republic	Python
2557	Tweet2557	User2557	3687	1417	Bulgaria	JavaScript
2558	Tweet2558	User2558	2880	2590	Slovenia	PHP
2559	Tweet2559	User2559	3697	1384	Denmark	C#
2560	Tweet2560	User2560	4764	1387	Bulgaria	C#
2561	Tweet2561	User2561	769	1062	Luxembourg	Java
2562	Tweet2562	User2562	1395	2049	Greece	PHP
2563	Tweet2563	User2563	4370	3380	Netherlands	Java
2564	Tweet2564	User2564	2823	556	Bulgaria	Python
2565	Tweet2565	User2565	665	3583	Poland	C#
2566	Tweet2566	User2566	1766	1546	Lithuania	Java
2567	Tweet2567	User2567	4266	4345	Portugal	JavaScript
2568	Tweet2568	User2568	1160	3277	Ireland	C
2569	Tweet2569	User2569	1234	2892	Belgium	Obj C
2570	Tweet2570	User2570	510	3876	Denmark	C#
2571	Tweet2571	User2571	423	4353	Hungary	Python
2572	Tweet2572	User2572	1254	4528	Netherlands	C#
2573	Tweet2573	User2573	4679	4063	Cyprus	Java
2574	Tweet2574	User2574	2513	4856	Estonia	JavaScript
2575	Tweet2575	User2575	4552	3018	Finland	C++
2576	Tweet2576	User2576	342	2534	Belgium	Scala
2577	Tweet2577	User2577	1001	4762	Luxembourg	JavaScript
2578	Tweet2578	User2578	314	2705	Croatia	Scala
2579	Tweet2579	User2579	2751	4123	Spain	Visual Basic
2580	Tweet2580	User2580	4671	1764	Romania	Java
2581	Tweet2581	User2581	3411	2950	United Kingdom	Java
2582	Tweet2582	User2582	544	2765	Malta	Python
2583	Tweet2583	User2583	1261	2979	Denmark	Scala
2584	Tweet2584	User2584	996	2990	Poland	Obj C
2585	Tweet2585	User2585	2081	1280	Finland	Java
2586	Tweet2586	User2586	4388	577	United Kingdom	Scala
2587	Tweet2587	User2587	2356	4580	Latvia	Python
2588	Tweet2588	User2588	455	858	Lithuania	JavaScript
2589	Tweet2589	User2589	410	4359	United Kingdom	Obj C
2590	Tweet2590	User2590	2499	4002	Ireland	C
2591	Tweet2591	User2591	2139	3759	Slovenia	C
2592	Tweet2592	User2592	2272	976	Sweden	C++
2593	Tweet2593	User2593	2640	527	Denmark	Java
2594	Tweet2594	User2594	3801	4878	Portugal	Obj C
2595	Tweet2595	User2595	3001	4103	Cyprus	C++
2596	Tweet2596	User2596	4331	2764	Ireland	Visual Basic
2597	Tweet2597	User2597	4210	2394	Slovenia	C++
2598	Tweet2598	User2598	4454	4773	Hungary	Java
2599	Tweet2599	User2599	760	1108	Hungary	Python
2600	Tweet2600	User2600	1323	2777	Ireland	Visual Basic
2601	Tweet2601	User2601	4245	1539	Netherlands	Visual Basic
2602	Tweet2602	User2602	2540	3391	Czech Republic	C#
2603	Tweet2603	User2603	1153	2382	Italy	JavaScript
2604	Tweet2604	User2604	4608	809	Belgium	C++
2605	Tweet2605	User2605	4830	4118	Slovenia	Obj C
2606	Tweet2606	User2606	3320	632	Netherlands	Visual Basic
2607	Tweet2607	User2607	2308	3636	Bulgaria	Scala
2608	Tweet2608	User2608	4472	1544	Sweden	Obj C
2609	Tweet2609	User2609	551	4286	Germany	Python
2610	Tweet2610	User2610	3153	452	France	PHP
2611	Tweet2611	User2611	4820	2077	Netherlands	Ruby
2612	Tweet2612	User2612	4704	4916	Slovenia	Scala
2613	Tweet2613	User2613	3062	187	Latvia	JavaScript
2614	Tweet2614	User2614	2987	2704	Lithuania	C#
2615	Tweet2615	User2615	457	4950	Austria	C
2616	Tweet2616	User2616	36	2450	Czech Republic	Python
2617	Tweet2617	User2617	2121	1557	Slovakia	Visual Basic
2618	Tweet2618	User2618	51	1203	Ireland	Python
2619	Tweet2619	User2619	3356	306	France	C
2620	Tweet2620	User2620	2954	1143	Croatia	Python
2621	Tweet2621	User2621	1541	3230	Austria	Ruby
2622	Tweet2622	User2622	4021	4962	Denmark	Ruby
2623	Tweet2623	User2623	331	109	United Kingdom	JavaScript
2624	Tweet2624	User2624	4336	3433	Cyprus	Python
2625	Tweet2625	User2625	3076	1916	Cyprus	Visual Basic
2626	Tweet2626	User2626	4250	2995	Slovakia	Java
2627	Tweet2627	User2627	4146	190	Slovakia	Obj C
2628	Tweet2628	User2628	3040	4791	Malta	JavaScript
2629	Tweet2629	User2629	4553	4635	Hungary	Java
2630	Tweet2630	User2630	2442	3337	Bulgaria	C++
2631	Tweet2631	User2631	4344	2470	Finland	C++
2632	Tweet2632	User2632	4722	2203	Sweden	JavaScript
2633	Tweet2633	User2633	1407	3881	Luxembourg	JavaScript
2634	Tweet2634	User2634	4422	305	Netherlands	C++
2635	Tweet2635	User2635	632	4006	Cyprus	Java
2636	Tweet2636	User2636	1710	4057	Finland	Visual Basic
2637	Tweet2637	User2637	1501	612	Sweden	PHP
2638	Tweet2638	User2638	4638	3617	Netherlands	Java
2639	Tweet2639	User2639	3445	751	Estonia	PHP
2640	Tweet2640	User2640	623	2934	Malta	Python
2641	Tweet2641	User2641	3651	3931	Austria	JavaScript
2642	Tweet2642	User2642	4950	1008	Hungary	Java
2643	Tweet2643	User2643	155	488	Greece	Python
2644	Tweet2644	User2644	4421	45	Greece	Scala
2645	Tweet2645	User2645	658	3376	Czech Republic	PHP
2646	Tweet2646	User2646	4953	1664	Lithuania	Ruby
2647	Tweet2647	User2647	2363	1479	Greece	Obj C
2648	Tweet2648	User2648	1566	411	Cyprus	C
2649	Tweet2649	User2649	4987	766	Poland	JavaScript
2650	Tweet2650	User2650	1365	1836	Latvia	Java
2651	Tweet2651	User2651	4182	3698	Portugal	Obj C
2652	Tweet2652	User2652	179	1670	Germany	Obj C
2653	Tweet2653	User2653	3408	2032	Estonia	C#
2654	Tweet2654	User2654	1352	4261	Finland	Scala
2655	Tweet2655	User2655	1430	1168	Czech Republic	PHP
2656	Tweet2656	User2656	2297	2915	Estonia	Obj C
2657	Tweet2657	User2657	4211	4705	Luxembourg	Obj C
2658	Tweet2658	User2658	3873	2929	Latvia	C#
2659	Tweet2659	User2659	2015	3558	Belgium	C
2660	Tweet2660	User2660	3485	3721	Poland	C++
2661	Tweet2661	User2661	33	1937	Portugal	Java
2662	Tweet2662	User2662	3496	1091	Hungary	JavaScript
2663	Tweet2663	User2663	4863	1416	Hungary	Python
2664	Tweet2664	User2664	769	2480	United Kingdom	Python
2665	Tweet2665	User2665	2139	1333	Lithuania	Obj C
2666	Tweet2666	User2666	1034	3630	Greece	C#
2667	Tweet2667	User2667	3503	546	Netherlands	Java
2668	Tweet2668	User2668	2416	2625	Portugal	Scala
2669	Tweet2669	User2669	848	950	Czech Republic	C++
2670	Tweet2670	User2670	1995	4543	Denmark	Ruby
2671	Tweet2671	User2671	846	696	Latvia	PHP
2672	Tweet2672	User2672	4053	2313	Luxembourg	Scala
2673	Tweet2673	User2673	3822	4503	Romania	JavaScript
2674	Tweet2674	User2674	287	808	Finland	Visual Basic
2675	Tweet2675	User2675	4522	3427	Ireland	Ruby
2676	Tweet2676	User2676	2199	4689	France	Java
2677	Tweet2677	User2677	3919	901	Netherlands	C++
2678	Tweet2678	User2678	1075	1061	Estonia	C++
2679	Tweet2679	User2679	409	1901	Malta	Obj C
2680	Tweet2680	User2680	2226	2130	Germany	C
2681	Tweet2681	User2681	4978	2231	France	Python
2682	Tweet2682	User2682	4738	2161	Malta	Visual Basic
2683	Tweet2683	User2683	2766	4890	Finland	Visual Basic
2684	Tweet2684	User2684	2609	4472	Bulgaria	Visual Basic
2685	Tweet2685	User2685	441	1660	Portugal	Java
2686	Tweet2686	User2686	2728	4455	France	PHP
2687	Tweet2687	User2687	460	4021	United Kingdom	C++
2688	Tweet2688	User2688	1392	1877	Spain	Visual Basic
2689	Tweet2689	User2689	4310	4791	Austria	PHP
2690	Tweet2690	User2690	2398	3834	Finland	Visual Basic
2691	Tweet2691	User2691	329	1425	Bulgaria	Python
2692	Tweet2692	User2692	748	4463	Finland	Ruby
2693	Tweet2693	User2693	942	1853	United Kingdom	Java
2694	Tweet2694	User2694	1409	1084	Spain	Obj C
2695	Tweet2695	User2695	405	2866	Austria	Java
2696	Tweet2696	User2696	3815	896	Romania	JavaScript
2697	Tweet2697	User2697	2865	2491	Belgium	C#
2698	Tweet2698	User2698	216	4325	Luxembourg	Python
2699	Tweet2699	User2699	2962	4356	Spain	JavaScript
2700	Tweet2700	User2700	3059	1702	Slovenia	Scala
2701	Tweet2701	User2701	723	4570	Italy	Obj C
2702	Tweet2702	User2702	1611	3963	Latvia	PHP
2703	Tweet2703	User2703	567	3876	Bulgaria	Java
2704	Tweet2704	User2704	112	3320	Italy	JavaScript
2705	Tweet2705	User2705	3150	4137	Portugal	C++
2706	Tweet2706	User2706	3638	4995	Belgium	Obj C
2707	Tweet2707	User2707	1016	3420	Greece	Obj C
2708	Tweet2708	User2708	4843	1141	Sweden	C
2709	Tweet2709	User2709	2408	2798	Portugal	Visual Basic
2710	Tweet2710	User2710	4799	1876	Netherlands	Ruby
2711	Tweet2711	User2711	4797	1859	Spain	C#
2712	Tweet2712	User2712	1210	523	Germany	Scala
2713	Tweet2713	User2713	3352	4407	Malta	Ruby
2714	Tweet2714	User2714	2297	507	Spain	PHP
2715	Tweet2715	User2715	41	304	Romania	Scala
2716	Tweet2716	User2716	3662	2725	Slovenia	JavaScript
2717	Tweet2717	User2717	3307	2689	Latvia	Obj C
2718	Tweet2718	User2718	2607	1888	Sweden	C
2719	Tweet2719	User2719	2940	1928	Croatia	Ruby
2720	Tweet2720	User2720	2913	3405	Croatia	Ruby
2721	Tweet2721	User2721	256	193	Latvia	C#
2722	Tweet2722	User2722	4034	2255	Malta	Ruby
2723	Tweet2723	User2723	2384	3170	Hungary	PHP
2724	Tweet2724	User2724	4381	2141	Germany	C++
2725	Tweet2725	User2725	3478	4287	Hungary	Java
2726	Tweet2726	User2726	123	1490	Spain	Visual Basic
2727	Tweet2727	User2727	1035	3752	Romania	Java
2728	Tweet2728	User2728	2318	2490	Luxembourg	C#
2729	Tweet2729	User2729	909	3439	Czech Republic	C++
2730	Tweet2730	User2730	1958	1053	Romania	JavaScript
2731	Tweet2731	User2731	1811	937	Belgium	C++
2732	Tweet2732	User2732	2944	2417	France	PHP
2733	Tweet2733	User2733	4832	2162	Luxembourg	Obj C
2734	Tweet2734	User2734	3406	55	Austria	Ruby
2735	Tweet2735	User2735	1343	4124	Finland	Python
2736	Tweet2736	User2736	2112	389	Estonia	JavaScript
2737	Tweet2737	User2737	987	3725	Estonia	Python
2738	Tweet2738	User2738	1245	2634	Netherlands	Python
2739	Tweet2739	User2739	2362	4961	Romania	PHP
2740	Tweet2740	User2740	2244	1727	Slovenia	Obj C
2741	Tweet2741	User2741	2156	3542	Italy	Visual Basic
2742	Tweet2742	User2742	111	2401	Cyprus	PHP
2743	Tweet2743	User2743	1484	2433	Belgium	Visual Basic
2744	Tweet2744	User2744	2084	2633	Lithuania	PHP
2745	Tweet2745	User2745	3142	59	Austria	Java
2746	Tweet2746	User2746	3460	4087	Netherlands	C#
2747	Tweet2747	User2747	878	3695	Lithuania	C#
2748	Tweet2748	User2748	1194	2927	Italy	Java
2749	Tweet2749	User2749	1571	1466	Czech Republic	C#
2750	Tweet2750	User2750	2889	4608	Romania	JavaScript
2751	Tweet2751	User2751	4327	4966	Slovenia	Ruby
2752	Tweet2752	User2752	1438	4496	Luxembourg	Python
2753	Tweet2753	User2753	3350	1130	Slovakia	C
2754	Tweet2754	User2754	4151	4032	Poland	JavaScript
2755	Tweet2755	User2755	4033	683	Romania	PHP
2756	Tweet2756	User2756	3549	3321	Belgium	Java
2757	Tweet2757	User2757	4204	2934	Denmark	Scala
2758	Tweet2758	User2758	4096	1954	Croatia	Python
2759	Tweet2759	User2759	4917	3822	Ireland	Scala
2760	Tweet2760	User2760	410	3057	Czech Republic	Scala
2761	Tweet2761	User2761	4087	4570	Italy	Visual Basic
2762	Tweet2762	User2762	3255	1818	Slovenia	Java
2763	Tweet2763	User2763	4973	1897	Ireland	C#
2764	Tweet2764	User2764	1501	1117	Sweden	Ruby
2765	Tweet2765	User2765	3655	36	Germany	C++
2766	Tweet2766	User2766	4231	4928	Finland	C#
2767	Tweet2767	User2767	3655	4885	Finland	C#
2768	Tweet2768	User2768	3809	2078	Italy	Ruby
2769	Tweet2769	User2769	1031	2440	United Kingdom	Scala
2770	Tweet2770	User2770	1484	4997	Finland	PHP
2771	Tweet2771	User2771	1684	3517	Croatia	C++
2772	Tweet2772	User2772	258	1366	Spain	PHP
2773	Tweet2773	User2773	1125	1137	Croatia	C++
2774	Tweet2774	User2774	3402	3191	Estonia	Python
2775	Tweet2775	User2775	977	2756	Romania	Java
2776	Tweet2776	User2776	3263	4178	Romania	Ruby
2777	Tweet2777	User2777	557	1173	Poland	C#
2778	Tweet2778	User2778	2192	4657	Latvia	Obj C
2779	Tweet2779	User2779	3418	3371	Estonia	Ruby
2780	Tweet2780	User2780	3027	227	Romania	C++
2781	Tweet2781	User2781	4499	4660	Spain	C
2782	Tweet2782	User2782	657	4075	Slovenia	C#
2783	Tweet2783	User2783	1677	2206	Sweden	Visual Basic
2784	Tweet2784	User2784	3305	3516	Malta	Python
2785	Tweet2785	User2785	1925	3839	Spain	JavaScript
2786	Tweet2786	User2786	2660	4570	Poland	Obj C
2787	Tweet2787	User2787	485	2434	Austria	Python
2788	Tweet2788	User2788	892	1475	Portugal	Obj C
2789	Tweet2789	User2789	1659	3538	Latvia	Ruby
2790	Tweet2790	User2790	3111	1655	Cyprus	Obj C
2791	Tweet2791	User2791	2547	3939	Greece	Python
2792	Tweet2792	User2792	3351	1692	Greece	JavaScript
2793	Tweet2793	User2793	4664	1538	Netherlands	Python
2794	Tweet2794	User2794	3977	2472	Slovakia	Obj C
2795	Tweet2795	User2795	4826	650	Germany	C#
2796	Tweet2796	User2796	4696	19	Slovenia	Visual Basic
2797	Tweet2797	User2797	330	2598	Belgium	JavaScript
2798	Tweet2798	User2798	4760	4001	Greece	C#
2799	Tweet2799	User2799	91	4609	Portugal	PHP
2800	Tweet2800	User2800	601	356	Slovenia	JavaScript
2801	Tweet2801	User2801	159	447	Greece	C#
2802	Tweet2802	User2802	3471	4806	Sweden	C
2803	Tweet2803	User2803	228	1004	Finland	Ruby
2804	Tweet2804	User2804	4704	3097	Luxembourg	Python
2805	Tweet2805	User2805	1990	63	Sweden	C++
2806	Tweet2806	User2806	3740	2030	Finland	Java
2807	Tweet2807	User2807	3006	1380	Croatia	JavaScript
2808	Tweet2808	User2808	4074	3098	Slovakia	C
2809	Tweet2809	User2809	3999	2881	Slovakia	PHP
2810	Tweet2810	User2810	4018	4429	Belgium	Ruby
2811	Tweet2811	User2811	1119	1955	Cyprus	C
2812	Tweet2812	User2812	1330	522	Czech Republic	C++
2813	Tweet2813	User2813	4195	4710	Denmark	JavaScript
2814	Tweet2814	User2814	1256	2447	Sweden	Ruby
2815	Tweet2815	User2815	4453	1533	Cyprus	Scala
2816	Tweet2816	User2816	116	53	Latvia	Java
2817	Tweet2817	User2817	998	2853	Sweden	Java
2818	Tweet2818	User2818	4877	4335	Ireland	C++
2819	Tweet2819	User2819	289	3955	Italy	C++
2820	Tweet2820	User2820	52	4593	Croatia	Java
2821	Tweet2821	User2821	3510	588	Slovakia	Obj C
2822	Tweet2822	User2822	2142	2762	Spain	PHP
2823	Tweet2823	User2823	2155	2989	Hungary	Visual Basic
2824	Tweet2824	User2824	1451	495	Slovakia	C
2825	Tweet2825	User2825	4278	1315	Hungary	C#
2826	Tweet2826	User2826	1662	3039	Germany	Scala
2827	Tweet2827	User2827	1192	4879	France	C++
2828	Tweet2828	User2828	4854	3685	Hungary	C
2829	Tweet2829	User2829	2977	1135	Slovenia	C
2830	Tweet2830	User2830	552	1074	Slovakia	PHP
2831	Tweet2831	User2831	2939	3580	Belgium	Java
2832	Tweet2832	User2832	1608	3312	Bulgaria	C++
2833	Tweet2833	User2833	1631	4510	Portugal	Visual Basic
2834	Tweet2834	User2834	1914	1733	Slovakia	JavaScript
2835	Tweet2835	User2835	4994	2767	Lithuania	Python
2836	Tweet2836	User2836	3563	4074	Ireland	C
2837	Tweet2837	User2837	4823	4994	Luxembourg	Ruby
2838	Tweet2838	User2838	812	210	Malta	PHP
2839	Tweet2839	User2839	2787	1239	Lithuania	Python
2840	Tweet2840	User2840	3795	1381	Spain	Scala
2841	Tweet2841	User2841	523	4409	Italy	Python
2842	Tweet2842	User2842	3478	4506	Lithuania	C++
2843	Tweet2843	User2843	808	4449	Portugal	PHP
2844	Tweet2844	User2844	2784	2918	Malta	Java
2845	Tweet2845	User2845	2745	1929	Portugal	C#
2846	Tweet2846	User2846	3811	2705	Cyprus	PHP
2847	Tweet2847	User2847	1684	4848	Germany	PHP
2848	Tweet2848	User2848	3097	1174	Slovakia	Python
2849	Tweet2849	User2849	680	3822	Finland	C++
2850	Tweet2850	User2850	3052	1880	United Kingdom	C++
2851	Tweet2851	User2851	2717	2241	Poland	Scala
2852	Tweet2852	User2852	3149	380	Greece	Java
2853	Tweet2853	User2853	111	266	Portugal	JavaScript
2854	Tweet2854	User2854	1776	3467	Slovakia	PHP
2855	Tweet2855	User2855	4364	3180	Cyprus	Python
2856	Tweet2856	User2856	942	2064	Denmark	Visual Basic
2857	Tweet2857	User2857	393	3863	Ireland	Java
2858	Tweet2858	User2858	4331	2679	Lithuania	C++
2859	Tweet2859	User2859	4655	510	Greece	PHP
2860	Tweet2860	User2860	677	3092	Italy	Ruby
2861	Tweet2861	User2861	2352	1831	Bulgaria	Scala
2862	Tweet2862	User2862	464	4100	Hungary	Ruby
2863	Tweet2863	User2863	1026	110	Denmark	C
2864	Tweet2864	User2864	3827	678	Sweden	JavaScript
2865	Tweet2865	User2865	1728	3217	Cyprus	C#
2866	Tweet2866	User2866	2954	4174	Belgium	Python
2867	Tweet2867	User2867	2663	4574	Portugal	Python
2868	Tweet2868	User2868	3266	897	Poland	Java
2869	Tweet2869	User2869	961	529	Romania	JavaScript
2870	Tweet2870	User2870	2375	1964	Hungary	C
2871	Tweet2871	User2871	3768	2242	Portugal	C++
2872	Tweet2872	User2872	529	4092	Sweden	C++
2873	Tweet2873	User2873	2909	1393	Finland	Obj C
2874	Tweet2874	User2874	2487	3000	Czech Republic	Scala
2875	Tweet2875	User2875	4124	4515	Slovakia	Scala
2876	Tweet2876	User2876	766	679	Netherlands	C
2877	Tweet2877	User2877	1277	3272	Slovakia	Scala
2878	Tweet2878	User2878	709	3957	Finland	Python
2879	Tweet2879	User2879	3989	2470	Finland	Ruby
2880	Tweet2880	User2880	1447	4404	Austria	C
2881	Tweet2881	User2881	782	194	Greece	PHP
2882	Tweet2882	User2882	4133	2573	Croatia	Scala
2883	Tweet2883	User2883	3578	2167	Poland	JavaScript
2884	Tweet2884	User2884	4262	4809	Romania	C++
2885	Tweet2885	User2885	2610	2106	Lithuania	Scala
2886	Tweet2886	User2886	1309	182	Poland	C
2887	Tweet2887	User2887	2054	3311	Germany	Scala
2888	Tweet2888	User2888	585	2620	Germany	Visual Basic
2889	Tweet2889	User2889	3385	880	Spain	Visual Basic
2890	Tweet2890	User2890	591	1449	Latvia	Ruby
2891	Tweet2891	User2891	1757	3106	Romania	Obj C
2892	Tweet2892	User2892	1642	2749	United Kingdom	Java
2893	Tweet2893	User2893	3631	676	Belgium	Scala
2894	Tweet2894	User2894	145	599	Hungary	PHP
2895	Tweet2895	User2895	2110	4234	Croatia	PHP
2896	Tweet2896	User2896	1991	3143	Austria	C#
2897	Tweet2897	User2897	295	1217	Cyprus	Obj C
2898	Tweet2898	User2898	4127	4952	Slovenia	Python
2899	Tweet2899	User2899	127	3941	Estonia	Obj C
2900	Tweet2900	User2900	4109	470	Belgium	Java
2901	Tweet2901	User2901	1457	2695	Portugal	Python
2902	Tweet2902	User2902	1614	2375	Estonia	Obj C
2903	Tweet2903	User2903	3951	3898	Austria	Java
2904	Tweet2904	User2904	556	2931	Slovakia	Scala
2905	Tweet2905	User2905	1499	2724	Malta	C#
2906	Tweet2906	User2906	4416	4737	Croatia	C
2907	Tweet2907	User2907	3722	3366	Finland	C++
2908	Tweet2908	User2908	2233	1721	Italy	C++
2909	Tweet2909	User2909	3894	4411	Belgium	Python
2910	Tweet2910	User2910	4588	4375	Hungary	Ruby
2911	Tweet2911	User2911	3865	618	Finland	C#
2912	Tweet2912	User2912	2072	606	Slovenia	JavaScript
2913	Tweet2913	User2913	3046	4610	Luxembourg	C++
2914	Tweet2914	User2914	1013	2498	Austria	PHP
2915	Tweet2915	User2915	1258	3525	Czech Republic	C
2916	Tweet2916	User2916	753	1794	Malta	Java
2917	Tweet2917	User2917	4160	1679	Belgium	JavaScript
2918	Tweet2918	User2918	990	2704	Czech Republic	Visual Basic
2919	Tweet2919	User2919	4148	983	Denmark	C#
2920	Tweet2920	User2920	1895	3818	Denmark	Ruby
2921	Tweet2921	User2921	2112	3617	Belgium	Visual Basic
2922	Tweet2922	User2922	1998	2501	France	Obj C
2923	Tweet2923	User2923	1825	3104	Estonia	Visual Basic
2924	Tweet2924	User2924	1601	4937	Hungary	C++
2925	Tweet2925	User2925	4436	2784	Hungary	C
2926	Tweet2926	User2926	2445	4405	Latvia	JavaScript
2927	Tweet2927	User2927	985	4683	Denmark	C
2928	Tweet2928	User2928	3423	3813	Latvia	C++
2929	Tweet2929	User2929	1429	2928	Czech Republic	PHP
2930	Tweet2930	User2930	611	1677	Italy	Obj C
2931	Tweet2931	User2931	1305	3550	Czech Republic	C++
2932	Tweet2932	User2932	1433	4254	Belgium	PHP
2933	Tweet2933	User2933	1782	4437	Bulgaria	JavaScript
2934	Tweet2934	User2934	1201	3440	Poland	PHP
2935	Tweet2935	User2935	4147	3022	Austria	Obj C
2936	Tweet2936	User2936	3296	933	Poland	Obj C
2937	Tweet2937	User2937	4729	1491	Luxembourg	Python
2938	Tweet2938	User2938	4811	1895	Italy	PHP
2939	Tweet2939	User2939	662	3704	United Kingdom	PHP
2940	Tweet2940	User2940	4157	2677	Estonia	C
2941	Tweet2941	User2941	229	4449	Hungary	C#
2942	Tweet2942	User2942	3216	2237	Croatia	Python
2943	Tweet2943	User2943	2628	509	Cyprus	Ruby
2944	Tweet2944	User2944	4865	3555	France	C#
2945	Tweet2945	User2945	2832	4278	Austria	JavaScript
2946	Tweet2946	User2946	1042	773	Malta	C#
2947	Tweet2947	User2947	703	4977	Germany	C++
2948	Tweet2948	User2948	973	3087	Italy	JavaScript
2949	Tweet2949	User2949	260	2676	Slovenia	C
2950	Tweet2950	User2950	3358	1678	Latvia	Obj C
2951	Tweet2951	User2951	2624	2230	Croatia	C++
2952	Tweet2952	User2952	4018	4146	Luxembourg	Ruby
2953	Tweet2953	User2953	4280	1376	Poland	Ruby
2954	Tweet2954	User2954	3946	3228	Latvia	Python
2955	Tweet2955	User2955	4016	4130	Germany	Ruby
2956	Tweet2956	User2956	405	435	Latvia	Python
2957	Tweet2957	User2957	4824	964	Greece	C#
2958	Tweet2958	User2958	2600	4805	Luxembourg	JavaScript
2959	Tweet2959	User2959	1433	3438	Estonia	C#
2960	Tweet2960	User2960	2132	2380	Malta	Python
2961	Tweet2961	User2961	3456	2675	Finland	C++
2962	Tweet2962	User2962	1446	3270	Spain	C
2963	Tweet2963	User2963	2595	4293	Slovenia	Python
2964	Tweet2964	User2964	4238	2425	Czech Republic	PHP
2965	Tweet2965	User2965	809	1351	Sweden	JavaScript
2966	Tweet2966	User2966	4822	3017	France	PHP
2967	Tweet2967	User2967	1832	4659	France	C#
2968	Tweet2968	User2968	3770	757	Poland	C#
2969	Tweet2969	User2969	3997	3499	Croatia	Python
2970	Tweet2970	User2970	3738	4666	Czech Republic	Python
2971	Tweet2971	User2971	2874	3721	Belgium	Python
2972	Tweet2972	User2972	971	2821	Poland	Python
2973	Tweet2973	User2973	4552	3412	Belgium	JavaScript
2974	Tweet2974	User2974	2923	1027	Spain	Scala
2975	Tweet2975	User2975	2247	3674	Poland	C++
2976	Tweet2976	User2976	1793	3826	Hungary	C#
2977	Tweet2977	User2977	4695	27	Poland	C#
2978	Tweet2978	User2978	4536	2808	Finland	Obj C
2979	Tweet2979	User2979	1423	3942	France	JavaScript
2980	Tweet2980	User2980	3083	1646	Romania	C#
2981	Tweet2981	User2981	3910	3179	Netherlands	Obj C
2982	Tweet2982	User2982	1867	3036	Italy	JavaScript
2983	Tweet2983	User2983	3343	2922	Belgium	PHP
2984	Tweet2984	User2984	1005	2682	Slovenia	Obj C
2985	Tweet2985	User2985	258	1614	Lithuania	C
2986	Tweet2986	User2986	3562	3395	Slovakia	Ruby
2987	Tweet2987	User2987	512	4144	Romania	C
2988	Tweet2988	User2988	2729	3793	Czech Republic	C++
2989	Tweet2989	User2989	184	1679	Malta	PHP
2990	Tweet2990	User2990	4231	4779	Austria	Python
2991	Tweet2991	User2991	4511	4304	Slovakia	Python
2992	Tweet2992	User2992	4787	4383	Lithuania	C
2993	Tweet2993	User2993	3096	3207	Finland	Ruby
2994	Tweet2994	User2994	2110	4341	Latvia	Visual Basic
2995	Tweet2995	User2995	4198	1843	Cyprus	Python
2996	Tweet2996	User2996	4351	3403	Malta	JavaScript
2997	Tweet2997	User2997	2539	1878	Bulgaria	Python
2998	Tweet2998	User2998	4505	3943	Slovenia	C++
2999	Tweet2999	User2999	2649	1647	Cyprus	C
3000	Tweet3000	User3000	3547	1433	Slovakia	Python
3001	Tweet3001	User3001	4021	3200	Croatia	Ruby
3002	Tweet3002	User3002	3946	1428	Denmark	Python
3003	Tweet3003	User3003	2329	1186	Estonia	PHP
3004	Tweet3004	User3004	80	4128	Hungary	Visual Basic
3005	Tweet3005	User3005	2243	4538	Spain	JavaScript
3006	Tweet3006	User3006	933	3753	Greece	Visual Basic
3007	Tweet3007	User3007	4497	4675	Germany	Obj C
3008	Tweet3008	User3008	2783	3705	Hungary	C
3009	Tweet3009	User3009	1116	3579	Sweden	Visual Basic
3010	Tweet3010	User3010	3988	4289	Bulgaria	Obj C
3011	Tweet3011	User3011	3847	1170	United Kingdom	PHP
3012	Tweet3012	User3012	2236	4434	France	Java
3013	Tweet3013	User3013	4155	1574	Slovakia	C#
3014	Tweet3014	User3014	3409	3520	Cyprus	C
3015	Tweet3015	User3015	4033	222	Slovakia	Obj C
3016	Tweet3016	User3016	1551	2272	France	Visual Basic
3017	Tweet3017	User3017	4424	859	Bulgaria	Obj C
3018	Tweet3018	User3018	280	216	Portugal	Ruby
3019	Tweet3019	User3019	862	893	Luxembourg	Python
3020	Tweet3020	User3020	2165	4449	Netherlands	C++
3021	Tweet3021	User3021	4258	3070	United Kingdom	PHP
3022	Tweet3022	User3022	3723	1220	France	Java
3023	Tweet3023	User3023	4377	61	Malta	C#
3024	Tweet3024	User3024	1988	3842	Latvia	C++
3025	Tweet3025	User3025	4141	2564	France	C
3026	Tweet3026	User3026	2028	2894	Hungary	Python
3027	Tweet3027	User3027	3181	4985	Cyprus	C++
3028	Tweet3028	User3028	958	1587	Slovakia	C
3029	Tweet3029	User3029	549	4615	Denmark	Scala
3030	Tweet3030	User3030	1948	1251	Romania	PHP
3031	Tweet3031	User3031	3092	1759	Spain	PHP
3032	Tweet3032	User3032	321	4302	Denmark	JavaScript
3033	Tweet3033	User3033	833	824	Ireland	C
3034	Tweet3034	User3034	2930	2077	Romania	Scala
3035	Tweet3035	User3035	2893	2603	France	Java
3036	Tweet3036	User3036	146	2305	Estonia	C
3037	Tweet3037	User3037	3877	3123	Spain	Obj C
3038	Tweet3038	User3038	233	4438	Romania	PHP
3039	Tweet3039	User3039	4259	4304	Romania	Python
3040	Tweet3040	User3040	2460	3391	Malta	Ruby
3041	Tweet3041	User3041	2833	1031	Croatia	Ruby
3042	Tweet3042	User3042	385	4305	Estonia	C
3043	Tweet3043	User3043	87	231	Estonia	C++
3044	Tweet3044	User3044	3789	2795	France	Python
3045	Tweet3045	User3045	4770	3716	United Kingdom	C#
3046	Tweet3046	User3046	3390	3800	Belgium	Python
3047	Tweet3047	User3047	178	2742	Latvia	C#
3048	Tweet3048	User3048	750	1988	Latvia	PHP
3049	Tweet3049	User3049	1337	302	Spain	Python
3050	Tweet3050	User3050	3321	1961	Romania	Obj C
3051	Tweet3051	User3051	4320	238	Greece	C
3052	Tweet3052	User3052	3081	2710	Netherlands	Python
3053	Tweet3053	User3053	819	4821	Austria	Scala
3054	Tweet3054	User3054	2777	2553	Greece	C#
3055	Tweet3055	User3055	4664	2859	Portugal	C++
3056	Tweet3056	User3056	3263	4597	Denmark	Visual Basic
3057	Tweet3057	User3057	1202	3393	Cyprus	Visual Basic
3058	Tweet3058	User3058	853	4618	Malta	JavaScript
3059	Tweet3059	User3059	2489	2604	Cyprus	PHP
3060	Tweet3060	User3060	4944	1493	Poland	C
3061	Tweet3061	User3061	2983	4730	Finland	Python
3062	Tweet3062	User3062	3746	3122	Belgium	C++
3063	Tweet3063	User3063	4517	4471	Estonia	JavaScript
3064	Tweet3064	User3064	4228	2363	Sweden	Obj C
3065	Tweet3065	User3065	3073	2554	Hungary	Python
3066	Tweet3066	User3066	285	4216	Austria	Python
3067	Tweet3067	User3067	1739	2862	Italy	C#
3068	Tweet3068	User3068	2776	3958	Czech Republic	Obj C
3069	Tweet3069	User3069	4246	3420	Latvia	Java
3070	Tweet3070	User3070	3751	3801	Netherlands	Java
3071	Tweet3071	User3071	2455	4106	Malta	PHP
3072	Tweet3072	User3072	870	3760	United Kingdom	C
3073	Tweet3073	User3073	2892	1883	Netherlands	Java
3074	Tweet3074	User3074	4043	2844	Poland	C++
3075	Tweet3075	User3075	690	2613	Netherlands	Java
3076	Tweet3076	User3076	4826	1942	Romania	Ruby
3077	Tweet3077	User3077	691	4954	Malta	Scala
3078	Tweet3078	User3078	3793	4609	Czech Republic	Python
3079	Tweet3079	User3079	2471	1671	Sweden	C++
3080	Tweet3080	User3080	4788	30	Bulgaria	PHP
3081	Tweet3081	User3081	4198	4147	Germany	C#
3082	Tweet3082	User3082	2145	4510	Croatia	JavaScript
3083	Tweet3083	User3083	1549	2254	Netherlands	Python
3084	Tweet3084	User3084	831	1668	Italy	Java
3085	Tweet3085	User3085	4088	4184	Belgium	Visual Basic
3086	Tweet3086	User3086	620	1165	Austria	Ruby
3087	Tweet3087	User3087	4799	928	United Kingdom	Java
3088	Tweet3088	User3088	4674	1170	Poland	C
3089	Tweet3089	User3089	772	4494	Austria	C
3090	Tweet3090	User3090	2590	1293	Ireland	PHP
3091	Tweet3091	User3091	273	4207	Spain	PHP
3092	Tweet3092	User3092	570	4830	Austria	PHP
3093	Tweet3093	User3093	1986	3098	Finland	C#
3094	Tweet3094	User3094	4314	3422	Romania	PHP
3095	Tweet3095	User3095	3000	4668	United Kingdom	Obj C
3096	Tweet3096	User3096	3761	355	Portugal	Obj C
3097	Tweet3097	User3097	555	3388	Latvia	Python
3098	Tweet3098	User3098	3537	520	Croatia	Python
3099	Tweet3099	User3099	1834	2139	Poland	Scala
3100	Tweet3100	User3100	1830	198	Netherlands	Scala
3101	Tweet3101	User3101	2349	3218	Slovenia	JavaScript
3102	Tweet3102	User3102	4882	4467	Ireland	JavaScript
3103	Tweet3103	User3103	1879	971	Luxembourg	Visual Basic
3104	Tweet3104	User3104	786	1964	Slovakia	C
3105	Tweet3105	User3105	2756	1379	Portugal	Obj C
3106	Tweet3106	User3106	993	4086	Latvia	C
3107	Tweet3107	User3107	887	4495	Finland	Obj C
3108	Tweet3108	User3108	3244	735	Belgium	Scala
3109	Tweet3109	User3109	4010	113	Estonia	Ruby
3110	Tweet3110	User3110	761	1192	Hungary	PHP
3111	Tweet3111	User3111	1189	4738	Spain	C
3112	Tweet3112	User3112	2537	3866	Cyprus	Scala
3113	Tweet3113	User3113	4761	3491	Belgium	Obj C
3114	Tweet3114	User3114	3662	2234	Austria	Scala
3115	Tweet3115	User3115	559	4656	United Kingdom	Python
3116	Tweet3116	User3116	220	2411	United Kingdom	Python
3117	Tweet3117	User3117	2593	1347	Poland	C
3118	Tweet3118	User3118	613	3756	Cyprus	JavaScript
3119	Tweet3119	User3119	4596	3226	Poland	Python
3120	Tweet3120	User3120	3859	677	Lithuania	Visual Basic
3121	Tweet3121	User3121	269	3656	Lithuania	Scala
3122	Tweet3122	User3122	609	4326	Croatia	C
3123	Tweet3123	User3123	3547	1360	France	PHP
3124	Tweet3124	User3124	911	2289	Cyprus	JavaScript
3125	Tweet3125	User3125	3288	1664	United Kingdom	C++
3126	Tweet3126	User3126	3649	2127	Lithuania	Ruby
3127	Tweet3127	User3127	3594	4718	Sweden	Visual Basic
3128	Tweet3128	User3128	1936	3945	Italy	C++
3129	Tweet3129	User3129	307	2802	Slovakia	Python
3130	Tweet3130	User3130	752	73	Bulgaria	C++
3131	Tweet3131	User3131	4961	1051	France	C
3132	Tweet3132	User3132	3228	1297	United Kingdom	C++
3133	Tweet3133	User3133	4249	3849	Austria	Obj C
3134	Tweet3134	User3134	771	4002	Germany	C++
3135	Tweet3135	User3135	632	124	Italy	Obj C
3136	Tweet3136	User3136	3672	733	Italy	C#
3137	Tweet3137	User3137	1133	4427	Slovenia	Visual Basic
3138	Tweet3138	User3138	782	4340	Ireland	Java
3139	Tweet3139	User3139	3016	4010	France	JavaScript
3140	Tweet3140	User3140	3617	2274	Germany	JavaScript
3141	Tweet3141	User3141	3350	1952	Czech Republic	C
3142	Tweet3142	User3142	4569	2258	Poland	Scala
3143	Tweet3143	User3143	3276	2199	Slovakia	Python
3144	Tweet3144	User3144	2736	3579	Germany	C#
3145	Tweet3145	User3145	20	1299	Portugal	Scala
3146	Tweet3146	User3146	1789	2075	Estonia	Visual Basic
3147	Tweet3147	User3147	1204	1908	Austria	Java
3148	Tweet3148	User3148	1009	2957	Denmark	Obj C
3149	Tweet3149	User3149	950	2515	Sweden	C++
3150	Tweet3150	User3150	2908	4295	Ireland	Ruby
3151	Tweet3151	User3151	1976	1082	Hungary	PHP
3152	Tweet3152	User3152	212	3916	Estonia	PHP
3153	Tweet3153	User3153	4462	4641	Croatia	JavaScript
3154	Tweet3154	User3154	1511	4626	Slovakia	C
3155	Tweet3155	User3155	2384	630	Belgium	Java
3156	Tweet3156	User3156	674	3404	France	Python
3157	Tweet3157	User3157	2818	2393	Belgium	Python
3158	Tweet3158	User3158	954	1519	Germany	C#
3159	Tweet3159	User3159	2463	55	Estonia	Ruby
3160	Tweet3160	User3160	113	164	Belgium	Java
3161	Tweet3161	User3161	3895	662	Croatia	Java
3162	Tweet3162	User3162	4542	4677	Bulgaria	C#
3163	Tweet3163	User3163	4348	1701	Denmark	Obj C
3164	Tweet3164	User3164	2198	2705	Spain	C++
3165	Tweet3165	User3165	3033	3935	Austria	Ruby
3166	Tweet3166	User3166	1977	4310	Croatia	Obj C
3167	Tweet3167	User3167	3447	3850	Estonia	C++
3168	Tweet3168	User3168	58	1834	Greece	C
3169	Tweet3169	User3169	1641	1466	United Kingdom	Obj C
3170	Tweet3170	User3170	3189	928	Latvia	Ruby
3171	Tweet3171	User3171	1306	3593	Estonia	JavaScript
3172	Tweet3172	User3172	3946	4274	Romania	C#
3173	Tweet3173	User3173	526	3121	Hungary	Obj C
3174	Tweet3174	User3174	4866	581	United Kingdom	Visual Basic
3175	Tweet3175	User3175	1168	3896	Poland	Java
3176	Tweet3176	User3176	2697	1122	Slovakia	C
3177	Tweet3177	User3177	2621	3958	Cyprus	C#
3178	Tweet3178	User3178	2567	4736	Portugal	C#
3179	Tweet3179	User3179	2583	193	Denmark	JavaScript
3180	Tweet3180	User3180	1416	70	Netherlands	C++
3181	Tweet3181	User3181	2058	1245	Netherlands	Visual Basic
3182	Tweet3182	User3182	3462	2477	Latvia	PHP
3183	Tweet3183	User3183	1416	2088	Czech Republic	Scala
3184	Tweet3184	User3184	987	3046	Denmark	PHP
3185	Tweet3185	User3185	1476	3431	Italy	Visual Basic
3186	Tweet3186	User3186	1190	3508	Hungary	Obj C
3187	Tweet3187	User3187	2449	3762	Denmark	Ruby
3188	Tweet3188	User3188	2678	4612	Estonia	Visual Basic
3189	Tweet3189	User3189	3265	4329	Greece	Python
3190	Tweet3190	User3190	4633	47	Belgium	Obj C
3191	Tweet3191	User3191	2524	2259	Poland	C#
3192	Tweet3192	User3192	2660	2331	Luxembourg	PHP
3193	Tweet3193	User3193	31	243	Austria	Visual Basic
3194	Tweet3194	User3194	1775	1939	Cyprus	Java
3195	Tweet3195	User3195	1898	2548	Finland	Visual Basic
3196	Tweet3196	User3196	4260	3765	Cyprus	Visual Basic
3197	Tweet3197	User3197	2529	1299	France	Obj C
3198	Tweet3198	User3198	3297	1442	Slovenia	Obj C
3199	Tweet3199	User3199	2151	176	Estonia	C
3200	Tweet3200	User3200	2721	2545	Luxembourg	Ruby
3201	Tweet3201	User3201	2528	1163	Netherlands	JavaScript
3202	Tweet3202	User3202	1768	858	Portugal	Java
3203	Tweet3203	User3203	313	1308	France	C#
3204	Tweet3204	User3204	1667	1105	Belgium	Scala
3205	Tweet3205	User3205	1709	3678	Czech Republic	C++
3206	Tweet3206	User3206	3029	3377	Poland	C#
3207	Tweet3207	User3207	289	2246	Ireland	Python
3208	Tweet3208	User3208	2350	4051	Belgium	C
3209	Tweet3209	User3209	1022	2825	Greece	Java
3210	Tweet3210	User3210	3537	826	France	Visual Basic
3211	Tweet3211	User3211	3129	1961	Luxembourg	Obj C
3212	Tweet3212	User3212	2298	776	United Kingdom	PHP
3213	Tweet3213	User3213	4842	752	Denmark	JavaScript
3214	Tweet3214	User3214	3089	2530	Italy	Java
3215	Tweet3215	User3215	1405	4172	United Kingdom	JavaScript
3216	Tweet3216	User3216	877	3382	Sweden	Python
3217	Tweet3217	User3217	1269	2725	Finland	Obj C
3218	Tweet3218	User3218	4795	3696	Denmark	Visual Basic
3219	Tweet3219	User3219	3451	1028	Czech Republic	Ruby
3220	Tweet3220	User3220	971	3398	Luxembourg	Python
3221	Tweet3221	User3221	314	4716	Italy	JavaScript
3222	Tweet3222	User3222	2428	95	Poland	C#
3223	Tweet3223	User3223	4449	180	Ireland	C++
3224	Tweet3224	User3224	3335	4690	Lithuania	Python
3225	Tweet3225	User3225	2809	3967	Estonia	C#
3226	Tweet3226	User3226	4718	3281	Bulgaria	C
3227	Tweet3227	User3227	1108	1556	Germany	Scala
3228	Tweet3228	User3228	955	643	Romania	Ruby
3229	Tweet3229	User3229	2818	3586	Bulgaria	C
3230	Tweet3230	User3230	870	2891	Germany	Obj C
3231	Tweet3231	User3231	2947	2500	Slovakia	Ruby
3232	Tweet3232	User3232	4729	256	Romania	C
3233	Tweet3233	User3233	2932	469	Sweden	PHP
3234	Tweet3234	User3234	1200	2279	Poland	JavaScript
3235	Tweet3235	User3235	3501	2728	Germany	C
3236	Tweet3236	User3236	243	944	Italy	Obj C
3237	Tweet3237	User3237	976	2373	Poland	C++
3238	Tweet3238	User3238	3982	2808	Luxembourg	C#
3239	Tweet3239	User3239	635	1032	Sweden	Java
3240	Tweet3240	User3240	2390	3701	Netherlands	Python
3241	Tweet3241	User3241	1821	4504	United Kingdom	JavaScript
3242	Tweet3242	User3242	2666	2422	Bulgaria	Scala
3243	Tweet3243	User3243	830	1565	Bulgaria	Visual Basic
3244	Tweet3244	User3244	2992	2869	Malta	C#
3245	Tweet3245	User3245	2179	245	Netherlands	PHP
3246	Tweet3246	User3246	246	1475	United Kingdom	C
3247	Tweet3247	User3247	3397	3022	Poland	Python
3248	Tweet3248	User3248	3187	3043	Croatia	Obj C
3249	Tweet3249	User3249	2692	3906	Ireland	C
3250	Tweet3250	User3250	1015	1963	Czech Republic	Java
3251	Tweet3251	User3251	3429	2531	Latvia	JavaScript
3252	Tweet3252	User3252	1518	2663	Ireland	C#
3253	Tweet3253	User3253	2667	2755	Netherlands	Python
3254	Tweet3254	User3254	2421	1927	Romania	JavaScript
3255	Tweet3255	User3255	3625	4457	Cyprus	PHP
3256	Tweet3256	User3256	4405	257	Slovenia	Ruby
3257	Tweet3257	User3257	1958	40	Slovenia	Obj C
3258	Tweet3258	User3258	1958	4737	Bulgaria	C#
3259	Tweet3259	User3259	1125	395	Spain	PHP
3260	Tweet3260	User3260	473	3031	Portugal	PHP
3261	Tweet3261	User3261	4217	4394	United Kingdom	Python
3262	Tweet3262	User3262	3345	1636	Bulgaria	C++
3263	Tweet3263	User3263	3675	3740	Slovenia	Java
3264	Tweet3264	User3264	2007	1116	Hungary	Java
3265	Tweet3265	User3265	4469	3448	Finland	Ruby
3266	Tweet3266	User3266	224	765	Finland	JavaScript
3267	Tweet3267	User3267	3160	2753	Croatia	C
3268	Tweet3268	User3268	2584	1720	Cyprus	Visual Basic
3269	Tweet3269	User3269	540	4419	Portugal	JavaScript
3270	Tweet3270	User3270	806	3769	Denmark	Visual Basic
3271	Tweet3271	User3271	4367	4822	Romania	C++
3272	Tweet3272	User3272	477	436	Finland	Python
3273	Tweet3273	User3273	3857	2274	Germany	Java
3274	Tweet3274	User3274	2581	3083	Cyprus	C++
3275	Tweet3275	User3275	1816	3937	Belgium	C
3276	Tweet3276	User3276	4622	4308	Slovenia	Visual Basic
3277	Tweet3277	User3277	2093	3187	Italy	C++
3278	Tweet3278	User3278	658	429	Cyprus	Visual Basic
3279	Tweet3279	User3279	1279	182	Portugal	Ruby
3280	Tweet3280	User3280	4628	4981	Ireland	C++
3281	Tweet3281	User3281	3922	4231	Italy	Visual Basic
3282	Tweet3282	User3282	4926	4916	Bulgaria	C++
3283	Tweet3283	User3283	529	1838	Belgium	Ruby
3284	Tweet3284	User3284	2248	1997	Poland	Visual Basic
3285	Tweet3285	User3285	1629	4112	Ireland	Python
3286	Tweet3286	User3286	806	879	Spain	JavaScript
3287	Tweet3287	User3287	4086	2638	France	PHP
3288	Tweet3288	User3288	485	2236	Poland	JavaScript
3289	Tweet3289	User3289	996	2465	Malta	Ruby
3290	Tweet3290	User3290	4443	647	Lithuania	C
3291	Tweet3291	User3291	776	2631	Romania	C
3292	Tweet3292	User3292	671	3851	Cyprus	C
3293	Tweet3293	User3293	3272	2732	Slovenia	Ruby
3294	Tweet3294	User3294	3612	3526	Austria	Python
3295	Tweet3295	User3295	796	1934	Belgium	JavaScript
3296	Tweet3296	User3296	2126	1866	Latvia	PHP
3297	Tweet3297	User3297	3394	1704	Slovakia	Obj C
3298	Tweet3298	User3298	4153	1041	Slovakia	C
3299	Tweet3299	User3299	942	2381	Cyprus	PHP
3300	Tweet3300	User3300	1194	961	Hungary	JavaScript
3301	Tweet3301	User3301	2550	2214	Latvia	C++
3302	Tweet3302	User3302	2975	1239	Netherlands	Scala
3303	Tweet3303	User3303	3710	3991	Bulgaria	C++
3304	Tweet3304	User3304	1830	1079	Denmark	Scala
3305	Tweet3305	User3305	4267	1882	Cyprus	JavaScript
3306	Tweet3306	User3306	636	2458	France	C#
3307	Tweet3307	User3307	1067	3939	Malta	JavaScript
3308	Tweet3308	User3308	4994	4468	Netherlands	Scala
3309	Tweet3309	User3309	1188	31	Slovakia	C#
3310	Tweet3310	User3310	436	2722	Slovakia	C++
3311	Tweet3311	User3311	657	3380	Ireland	Python
3312	Tweet3312	User3312	3052	201	United Kingdom	Python
3313	Tweet3313	User3313	3821	2300	Malta	C
3314	Tweet3314	User3314	131	4141	Italy	JavaScript
3315	Tweet3315	User3315	2272	4187	Latvia	PHP
3316	Tweet3316	User3316	4466	1260	Cyprus	PHP
3317	Tweet3317	User3317	3537	443	Malta	Scala
3318	Tweet3318	User3318	2485	1909	Netherlands	C#
3319	Tweet3319	User3319	588	2969	Latvia	Scala
3320	Tweet3320	User3320	2721	1220	Malta	Obj C
3321	Tweet3321	User3321	623	2047	Latvia	JavaScript
3322	Tweet3322	User3322	2368	4976	Romania	C#
3323	Tweet3323	User3323	3116	1068	Cyprus	Python
3324	Tweet3324	User3324	234	1766	France	C++
3325	Tweet3325	User3325	63	4985	United Kingdom	Obj C
3326	Tweet3326	User3326	2578	3153	Latvia	Scala
3327	Tweet3327	User3327	4191	632	Austria	JavaScript
3328	Tweet3328	User3328	1945	885	Romania	JavaScript
3329	Tweet3329	User3329	3685	1218	Malta	C++
3330	Tweet3330	User3330	710	427	Poland	Java
3331	Tweet3331	User3331	2940	3555	Spain	JavaScript
3332	Tweet3332	User3332	4150	2683	Finland	Visual Basic
3333	Tweet3333	User3333	2964	4024	Poland	C#
3334	Tweet3334	User3334	3687	1600	Italy	C++
3335	Tweet3335	User3335	2970	207	Croatia	PHP
3336	Tweet3336	User3336	2199	4703	Lithuania	Java
3337	Tweet3337	User3337	4708	4468	Italy	Visual Basic
3338	Tweet3338	User3338	1619	2657	Spain	C
3339	Tweet3339	User3339	2104	3861	United Kingdom	Scala
3340	Tweet3340	User3340	1991	3333	Estonia	Ruby
3341	Tweet3341	User3341	3459	4542	France	JavaScript
3342	Tweet3342	User3342	2173	1568	Poland	Python
3343	Tweet3343	User3343	2913	3702	Netherlands	JavaScript
3344	Tweet3344	User3344	2915	3348	Ireland	Ruby
3345	Tweet3345	User3345	4223	2634	Luxembourg	PHP
3346	Tweet3346	User3346	654	597	Sweden	C++
3347	Tweet3347	User3347	3995	2702	Cyprus	Obj C
3348	Tweet3348	User3348	4841	4564	Czech Republic	PHP
3349	Tweet3349	User3349	460	3256	Malta	C#
3350	Tweet3350	User3350	3857	834	Czech Republic	Ruby
3351	Tweet3351	User3351	1217	3805	Belgium	C#
3352	Tweet3352	User3352	2694	1099	Finland	PHP
3353	Tweet3353	User3353	4074	886	Austria	C#
3354	Tweet3354	User3354	1809	2134	United Kingdom	C++
3355	Tweet3355	User3355	1337	711	Czech Republic	Ruby
3356	Tweet3356	User3356	4275	1840	Lithuania	Python
3357	Tweet3357	User3357	3047	3229	Latvia	Scala
3358	Tweet3358	User3358	3820	40	Poland	Java
3359	Tweet3359	User3359	3345	3997	Finland	PHP
3360	Tweet3360	User3360	2314	2413	Romania	Scala
3361	Tweet3361	User3361	483	4360	Austria	C#
3362	Tweet3362	User3362	2450	4123	United Kingdom	Scala
3363	Tweet3363	User3363	3175	4021	Finland	Scala
3364	Tweet3364	User3364	4572	4068	Italy	Obj C
3365	Tweet3365	User3365	2111	1818	Luxembourg	Ruby
3366	Tweet3366	User3366	1184	522	Latvia	Ruby
3367	Tweet3367	User3367	567	2329	Netherlands	Scala
3368	Tweet3368	User3368	3886	4178	Slovakia	C
3369	Tweet3369	User3369	300	1235	Czech Republic	C
3370	Tweet3370	User3370	2420	1364	Slovakia	C++
3371	Tweet3371	User3371	1722	3153	Netherlands	C++
3372	Tweet3372	User3372	3501	322	Sweden	C
3373	Tweet3373	User3373	2286	4527	United Kingdom	Obj C
3374	Tweet3374	User3374	730	3670	Italy	C
3375	Tweet3375	User3375	3470	4934	Croatia	C++
3376	Tweet3376	User3376	2896	3734	Slovenia	Scala
3377	Tweet3377	User3377	4155	2891	Netherlands	C
3378	Tweet3378	User3378	4322	2384	Poland	Ruby
3379	Tweet3379	User3379	2735	323	Latvia	Scala
3380	Tweet3380	User3380	2748	3897	Netherlands	Java
3381	Tweet3381	User3381	738	1678	Cyprus	C++
3382	Tweet3382	User3382	2976	3498	Ireland	Obj C
3383	Tweet3383	User3383	3624	3771	Denmark	Ruby
3384	Tweet3384	User3384	2630	2217	Luxembourg	Python
3385	Tweet3385	User3385	2627	710	Greece	C#
3386	Tweet3386	User3386	667	4469	Finland	Scala
3387	Tweet3387	User3387	670	2672	Belgium	C++
3388	Tweet3388	User3388	4204	3665	Ireland	C
3389	Tweet3389	User3389	2900	1155	Portugal	C#
3390	Tweet3390	User3390	2401	3046	Netherlands	JavaScript
3391	Tweet3391	User3391	2848	4235	Lithuania	C
3392	Tweet3392	User3392	1147	2411	Germany	Python
3393	Tweet3393	User3393	2460	1162	Poland	C#
3394	Tweet3394	User3394	4441	4547	Lithuania	C#
3395	Tweet3395	User3395	4791	1153	Slovakia	Python
3396	Tweet3396	User3396	1642	1322	Poland	PHP
3397	Tweet3397	User3397	1547	2507	Hungary	Java
3398	Tweet3398	User3398	734	3549	Finland	JavaScript
3399	Tweet3399	User3399	4750	2831	Finland	Visual Basic
3400	Tweet3400	User3400	4280	2041	Czech Republic	Python
3401	Tweet3401	User3401	789	200	Luxembourg	JavaScript
3402	Tweet3402	User3402	916	2830	Germany	Visual Basic
3403	Tweet3403	User3403	3640	905	Latvia	Java
3404	Tweet3404	User3404	4160	927	Estonia	Python
3405	Tweet3405	User3405	4602	2194	Lithuania	C++
3406	Tweet3406	User3406	3463	2544	Poland	Obj C
3407	Tweet3407	User3407	2934	2957	Netherlands	C
3408	Tweet3408	User3408	1151	2873	Greece	Obj C
3409	Tweet3409	User3409	1962	3988	Lithuania	C#
3410	Tweet3410	User3410	183	3466	Belgium	PHP
3411	Tweet3411	User3411	1620	4068	Slovakia	C#
3412	Tweet3412	User3412	4930	2355	Italy	C
3413	Tweet3413	User3413	1263	248	United Kingdom	PHP
3414	Tweet3414	User3414	3537	2741	Latvia	C#
3415	Tweet3415	User3415	2787	2824	Belgium	Java
3416	Tweet3416	User3416	3842	2545	Belgium	Python
3417	Tweet3417	User3417	1829	3592	Belgium	C++
3418	Tweet3418	User3418	4038	1502	Ireland	C++
3419	Tweet3419	User3419	647	206	Germany	PHP
3420	Tweet3420	User3420	4315	3964	Greece	Scala
3421	Tweet3421	User3421	3970	971	Slovakia	C
3422	Tweet3422	User3422	4213	1955	France	Java
3423	Tweet3423	User3423	4568	951	Latvia	PHP
3424	Tweet3424	User3424	646	2	Croatia	Scala
3425	Tweet3425	User3425	3594	685	Spain	Python
3426	Tweet3426	User3426	3805	4677	Croatia	PHP
3427	Tweet3427	User3427	1489	3707	Malta	Ruby
3428	Tweet3428	User3428	2502	4342	Italy	Scala
3429	Tweet3429	User3429	3658	3640	Bulgaria	Visual Basic
3430	Tweet3430	User3430	4646	3728	Estonia	Obj C
3431	Tweet3431	User3431	4010	4469	Slovenia	Scala
3432	Tweet3432	User3432	290	3024	Netherlands	Visual Basic
3433	Tweet3433	User3433	714	966	Slovenia	C#
3434	Tweet3434	User3434	4760	2477	Italy	Obj C
3435	Tweet3435	User3435	1685	3026	Croatia	C#
3436	Tweet3436	User3436	4539	3107	Latvia	C
3437	Tweet3437	User3437	4508	3250	Sweden	Java
3438	Tweet3438	User3438	1538	2541	Finland	C#
3439	Tweet3439	User3439	2712	1481	Italy	Python
3440	Tweet3440	User3440	2582	3323	Latvia	C
3441	Tweet3441	User3441	2953	804	Lithuania	Python
3442	Tweet3442	User3442	3119	1182	Finland	C++
3443	Tweet3443	User3443	3266	26	Romania	Python
3444	Tweet3444	User3444	125	2001	Malta	Python
3445	Tweet3445	User3445	3703	3870	Czech Republic	C#
3446	Tweet3446	User3446	966	2893	France	C++
3447	Tweet3447	User3447	4186	1411	United Kingdom	Python
3448	Tweet3448	User3448	1922	979	Austria	Visual Basic
3449	Tweet3449	User3449	2733	3271	Cyprus	C#
3450	Tweet3450	User3450	4169	2213	Germany	Obj C
3451	Tweet3451	User3451	3107	226	Spain	C
3452	Tweet3452	User3452	1097	217	Bulgaria	Obj C
3453	Tweet3453	User3453	2946	2094	Czech Republic	C
3454	Tweet3454	User3454	452	2824	Spain	C#
3455	Tweet3455	User3455	328	2774	Austria	Java
3456	Tweet3456	User3456	106	2969	Netherlands	JavaScript
3457	Tweet3457	User3457	3981	146	Croatia	Java
3458	Tweet3458	User3458	4297	2679	Malta	C
3459	Tweet3459	User3459	2694	3236	Croatia	Obj C
3460	Tweet3460	User3460	2590	4453	Denmark	Obj C
3461	Tweet3461	User3461	3158	2624	Croatia	Ruby
3462	Tweet3462	User3462	3310	4126	Czech Republic	Visual Basic
3463	Tweet3463	User3463	2519	1517	Finland	C#
3464	Tweet3464	User3464	3298	2051	Slovenia	Python
3465	Tweet3465	User3465	4490	4188	Netherlands	Scala
3466	Tweet3466	User3466	383	3294	Sweden	Visual Basic
3467	Tweet3467	User3467	940	1518	Cyprus	Scala
3468	Tweet3468	User3468	2754	3837	France	Obj C
3469	Tweet3469	User3469	498	767	Denmark	Scala
3470	Tweet3470	User3470	147	232	Belgium	Visual Basic
3471	Tweet3471	User3471	1286	4458	Poland	C++
3472	Tweet3472	User3472	4714	2633	Greece	Scala
3473	Tweet3473	User3473	4198	3228	Ireland	C
3474	Tweet3474	User3474	3294	1947	Slovenia	PHP
3475	Tweet3475	User3475	2850	2768	Lithuania	JavaScript
3476	Tweet3476	User3476	103	3948	Netherlands	Ruby
3477	Tweet3477	User3477	4594	3460	Denmark	Visual Basic
3478	Tweet3478	User3478	1091	2069	Sweden	PHP
3479	Tweet3479	User3479	4418	2960	Romania	Java
3480	Tweet3480	User3480	3293	4361	Denmark	PHP
3481	Tweet3481	User3481	2594	2358	Portugal	PHP
3482	Tweet3482	User3482	820	4403	Czech Republic	Scala
3483	Tweet3483	User3483	1662	2224	Sweden	C
3484	Tweet3484	User3484	4068	2468	Italy	Visual Basic
3485	Tweet3485	User3485	2087	3309	Austria	C#
3486	Tweet3486	User3486	3694	450	Italy	Ruby
3487	Tweet3487	User3487	681	3287	Bulgaria	Visual Basic
3488	Tweet3488	User3488	2058	2392	Romania	Obj C
3489	Tweet3489	User3489	1214	1501	Austria	Java
3490	Tweet3490	User3490	3584	3806	Hungary	JavaScript
3491	Tweet3491	User3491	4438	82	Greece	Scala
3492	Tweet3492	User3492	4634	3638	Croatia	C#
3493	Tweet3493	User3493	2556	3573	United Kingdom	C#
3494	Tweet3494	User3494	3224	750	Poland	Scala
3495	Tweet3495	User3495	874	4413	Slovenia	Python
3496	Tweet3496	User3496	2519	1614	Sweden	Java
3497	Tweet3497	User3497	2857	2784	Romania	PHP
3498	Tweet3498	User3498	2499	2756	Spain	Scala
3499	Tweet3499	User3499	2523	4790	United Kingdom	Ruby
3500	Tweet3500	User3500	2105	4960	Croatia	Obj C
3501	Tweet3501	User3501	4981	2892	Italy	Visual Basic
3502	Tweet3502	User3502	2606	2274	Poland	C++
3503	Tweet3503	User3503	3235	3736	Ireland	Java
3504	Tweet3504	User3504	2840	4981	Italy	Ruby
3505	Tweet3505	User3505	3718	2026	Greece	Obj C
3506	Tweet3506	User3506	1796	4298	Sweden	C
3507	Tweet3507	User3507	429	3743	Poland	Java
3508	Tweet3508	User3508	965	750	Denmark	Ruby
3509	Tweet3509	User3509	2683	3902	France	C#
3510	Tweet3510	User3510	898	3597	Finland	Java
3511	Tweet3511	User3511	4185	349	Greece	Python
3512	Tweet3512	User3512	1484	4149	Netherlands	Scala
3513	Tweet3513	User3513	1270	578	Luxembourg	Python
3514	Tweet3514	User3514	3192	1165	Sweden	Ruby
3515	Tweet3515	User3515	4516	2286	Ireland	PHP
3516	Tweet3516	User3516	4127	3003	Finland	Visual Basic
3517	Tweet3517	User3517	818	1410	Luxembourg	Python
3518	Tweet3518	User3518	3679	815	Finland	JavaScript
3519	Tweet3519	User3519	1530	3991	Lithuania	C++
3520	Tweet3520	User3520	4931	585	Belgium	C
3521	Tweet3521	User3521	352	1629	Netherlands	PHP
3522	Tweet3522	User3522	1277	1271	Italy	Visual Basic
3523	Tweet3523	User3523	1329	2663	Poland	PHP
3524	Tweet3524	User3524	1737	730	Germany	PHP
3525	Tweet3525	User3525	35	2737	Cyprus	Visual Basic
3526	Tweet3526	User3526	2227	3520	Slovenia	C
3527	Tweet3527	User3527	315	905	Czech Republic	Visual Basic
3528	Tweet3528	User3528	1402	3038	Italy	PHP
3529	Tweet3529	User3529	4679	4407	Slovenia	C#
3530	Tweet3530	User3530	1136	1158	Finland	Java
3531	Tweet3531	User3531	2262	2951	Austria	Scala
3532	Tweet3532	User3532	2203	3210	Greece	C++
3533	Tweet3533	User3533	1801	508	Slovenia	Java
3534	Tweet3534	User3534	682	1975	Bulgaria	C#
3535	Tweet3535	User3535	4269	4191	Italy	Ruby
3536	Tweet3536	User3536	3081	1600	Italy	Visual Basic
3537	Tweet3537	User3537	4935	4088	Sweden	Visual Basic
3538	Tweet3538	User3538	4406	3269	Malta	Obj C
3539	Tweet3539	User3539	1777	4262	Cyprus	C++
3540	Tweet3540	User3540	2749	4799	Portugal	Scala
3541	Tweet3541	User3541	1941	1404	Latvia	C
3542	Tweet3542	User3542	388	1997	Bulgaria	Scala
3543	Tweet3543	User3543	2314	1813	Cyprus	Scala
3544	Tweet3544	User3544	3829	3429	Slovenia	Obj C
3545	Tweet3545	User3545	530	4227	Ireland	PHP
3546	Tweet3546	User3546	2369	1473	Estonia	C#
3547	Tweet3547	User3547	2315	4189	Cyprus	C
3548	Tweet3548	User3548	2059	180	Slovakia	PHP
3549	Tweet3549	User3549	4139	1589	Croatia	Visual Basic
3550	Tweet3550	User3550	1979	3508	Poland	PHP
3551	Tweet3551	User3551	3250	3797	Croatia	Visual Basic
3552	Tweet3552	User3552	3024	3689	Spain	JavaScript
3553	Tweet3553	User3553	1190	1744	Sweden	Java
3554	Tweet3554	User3554	315	1296	Hungary	JavaScript
3555	Tweet3555	User3555	139	1105	Malta	C
3556	Tweet3556	User3556	768	3879	Romania	C++
3557	Tweet3557	User3557	2187	4679	Hungary	Obj C
3558	Tweet3558	User3558	453	2340	Germany	Obj C
3559	Tweet3559	User3559	2665	1645	Slovenia	C#
3560	Tweet3560	User3560	4023	3858	Lithuania	PHP
3561	Tweet3561	User3561	3829	4300	Denmark	Python
3562	Tweet3562	User3562	3660	2297	Greece	Python
3563	Tweet3563	User3563	3609	860	Latvia	Python
3564	Tweet3564	User3564	4711	4493	Romania	JavaScript
3565	Tweet3565	User3565	49	1679	Slovakia	Obj C
3566	Tweet3566	User3566	28	3599	Slovenia	Java
3567	Tweet3567	User3567	2723	4397	Lithuania	C++
3568	Tweet3568	User3568	2030	4732	United Kingdom	PHP
3569	Tweet3569	User3569	3679	1440	United Kingdom	JavaScript
3570	Tweet3570	User3570	4580	87	Poland	Visual Basic
3571	Tweet3571	User3571	2	4142	Ireland	PHP
3572	Tweet3572	User3572	4420	1790	Romania	Scala
3573	Tweet3573	User3573	3950	4002	Ireland	Obj C
3574	Tweet3574	User3574	117	43	Romania	C
3575	Tweet3575	User3575	2768	2318	Portugal	Java
3576	Tweet3576	User3576	928	4082	Slovakia	Java
3577	Tweet3577	User3577	2625	3466	Czech Republic	Python
3578	Tweet3578	User3578	2616	4039	France	Visual Basic
3579	Tweet3579	User3579	164	3783	Poland	Ruby
3580	Tweet3580	User3580	1048	4977	Cyprus	Java
3581	Tweet3581	User3581	2454	2679	Belgium	C++
3582	Tweet3582	User3582	4134	4987	Malta	Python
3583	Tweet3583	User3583	4651	2425	Denmark	Python
3584	Tweet3584	User3584	3436	4629	Ireland	C#
3585	Tweet3585	User3585	4177	175	Finland	JavaScript
3586	Tweet3586	User3586	236	3390	Portugal	PHP
3587	Tweet3587	User3587	3241	1196	Finland	C
3588	Tweet3588	User3588	522	555	Finland	JavaScript
3589	Tweet3589	User3589	4140	1606	Austria	Java
3590	Tweet3590	User3590	987	203	France	Visual Basic
3591	Tweet3591	User3591	4922	2400	Finland	Visual Basic
3592	Tweet3592	User3592	1915	2263	Germany	Ruby
3593	Tweet3593	User3593	2335	431	Slovenia	PHP
3594	Tweet3594	User3594	749	1905	Lithuania	Scala
3595	Tweet3595	User3595	4610	2924	Hungary	C#
3596	Tweet3596	User3596	54	3907	Ireland	Ruby
3597	Tweet3597	User3597	1757	4420	Lithuania	Java
3598	Tweet3598	User3598	2518	745	United Kingdom	C
3599	Tweet3599	User3599	1800	4068	Cyprus	Ruby
3600	Tweet3600	User3600	2103	933	Portugal	PHP
3601	Tweet3601	User3601	372	2009	Slovenia	C#
3602	Tweet3602	User3602	4980	1247	Cyprus	JavaScript
3603	Tweet3603	User3603	3943	1404	Latvia	Java
3604	Tweet3604	User3604	2535	1269	Slovakia	Java
3605	Tweet3605	User3605	3653	1208	Czech Republic	Python
3606	Tweet3606	User3606	994	4634	Finland	Ruby
3607	Tweet3607	User3607	1141	2351	Austria	Visual Basic
3608	Tweet3608	User3608	129	139	Sweden	Java
3609	Tweet3609	User3609	3403	2764	Italy	JavaScript
3610	Tweet3610	User3610	354	2226	Bulgaria	Ruby
3611	Tweet3611	User3611	2085	3375	Latvia	C++
3612	Tweet3612	User3612	3152	4417	Malta	Python
3613	Tweet3613	User3613	2609	4540	Portugal	PHP
3614	Tweet3614	User3614	3610	1716	Slovakia	C++
3615	Tweet3615	User3615	1518	827	Estonia	C
3616	Tweet3616	User3616	135	662	France	C#
3617	Tweet3617	User3617	2755	3008	Netherlands	C
3618	Tweet3618	User3618	1827	3714	Netherlands	Java
3619	Tweet3619	User3619	2189	1831	Romania	Ruby
3620	Tweet3620	User3620	435	626	Ireland	C++
3621	Tweet3621	User3621	751	2977	Ireland	Java
3622	Tweet3622	User3622	1553	3660	Estonia	Ruby
3623	Tweet3623	User3623	2180	4268	United Kingdom	JavaScript
3624	Tweet3624	User3624	3175	3421	Netherlands	C#
3625	Tweet3625	User3625	3714	1679	United Kingdom	Visual Basic
3626	Tweet3626	User3626	1196	4894	Luxembourg	Python
3627	Tweet3627	User3627	2525	2900	Greece	C
3628	Tweet3628	User3628	1242	2523	Croatia	Visual Basic
3629	Tweet3629	User3629	3576	4548	Czech Republic	PHP
3630	Tweet3630	User3630	4205	71	Luxembourg	C#
3631	Tweet3631	User3631	3740	1624	Cyprus	Obj C
3632	Tweet3632	User3632	2604	4809	Austria	C
3633	Tweet3633	User3633	3010	3453	Spain	C++
3634	Tweet3634	User3634	1389	3313	Netherlands	PHP
3635	Tweet3635	User3635	1764	404	Sweden	Ruby
3636	Tweet3636	User3636	4835	2136	Ireland	PHP
3637	Tweet3637	User3637	2148	2181	Greece	C
3638	Tweet3638	User3638	1032	3239	Slovakia	C
3639	Tweet3639	User3639	3279	296	Greece	C++
3640	Tweet3640	User3640	3137	4564	Slovakia	Python
3641	Tweet3641	User3641	1476	3908	Czech Republic	Python
3642	Tweet3642	User3642	1706	3633	Poland	Obj C
3643	Tweet3643	User3643	2263	1415	Greece	Java
3644	Tweet3644	User3644	4776	3889	Luxembourg	Scala
3645	Tweet3645	User3645	3616	1798	Cyprus	C
3646	Tweet3646	User3646	4018	3823	Croatia	C
3647	Tweet3647	User3647	3760	509	France	PHP
3648	Tweet3648	User3648	1428	3699	Bulgaria	JavaScript
3649	Tweet3649	User3649	3438	604	United Kingdom	Visual Basic
3650	Tweet3650	User3650	4070	2123	Malta	Python
3651	Tweet3651	User3651	4212	3319	France	Scala
3652	Tweet3652	User3652	3043	2686	Slovenia	C++
3653	Tweet3653	User3653	1569	3573	Czech Republic	C++
3654	Tweet3654	User3654	4983	655	Romania	Scala
3655	Tweet3655	User3655	3736	4280	Portugal	Ruby
3656	Tweet3656	User3656	1030	2909	Lithuania	C++
3657	Tweet3657	User3657	672	3697	Austria	Visual Basic
3658	Tweet3658	User3658	3664	1306	Romania	Visual Basic
3659	Tweet3659	User3659	989	1090	Spain	C#
3660	Tweet3660	User3660	2140	1099	Czech Republic	C
3661	Tweet3661	User3661	4304	1818	Lithuania	Java
3662	Tweet3662	User3662	1957	1917	Germany	C++
3663	Tweet3663	User3663	1048	3906	Greece	C++
3664	Tweet3664	User3664	3518	1935	Estonia	Java
3665	Tweet3665	User3665	3492	1646	Latvia	JavaScript
3666	Tweet3666	User3666	3995	404	Romania	Ruby
3667	Tweet3667	User3667	4538	1320	Croatia	PHP
3668	Tweet3668	User3668	4604	3248	Finland	Visual Basic
3669	Tweet3669	User3669	2274	1641	Slovenia	C++
3670	Tweet3670	User3670	4929	2570	Netherlands	Obj C
3671	Tweet3671	User3671	3215	4738	France	Java
3672	Tweet3672	User3672	1421	4922	Portugal	Java
3673	Tweet3673	User3673	2646	1853	Spain	C
3674	Tweet3674	User3674	531	296	Estonia	Java
3675	Tweet3675	User3675	3427	3130	Bulgaria	C
3676	Tweet3676	User3676	3433	817	Hungary	PHP
3677	Tweet3677	User3677	1723	4587	France	Visual Basic
3678	Tweet3678	User3678	4171	628	Poland	Java
3679	Tweet3679	User3679	2602	1251	Denmark	C++
3680	Tweet3680	User3680	3448	1472	Spain	Java
3681	Tweet3681	User3681	2341	3360	Belgium	C#
3682	Tweet3682	User3682	1489	3388	Sweden	Obj C
3683	Tweet3683	User3683	584	2741	Latvia	JavaScript
3684	Tweet3684	User3684	4401	4598	Germany	C++
3685	Tweet3685	User3685	2199	1191	Czech Republic	Scala
3686	Tweet3686	User3686	1826	4949	Bulgaria	Visual Basic
3687	Tweet3687	User3687	929	1411	Belgium	Obj C
3688	Tweet3688	User3688	756	4539	Italy	PHP
3689	Tweet3689	User3689	2080	2052	Finland	Java
3690	Tweet3690	User3690	4203	2274	Luxembourg	C#
3691	Tweet3691	User3691	3153	431	Czech Republic	Ruby
3692	Tweet3692	User3692	2562	728	Belgium	Visual Basic
3693	Tweet3693	User3693	2637	128	Italy	Obj C
3694	Tweet3694	User3694	2834	4280	Cyprus	Ruby
3695	Tweet3695	User3695	1418	1866	Netherlands	Scala
3696	Tweet3696	User3696	4350	3595	Estonia	Obj C
3697	Tweet3697	User3697	431	296	Latvia	C
3698	Tweet3698	User3698	4135	2852	Latvia	Java
3699	Tweet3699	User3699	2154	639	Austria	C
3700	Tweet3700	User3700	987	4686	Austria	Ruby
3701	Tweet3701	User3701	1843	4610	Malta	C++
3702	Tweet3702	User3702	161	4174	Portugal	PHP
3703	Tweet3703	User3703	4447	4374	Poland	Ruby
3704	Tweet3704	User3704	2085	1250	Denmark	Ruby
3705	Tweet3705	User3705	1333	2069	Greece	C++
3706	Tweet3706	User3706	1485	4165	Czech Republic	Python
3707	Tweet3707	User3707	447	2334	Romania	Visual Basic
3708	Tweet3708	User3708	4321	1016	Slovenia	Java
3709	Tweet3709	User3709	2918	2902	Sweden	Obj C
3710	Tweet3710	User3710	2841	3157	Lithuania	Visual Basic
3711	Tweet3711	User3711	625	3068	Austria	Python
3712	Tweet3712	User3712	2894	2438	Finland	C++
3713	Tweet3713	User3713	2665	4651	Finland	Scala
3714	Tweet3714	User3714	546	3102	Romania	JavaScript
3715	Tweet3715	User3715	4611	1821	Greece	C++
3716	Tweet3716	User3716	2748	2421	Ireland	Visual Basic
3717	Tweet3717	User3717	4874	3735	Estonia	C++
3718	Tweet3718	User3718	3299	477	Sweden	JavaScript
3719	Tweet3719	User3719	1374	1616	Denmark	C++
3720	Tweet3720	User3720	2411	3206	Luxembourg	C++
3721	Tweet3721	User3721	357	3878	Sweden	C++
3722	Tweet3722	User3722	3641	4024	Cyprus	JavaScript
3723	Tweet3723	User3723	2138	190	Germany	PHP
3724	Tweet3724	User3724	474	2439	Greece	C
3725	Tweet3725	User3725	2753	2042	Slovakia	PHP
3726	Tweet3726	User3726	2074	1179	Greece	Obj C
3727	Tweet3727	User3727	358	4737	Spain	Ruby
3728	Tweet3728	User3728	3154	1734	Germany	C#
3729	Tweet3729	User3729	2848	2182	Slovenia	C++
3730	Tweet3730	User3730	25	2623	Slovakia	Python
3731	Tweet3731	User3731	1813	5	Cyprus	Java
3732	Tweet3732	User3732	1846	18	Greece	PHP
3733	Tweet3733	User3733	3516	3892	Latvia	Scala
3734	Tweet3734	User3734	3718	2008	Denmark	C++
3735	Tweet3735	User3735	555	3093	Greece	Python
3736	Tweet3736	User3736	236	2701	Belgium	Python
3737	Tweet3737	User3737	4615	1559	Hungary	Obj C
3738	Tweet3738	User3738	3245	2641	Lithuania	Java
3739	Tweet3739	User3739	1748	4544	Hungary	Java
3740	Tweet3740	User3740	3760	925	Germany	Obj C
3741	Tweet3741	User3741	3088	1522	Bulgaria	PHP
3742	Tweet3742	User3742	2549	2278	Sweden	Scala
3743	Tweet3743	User3743	3939	198	Bulgaria	C++
3744	Tweet3744	User3744	4120	378	Poland	Scala
3745	Tweet3745	User3745	2170	405	Croatia	C++
3746	Tweet3746	User3746	3289	87	Belgium	C#
3747	Tweet3747	User3747	394	3937	Cyprus	Java
3748	Tweet3748	User3748	3945	2274	Finland	C
3749	Tweet3749	User3749	1844	1141	United Kingdom	Scala
3750	Tweet3750	User3750	1349	2012	Bulgaria	Java
3751	Tweet3751	User3751	1284	1257	Netherlands	Obj C
3752	Tweet3752	User3752	3458	3726	United Kingdom	C++
3753	Tweet3753	User3753	799	4203	Netherlands	Ruby
3754	Tweet3754	User3754	625	1226	Luxembourg	Java
3755	Tweet3755	User3755	4817	4835	Sweden	C++
3756	Tweet3756	User3756	1262	2066	Slovenia	Java
3757	Tweet3757	User3757	2968	4410	Slovakia	C#
3758	Tweet3758	User3758	1001	3435	Slovenia	JavaScript
3759	Tweet3759	User3759	2559	3842	Czech Republic	Scala
3760	Tweet3760	User3760	889	2084	Belgium	Java
3761	Tweet3761	User3761	233	2291	Latvia	Scala
3762	Tweet3762	User3762	4829	4353	France	Java
3763	Tweet3763	User3763	814	4302	France	Visual Basic
3764	Tweet3764	User3764	4414	2275	Ireland	Ruby
3765	Tweet3765	User3765	3758	4605	United Kingdom	PHP
3766	Tweet3766	User3766	2378	3539	Greece	Python
3767	Tweet3767	User3767	1238	3842	Denmark	PHP
3768	Tweet3768	User3768	3495	1691	Spain	C#
3769	Tweet3769	User3769	4691	4518	Sweden	Java
3770	Tweet3770	User3770	3688	2451	Finland	Python
3771	Tweet3771	User3771	4288	4864	Malta	Python
3772	Tweet3772	User3772	796	4135	Finland	Java
3773	Tweet3773	User3773	1891	4863	Luxembourg	Java
3774	Tweet3774	User3774	1658	3079	Slovenia	JavaScript
3775	Tweet3775	User3775	1166	1796	Poland	JavaScript
3776	Tweet3776	User3776	4005	3164	Netherlands	Ruby
3777	Tweet3777	User3777	4880	1400	Czech Republic	Scala
3778	Tweet3778	User3778	1274	160	Sweden	Obj C
3779	Tweet3779	User3779	2790	2875	Portugal	C#
3780	Tweet3780	User3780	2245	2826	Poland	Obj C
3781	Tweet3781	User3781	4168	1993	Estonia	Scala
3782	Tweet3782	User3782	236	3490	Greece	JavaScript
3783	Tweet3783	User3783	489	3726	Belgium	Python
3784	Tweet3784	User3784	4072	2334	Czech Republic	JavaScript
3785	Tweet3785	User3785	215	4407	France	C++
3786	Tweet3786	User3786	709	4416	Poland	C
3787	Tweet3787	User3787	1802	666	Luxembourg	Python
3788	Tweet3788	User3788	3907	3119	Greece	Ruby
3789	Tweet3789	User3789	4385	1212	Latvia	Scala
3790	Tweet3790	User3790	1595	1871	United Kingdom	Ruby
3791	Tweet3791	User3791	3248	363	Lithuania	C++
3792	Tweet3792	User3792	2646	2269	United Kingdom	Python
3793	Tweet3793	User3793	99	339	United Kingdom	Obj C
3794	Tweet3794	User3794	1021	2779	Finland	C++
3795	Tweet3795	User3795	4077	2435	Bulgaria	Java
3796	Tweet3796	User3796	1678	554	Austria	PHP
3797	Tweet3797	User3797	904	3515	Bulgaria	C++
3798	Tweet3798	User3798	4954	1407	Germany	PHP
3799	Tweet3799	User3799	760	1502	Croatia	C
3800	Tweet3800	User3800	3489	4866	Romania	C#
3801	Tweet3801	User3801	4666	154	Czech Republic	C
3802	Tweet3802	User3802	3833	1600	Estonia	Scala
3803	Tweet3803	User3803	1708	3910	Austria	Obj C
3804	Tweet3804	User3804	1912	2622	Denmark	Ruby
3805	Tweet3805	User3805	3209	2103	United Kingdom	JavaScript
3806	Tweet3806	User3806	823	2477	Germany	C
3807	Tweet3807	User3807	794	380	France	Ruby
3808	Tweet3808	User3808	1595	2973	Italy	Ruby
3809	Tweet3809	User3809	1726	4126	Poland	Python
3810	Tweet3810	User3810	1913	2464	Belgium	JavaScript
3811	Tweet3811	User3811	4293	133	Belgium	PHP
3812	Tweet3812	User3812	2736	738	Ireland	Java
3813	Tweet3813	User3813	3179	1269	Czech Republic	Scala
3814	Tweet3814	User3814	2918	2408	Poland	Ruby
3815	Tweet3815	User3815	3892	655	Italy	PHP
3816	Tweet3816	User3816	2328	484	Cyprus	Python
3817	Tweet3817	User3817	1670	195	United Kingdom	JavaScript
3818	Tweet3818	User3818	848	2252	Austria	C++
3819	Tweet3819	User3819	1835	4464	Belgium	Ruby
3820	Tweet3820	User3820	3303	4477	Bulgaria	C++
3821	Tweet3821	User3821	1688	1123	Germany	C
3822	Tweet3822	User3822	4520	3688	Netherlands	Java
3823	Tweet3823	User3823	2716	1326	Austria	Scala
3824	Tweet3824	User3824	3036	1481	United Kingdom	JavaScript
3825	Tweet3825	User3825	256	2151	Lithuania	Ruby
3826	Tweet3826	User3826	4007	175	Denmark	JavaScript
3827	Tweet3827	User3827	1522	932	Malta	C++
3828	Tweet3828	User3828	4026	1272	Germany	Obj C
3829	Tweet3829	User3829	4781	2948	Ireland	Ruby
3830	Tweet3830	User3830	3081	3716	United Kingdom	JavaScript
3831	Tweet3831	User3831	1788	1620	Cyprus	Ruby
3832	Tweet3832	User3832	2741	3982	Croatia	Ruby
3833	Tweet3833	User3833	2585	4108	United Kingdom	Scala
3834	Tweet3834	User3834	4877	3476	Slovakia	Visual Basic
3835	Tweet3835	User3835	4461	2	France	C#
3836	Tweet3836	User3836	2057	718	United Kingdom	C++
3837	Tweet3837	User3837	1475	4612	Hungary	Python
3838	Tweet3838	User3838	1197	2370	Lithuania	C
3839	Tweet3839	User3839	2948	1373	Ireland	Java
3840	Tweet3840	User3840	3864	898	Netherlands	JavaScript
3841	Tweet3841	User3841	4959	2270	Lithuania	C#
3842	Tweet3842	User3842	3718	4761	Czech Republic	Python
3843	Tweet3843	User3843	4156	1212	Slovenia	Python
3844	Tweet3844	User3844	3025	1619	Portugal	C++
3845	Tweet3845	User3845	828	1342	Poland	Java
3846	Tweet3846	User3846	247	342	Italy	Python
3847	Tweet3847	User3847	2935	1258	Germany	Obj C
3848	Tweet3848	User3848	57	4866	Germany	Python
3849	Tweet3849	User3849	2674	1749	Austria	Visual Basic
3850	Tweet3850	User3850	1220	1906	Romania	C
3851	Tweet3851	User3851	314	4905	Austria	Scala
3852	Tweet3852	User3852	4780	3725	Finland	Ruby
3853	Tweet3853	User3853	1765	4381	Germany	C
3854	Tweet3854	User3854	3854	2997	Romania	Scala
3855	Tweet3855	User3855	2595	836	United Kingdom	Scala
3856	Tweet3856	User3856	2142	115	Spain	Obj C
3857	Tweet3857	User3857	4895	4906	Finland	C#
3858	Tweet3858	User3858	4194	3935	Romania	Java
3859	Tweet3859	User3859	411	3971	France	C++
3860	Tweet3860	User3860	209	3533	Cyprus	C
3861	Tweet3861	User3861	1235	290	United Kingdom	JavaScript
3862	Tweet3862	User3862	1473	4154	Hungary	JavaScript
3863	Tweet3863	User3863	562	4117	Netherlands	C++
3864	Tweet3864	User3864	1029	4530	Malta	Visual Basic
3865	Tweet3865	User3865	90	2615	Malta	C
3866	Tweet3866	User3866	2603	2148	Malta	C
3867	Tweet3867	User3867	4670	1099	Hungary	Python
3868	Tweet3868	User3868	4296	4055	Italy	Python
3869	Tweet3869	User3869	3006	4482	United Kingdom	Ruby
3870	Tweet3870	User3870	3030	276	Hungary	JavaScript
3871	Tweet3871	User3871	223	255	Germany	Java
3872	Tweet3872	User3872	3806	3902	Croatia	Java
3873	Tweet3873	User3873	3962	1887	Slovakia	C++
3874	Tweet3874	User3874	238	233	Portugal	PHP
3875	Tweet3875	User3875	2552	4403	Denmark	C
3876	Tweet3876	User3876	2045	2315	Latvia	Python
3877	Tweet3877	User3877	1918	788	Italy	Scala
3878	Tweet3878	User3878	1278	3115	Bulgaria	Obj C
3879	Tweet3879	User3879	4065	4888	Belgium	JavaScript
3880	Tweet3880	User3880	237	3254	Finland	Obj C
3881	Tweet3881	User3881	2044	1686	Poland	Obj C
3882	Tweet3882	User3882	3537	376	Bulgaria	JavaScript
3883	Tweet3883	User3883	2781	1220	Italy	C
3884	Tweet3884	User3884	885	1536	Spain	Visual Basic
3885	Tweet3885	User3885	4096	875	Poland	C#
3886	Tweet3886	User3886	1540	2063	Romania	PHP
3887	Tweet3887	User3887	1462	1981	Belgium	Ruby
3888	Tweet3888	User3888	1497	2458	Netherlands	Ruby
3889	Tweet3889	User3889	3775	1671	Cyprus	JavaScript
3890	Tweet3890	User3890	3070	1304	Bulgaria	Java
3891	Tweet3891	User3891	4768	1331	Luxembourg	C
3892	Tweet3892	User3892	4579	2416	Bulgaria	JavaScript
3893	Tweet3893	User3893	779	982	Hungary	Ruby
3894	Tweet3894	User3894	1610	852	Poland	PHP
3895	Tweet3895	User3895	855	184	Italy	C#
3896	Tweet3896	User3896	4379	3308	Denmark	JavaScript
3897	Tweet3897	User3897	827	3347	Italy	Visual Basic
3898	Tweet3898	User3898	2045	557	Croatia	C++
3899	Tweet3899	User3899	1501	2336	Denmark	Scala
3900	Tweet3900	User3900	807	3947	Poland	PHP
3901	Tweet3901	User3901	4102	2391	Greece	Obj C
3902	Tweet3902	User3902	4780	1823	Belgium	Scala
3903	Tweet3903	User3903	3772	495	Belgium	C++
3904	Tweet3904	User3904	4021	2278	Finland	PHP
3905	Tweet3905	User3905	3941	84	Sweden	Python
3906	Tweet3906	User3906	4247	894	Hungary	Visual Basic
3907	Tweet3907	User3907	3031	1653	Slovenia	Python
3908	Tweet3908	User3908	2824	2137	Italy	Python
3909	Tweet3909	User3909	567	4029	Denmark	JavaScript
3910	Tweet3910	User3910	4617	1342	Germany	Python
3911	Tweet3911	User3911	4253	2642	Luxembourg	Java
3912	Tweet3912	User3912	1773	94	Spain	Visual Basic
3913	Tweet3913	User3913	2532	2778	Spain	C#
3914	Tweet3914	User3914	67	1393	France	C
3915	Tweet3915	User3915	3622	4698	Austria	Java
3916	Tweet3916	User3916	3251	540	Slovakia	Obj C
3917	Tweet3917	User3917	4297	2706	Belgium	Obj C
3918	Tweet3918	User3918	2693	1038	Romania	Visual Basic
3919	Tweet3919	User3919	256	4276	Slovenia	PHP
3920	Tweet3920	User3920	1672	2429	Portugal	C++
3921	Tweet3921	User3921	3045	4917	Cyprus	C
3922	Tweet3922	User3922	3866	2224	Malta	JavaScript
3923	Tweet3923	User3923	4395	2485	Austria	C++
3924	Tweet3924	User3924	336	356	Estonia	C
3925	Tweet3925	User3925	3047	4327	Portugal	PHP
3926	Tweet3926	User3926	3672	3022	Latvia	Ruby
3927	Tweet3927	User3927	878	1576	Romania	JavaScript
3928	Tweet3928	User3928	1776	857	France	Visual Basic
3929	Tweet3929	User3929	3202	1317	Austria	C#
3930	Tweet3930	User3930	3550	3843	Luxembourg	C
3931	Tweet3931	User3931	3496	1309	Poland	Visual Basic
3932	Tweet3932	User3932	628	3231	Denmark	C++
3933	Tweet3933	User3933	2215	1474	Cyprus	Python
3934	Tweet3934	User3934	1292	4858	Romania	Java
3935	Tweet3935	User3935	1794	2680	Denmark	Java
3936	Tweet3936	User3936	247	3999	Malta	Java
3937	Tweet3937	User3937	350	2102	Malta	Ruby
3938	Tweet3938	User3938	2037	2668	Luxembourg	JavaScript
3939	Tweet3939	User3939	2164	2042	Denmark	Ruby
3940	Tweet3940	User3940	3818	3067	Belgium	Python
3941	Tweet3941	User3941	2019	330	Italy	JavaScript
3942	Tweet3942	User3942	2185	3536	France	JavaScript
3943	Tweet3943	User3943	1874	3394	Hungary	PHP
3944	Tweet3944	User3944	3919	3154	Luxembourg	Java
3945	Tweet3945	User3945	4426	1395	Hungary	Ruby
3946	Tweet3946	User3946	2669	2604	Italy	C
3947	Tweet3947	User3947	2715	176	Slovenia	C
3948	Tweet3948	User3948	3010	68	Hungary	Ruby
3949	Tweet3949	User3949	3349	4121	Slovenia	Obj C
3950	Tweet3950	User3950	4615	68	Greece	Python
3951	Tweet3951	User3951	4496	1616	Hungary	Scala
3952	Tweet3952	User3952	1084	2161	Sweden	Python
3953	Tweet3953	User3953	2072	4881	Austria	Obj C
3954	Tweet3954	User3954	3199	1088	France	Obj C
3955	Tweet3955	User3955	4033	3697	Slovakia	JavaScript
3956	Tweet3956	User3956	3637	840	Denmark	C++
3957	Tweet3957	User3957	2206	166	Belgium	Ruby
3958	Tweet3958	User3958	1050	1817	Italy	Visual Basic
3959	Tweet3959	User3959	189	3123	Sweden	PHP
3960	Tweet3960	User3960	1484	3966	Hungary	C#
3961	Tweet3961	User3961	3792	1819	Lithuania	Ruby
3962	Tweet3962	User3962	4170	1326	Denmark	PHP
3963	Tweet3963	User3963	2830	4257	Estonia	PHP
3964	Tweet3964	User3964	1537	4084	Slovakia	Visual Basic
3965	Tweet3965	User3965	1501	4471	Slovenia	Visual Basic
3966	Tweet3966	User3966	455	1354	Hungary	Scala
3967	Tweet3967	User3967	1766	296	Malta	Visual Basic
3968	Tweet3968	User3968	4316	665	Estonia	C++
3969	Tweet3969	User3969	260	574	Lithuania	Java
3970	Tweet3970	User3970	2074	68	Germany	Java
3971	Tweet3971	User3971	4876	168	Poland	Visual Basic
3972	Tweet3972	User3972	3441	451	Cyprus	JavaScript
3973	Tweet3973	User3973	1354	4048	Estonia	Ruby
3974	Tweet3974	User3974	3301	168	Ireland	JavaScript
3975	Tweet3975	User3975	270	3303	Slovakia	Java
3976	Tweet3976	User3976	3888	778	Finland	C
3977	Tweet3977	User3977	2038	146	Austria	Ruby
3978	Tweet3978	User3978	4747	630	Lithuania	JavaScript
3979	Tweet3979	User3979	837	43	Portugal	Ruby
3980	Tweet3980	User3980	831	525	Ireland	Scala
3981	Tweet3981	User3981	4454	4433	Czech Republic	C#
3982	Tweet3982	User3982	1690	784	Lithuania	Ruby
3983	Tweet3983	User3983	3840	1786	Estonia	C++
3984	Tweet3984	User3984	1458	1248	Latvia	Scala
3985	Tweet3985	User3985	4343	2138	Poland	C#
3986	Tweet3986	User3986	3125	2291	Netherlands	Scala
3987	Tweet3987	User3987	530	4758	Portugal	JavaScript
3988	Tweet3988	User3988	3745	397	United Kingdom	Obj C
3989	Tweet3989	User3989	182	2289	Malta	Obj C
3990	Tweet3990	User3990	1264	5	Lithuania	Python
3991	Tweet3991	User3991	4145	742	Ireland	Java
3992	Tweet3992	User3992	433	3629	Romania	Java
3993	Tweet3993	User3993	754	2416	Denmark	Python
3994	Tweet3994	User3994	1775	1958	Poland	C
3995	Tweet3995	User3995	4881	2983	Spain	Python
3996	Tweet3996	User3996	3258	977	Latvia	C++
3997	Tweet3997	User3997	1939	2219	Austria	Python
3998	Tweet3998	User3998	1543	1191	Romania	C++
3999	Tweet3999	User3999	4296	2026	Spain	Java
4000	Tweet4000	User4000	4665	856	Italy	C
4001	Tweet4001	User4001	4940	4102	Finland	Visual Basic
4002	Tweet4002	User4002	291	1896	Romania	Ruby
4003	Tweet4003	User4003	2185	99	Spain	PHP
4004	Tweet4004	User4004	1265	4256	Sweden	Obj C
4005	Tweet4005	User4005	799	2134	Portugal	PHP
4006	Tweet4006	User4006	3906	56	Ireland	PHP
4007	Tweet4007	User4007	1515	3512	Czech Republic	C++
4008	Tweet4008	User4008	2597	1222	Portugal	JavaScript
4009	Tweet4009	User4009	2954	2195	Romania	C++
4010	Tweet4010	User4010	3858	204	Slovenia	C#
4011	Tweet4011	User4011	2150	2911	United Kingdom	C++
4012	Tweet4012	User4012	3870	4018	Croatia	Scala
4013	Tweet4013	User4013	3786	1763	Poland	Obj C
4014	Tweet4014	User4014	2988	2588	Italy	Obj C
4015	Tweet4015	User4015	3768	3601	Netherlands	Java
4016	Tweet4016	User4016	3401	3899	Slovenia	JavaScript
4017	Tweet4017	User4017	3749	2802	Slovakia	Scala
4018	Tweet4018	User4018	801	3311	Romania	Python
4019	Tweet4019	User4019	2829	2467	Italy	Java
4020	Tweet4020	User4020	3363	2427	Croatia	Visual Basic
4021	Tweet4021	User4021	3085	3489	Spain	Obj C
4022	Tweet4022	User4022	3764	3010	Belgium	Obj C
4023	Tweet4023	User4023	3870	4250	Cyprus	C#
4024	Tweet4024	User4024	3997	4733	Ireland	C#
4025	Tweet4025	User4025	2752	2152	Netherlands	Obj C
4026	Tweet4026	User4026	2207	3497	France	PHP
4027	Tweet4027	User4027	23	442	Sweden	C#
4028	Tweet4028	User4028	1349	1897	Netherlands	Visual Basic
4029	Tweet4029	User4029	714	322	Cyprus	Ruby
4030	Tweet4030	User4030	3746	4103	Italy	C#
4031	Tweet4031	User4031	1647	2363	Portugal	C#
4032	Tweet4032	User4032	1109	1317	Germany	JavaScript
4033	Tweet4033	User4033	1981	1567	Slovakia	Ruby
4034	Tweet4034	User4034	4381	1757	Italy	Scala
4035	Tweet4035	User4035	2249	2569	Slovakia	PHP
4036	Tweet4036	User4036	3474	3550	Finland	Visual Basic
4037	Tweet4037	User4037	519	1276	Belgium	Ruby
4038	Tweet4038	User4038	706	91	Bulgaria	PHP
4039	Tweet4039	User4039	399	3116	Greece	C#
4040	Tweet4040	User4040	2343	3179	Denmark	Ruby
4041	Tweet4041	User4041	188	2731	Hungary	JavaScript
4042	Tweet4042	User4042	4689	2368	Ireland	Java
4043	Tweet4043	User4043	544	2298	Germany	Ruby
4044	Tweet4044	User4044	1006	4472	Belgium	Scala
4045	Tweet4045	User4045	2542	4601	Spain	Visual Basic
4046	Tweet4046	User4046	635	4132	Belgium	Python
4047	Tweet4047	User4047	2538	53	Czech Republic	JavaScript
4048	Tweet4048	User4048	891	1132	Germany	C#
4049	Tweet4049	User4049	1084	1932	Malta	Ruby
4050	Tweet4050	User4050	1003	3788	Latvia	C
4051	Tweet4051	User4051	3888	4027	Cyprus	JavaScript
4052	Tweet4052	User4052	3847	3403	Czech Republic	C
4053	Tweet4053	User4053	4491	1890	United Kingdom	Python
4054	Tweet4054	User4054	3410	4366	Portugal	Java
4055	Tweet4055	User4055	3335	3701	Italy	Scala
4056	Tweet4056	User4056	1718	2216	Romania	Scala
4057	Tweet4057	User4057	1380	2360	Romania	C#
4058	Tweet4058	User4058	1863	285	Slovakia	Scala
4059	Tweet4059	User4059	947	44	Finland	Ruby
4060	Tweet4060	User4060	1170	592	Latvia	PHP
4061	Tweet4061	User4061	4724	4058	Croatia	C
4062	Tweet4062	User4062	215	3281	Czech Republic	Java
4063	Tweet4063	User4063	4450	3367	Finland	Obj C
4064	Tweet4064	User4064	1672	1767	Cyprus	Scala
4065	Tweet4065	User4065	245	1432	Croatia	Python
4066	Tweet4066	User4066	4469	209	Spain	C++
4067	Tweet4067	User4067	3553	3275	Poland	C++
4068	Tweet4068	User4068	3579	3224	United Kingdom	JavaScript
4069	Tweet4069	User4069	3235	2965	Ireland	Ruby
4070	Tweet4070	User4070	4751	2064	Malta	Visual Basic
4071	Tweet4071	User4071	2577	1806	Czech Republic	Visual Basic
4072	Tweet4072	User4072	3715	3933	Sweden	C#
4073	Tweet4073	User4073	1908	2087	Spain	Java
4074	Tweet4074	User4074	1961	2732	France	C
4075	Tweet4075	User4075	3476	2007	United Kingdom	Java
4076	Tweet4076	User4076	1908	193	Hungary	Java
4077	Tweet4077	User4077	854	2473	Poland	PHP
4078	Tweet4078	User4078	4914	2171	Estonia	C++
4079	Tweet4079	User4079	2056	678	France	Scala
4080	Tweet4080	User4080	2247	3003	Cyprus	JavaScript
4081	Tweet4081	User4081	4119	1853	Denmark	Java
4082	Tweet4082	User4082	2468	4437	Denmark	Obj C
4083	Tweet4083	User4083	170	1650	Netherlands	Scala
4084	Tweet4084	User4084	2882	4915	Portugal	Visual Basic
4085	Tweet4085	User4085	4150	2467	Slovenia	C++
4086	Tweet4086	User4086	1818	4764	Lithuania	C
4087	Tweet4087	User4087	144	470	Austria	C++
4088	Tweet4088	User4088	2716	3625	Croatia	Obj C
4089	Tweet4089	User4089	357	234	Romania	Ruby
4090	Tweet4090	User4090	4214	2848	Croatia	PHP
4091	Tweet4091	User4091	2747	2800	Malta	C
4092	Tweet4092	User4092	4391	333	Italy	C
4093	Tweet4093	User4093	3823	298	Portugal	JavaScript
4094	Tweet4094	User4094	4668	2930	Czech Republic	JavaScript
4095	Tweet4095	User4095	3112	1987	Portugal	JavaScript
4096	Tweet4096	User4096	1207	4506	Lithuania	Ruby
4097	Tweet4097	User4097	1538	3511	United Kingdom	Obj C
4098	Tweet4098	User4098	1836	2932	Portugal	Ruby
4099	Tweet4099	User4099	4067	1638	Romania	PHP
4100	Tweet4100	User4100	4710	2393	Malta	Python
4101	Tweet4101	User4101	3733	2278	Cyprus	Java
4102	Tweet4102	User4102	428	1810	Netherlands	C#
4103	Tweet4103	User4103	1014	294	Estonia	Obj C
4104	Tweet4104	User4104	542	2530	Greece	Scala
4105	Tweet4105	User4105	2121	2609	Malta	C
4106	Tweet4106	User4106	1308	4907	Belgium	C
4107	Tweet4107	User4107	2928	603	Portugal	Java
4108	Tweet4108	User4108	1361	2869	Bulgaria	Python
4109	Tweet4109	User4109	1871	4230	Slovenia	PHP
4110	Tweet4110	User4110	2347	2039	Greece	Java
4111	Tweet4111	User4111	3981	1579	Luxembourg	Python
4112	Tweet4112	User4112	3810	3275	Denmark	Visual Basic
4113	Tweet4113	User4113	4975	1770	Spain	Visual Basic
4114	Tweet4114	User4114	2577	2696	Belgium	C
4115	Tweet4115	User4115	4954	1440	Germany	Python
4116	Tweet4116	User4116	3315	2568	Austria	JavaScript
4117	Tweet4117	User4117	1980	3783	Portugal	Scala
4118	Tweet4118	User4118	4461	561	Netherlands	JavaScript
4119	Tweet4119	User4119	512	2999	Czech Republic	PHP
4120	Tweet4120	User4120	3502	4900	Malta	C
4121	Tweet4121	User4121	1267	64	Cyprus	C++
4122	Tweet4122	User4122	4173	3093	Italy	Scala
4123	Tweet4123	User4123	358	1237	Poland	JavaScript
4124	Tweet4124	User4124	4622	3523	Netherlands	Scala
4125	Tweet4125	User4125	2964	2650	Netherlands	PHP
4126	Tweet4126	User4126	2309	3974	Slovakia	Visual Basic
4127	Tweet4127	User4127	4271	4855	Hungary	C++
4128	Tweet4128	User4128	3844	783	United Kingdom	Scala
4129	Tweet4129	User4129	3248	1392	Luxembourg	Scala
4130	Tweet4130	User4130	78	2233	Croatia	Visual Basic
4131	Tweet4131	User4131	586	727	Netherlands	PHP
4132	Tweet4132	User4132	1978	3180	Hungary	Scala
4133	Tweet4133	User4133	945	1470	Cyprus	C
4134	Tweet4134	User4134	2105	4721	France	Obj C
4135	Tweet4135	User4135	4841	3036	Denmark	Ruby
4136	Tweet4136	User4136	3294	1895	Slovenia	Visual Basic
4137	Tweet4137	User4137	3719	3594	Sweden	Visual Basic
4138	Tweet4138	User4138	3006	4879	Denmark	Java
4139	Tweet4139	User4139	1106	1119	Latvia	C
4140	Tweet4140	User4140	2259	802	Bulgaria	Obj C
4141	Tweet4141	User4141	359	3027	Hungary	Visual Basic
4142	Tweet4142	User4142	2052	1195	Germany	Java
4143	Tweet4143	User4143	2784	4115	Greece	JavaScript
4144	Tweet4144	User4144	2056	1247	Slovakia	JavaScript
4145	Tweet4145	User4145	4992	1532	Finland	Java
4146	Tweet4146	User4146	4060	4453	Austria	Python
4147	Tweet4147	User4147	4891	1257	Croatia	JavaScript
4148	Tweet4148	User4148	948	617	Czech Republic	Python
4149	Tweet4149	User4149	3709	3682	Sweden	C#
4150	Tweet4150	User4150	3074	853	Belgium	Obj C
4151	Tweet4151	User4151	3173	4879	Bulgaria	PHP
4152	Tweet4152	User4152	1826	1858	France	Obj C
4153	Tweet4153	User4153	1267	384	Cyprus	Scala
4154	Tweet4154	User4154	3446	2203	Croatia	Java
4155	Tweet4155	User4155	350	711	Greece	Visual Basic
4156	Tweet4156	User4156	1239	715	Croatia	JavaScript
4157	Tweet4157	User4157	4668	2301	Lithuania	Java
4158	Tweet4158	User4158	1538	3441	Austria	Visual Basic
4159	Tweet4159	User4159	2798	1097	Netherlands	Scala
4160	Tweet4160	User4160	3616	4456	Latvia	Visual Basic
4161	Tweet4161	User4161	4348	15	France	Ruby
4162	Tweet4162	User4162	3460	3540	Portugal	C#
4163	Tweet4163	User4163	264	351	Germany	Java
4164	Tweet4164	User4164	242	1214	Slovenia	Visual Basic
4165	Tweet4165	User4165	4409	884	Lithuania	Python
4166	Tweet4166	User4166	2899	4189	Sweden	Obj C
4167	Tweet4167	User4167	3500	3759	Austria	Java
4168	Tweet4168	User4168	4292	429	Cyprus	Obj C
4169	Tweet4169	User4169	56	2548	Poland	Python
4170	Tweet4170	User4170	1380	1062	Poland	C++
4171	Tweet4171	User4171	1495	2013	Malta	Ruby
4172	Tweet4172	User4172	3452	4711	Sweden	Visual Basic
4173	Tweet4173	User4173	4587	1421	Spain	Obj C
4174	Tweet4174	User4174	1672	2421	Estonia	Scala
4175	Tweet4175	User4175	583	2901	Finland	Java
4176	Tweet4176	User4176	3884	4550	Bulgaria	Scala
4177	Tweet4177	User4177	1614	1205	Bulgaria	Python
4178	Tweet4178	User4178	2792	2084	Belgium	JavaScript
4179	Tweet4179	User4179	436	1758	Estonia	C
4180	Tweet4180	User4180	2476	1457	Belgium	C++
4181	Tweet4181	User4181	3905	4565	France	PHP
4182	Tweet4182	User4182	912	2779	Sweden	Obj C
4183	Tweet4183	User4183	116	4108	Bulgaria	Java
4184	Tweet4184	User4184	3030	4594	Croatia	JavaScript
4185	Tweet4185	User4185	2428	4440	Bulgaria	C
4186	Tweet4186	User4186	2042	4786	Austria	C
4187	Tweet4187	User4187	4679	2854	France	C
4188	Tweet4188	User4188	2847	3616	Poland	C
4189	Tweet4189	User4189	3516	176	Greece	C
4190	Tweet4190	User4190	3813	4344	Italy	Java
4191	Tweet4191	User4191	521	694	Romania	PHP
4192	Tweet4192	User4192	3010	3155	Sweden	Python
4193	Tweet4193	User4193	3248	1346	Slovenia	Java
4194	Tweet4194	User4194	1541	3559	Cyprus	Scala
4195	Tweet4195	User4195	1369	2029	Luxembourg	C++
4196	Tweet4196	User4196	3543	4214	Netherlands	C++
4197	Tweet4197	User4197	1172	4369	Ireland	JavaScript
4198	Tweet4198	User4198	2017	709	United Kingdom	PHP
4199	Tweet4199	User4199	3244	4696	Ireland	PHP
4200	Tweet4200	User4200	2697	4904	Italy	JavaScript
4201	Tweet4201	User4201	4676	4005	Portugal	Java
4202	Tweet4202	User4202	1263	768	Romania	Java
4203	Tweet4203	User4203	1811	4106	United Kingdom	JavaScript
4204	Tweet4204	User4204	3868	4928	Italy	Java
4205	Tweet4205	User4205	817	3067	Cyprus	C++
4206	Tweet4206	User4206	4867	4533	Lithuania	PHP
4207	Tweet4207	User4207	3718	77	Cyprus	C#
4208	Tweet4208	User4208	257	2773	Greece	Java
4209	Tweet4209	User4209	2376	1273	Poland	C
4210	Tweet4210	User4210	640	108	United Kingdom	Visual Basic
4211	Tweet4211	User4211	2715	4180	Malta	Obj C
4212	Tweet4212	User4212	641	656	Czech Republic	Visual Basic
4213	Tweet4213	User4213	738	3559	Cyprus	C++
4214	Tweet4214	User4214	604	2418	Ireland	Obj C
4215	Tweet4215	User4215	2891	4335	Denmark	PHP
4216	Tweet4216	User4216	1442	1529	Czech Republic	C#
4217	Tweet4217	User4217	2317	2671	Hungary	Ruby
4218	Tweet4218	User4218	3992	319	Cyprus	JavaScript
4219	Tweet4219	User4219	2354	350	Greece	PHP
4220	Tweet4220	User4220	4024	2476	Greece	Python
4221	Tweet4221	User4221	483	4705	France	C#
4222	Tweet4222	User4222	163	3034	Poland	Scala
4223	Tweet4223	User4223	1055	1400	Denmark	C#
4224	Tweet4224	User4224	732	1077	Germany	Visual Basic
4225	Tweet4225	User4225	869	2863	Cyprus	Python
4226	Tweet4226	User4226	4022	2501	Slovenia	Python
4227	Tweet4227	User4227	4181	1909	Hungary	Python
4228	Tweet4228	User4228	1864	2021	Spain	Ruby
4229	Tweet4229	User4229	666	64	Hungary	C++
4230	Tweet4230	User4230	304	3728	Italy	Java
4231	Tweet4231	User4231	4239	4426	Hungary	Python
4232	Tweet4232	User4232	1071	1450	Lithuania	Obj C
4233	Tweet4233	User4233	533	4771	Finland	Ruby
4234	Tweet4234	User4234	4858	199	Slovenia	Visual Basic
4235	Tweet4235	User4235	1053	491	Lithuania	Python
4236	Tweet4236	User4236	796	4984	Netherlands	Scala
4237	Tweet4237	User4237	1306	317	Greece	Java
4238	Tweet4238	User4238	434	3398	Austria	Java
4239	Tweet4239	User4239	4536	2111	Hungary	Ruby
4240	Tweet4240	User4240	2179	1340	Romania	C++
4241	Tweet4241	User4241	3071	1121	Romania	Python
4242	Tweet4242	User4242	2875	569	Estonia	C
4243	Tweet4243	User4243	1264	3505	Romania	Obj C
4244	Tweet4244	User4244	1463	2260	Luxembourg	Java
4245	Tweet4245	User4245	3027	4871	Croatia	C
4246	Tweet4246	User4246	1914	2624	Romania	C++
4247	Tweet4247	User4247	3291	3812	Malta	PHP
4248	Tweet4248	User4248	4156	4899	Bulgaria	Java
4249	Tweet4249	User4249	291	4081	Hungary	JavaScript
4250	Tweet4250	User4250	2693	3194	Italy	Visual Basic
4251	Tweet4251	User4251	4576	2692	Latvia	C++
4252	Tweet4252	User4252	3343	2497	Spain	JavaScript
4253	Tweet4253	User4253	728	687	Romania	C#
4254	Tweet4254	User4254	316	4905	Poland	C++
4255	Tweet4255	User4255	4	3175	Estonia	Visual Basic
4256	Tweet4256	User4256	223	1135	Slovakia	Ruby
4257	Tweet4257	User4257	4599	1885	Ireland	Python
4258	Tweet4258	User4258	4759	3300	Lithuania	Visual Basic
4259	Tweet4259	User4259	2843	3744	Sweden	C#
4260	Tweet4260	User4260	3503	3154	France	JavaScript
4261	Tweet4261	User4261	2477	2275	Lithuania	PHP
4262	Tweet4262	User4262	3187	1517	Germany	Python
4263	Tweet4263	User4263	149	2338	Slovenia	C
4264	Tweet4264	User4264	158	3687	Estonia	Obj C
4265	Tweet4265	User4265	895	3391	Slovenia	Ruby
4266	Tweet4266	User4266	4323	665	Greece	PHP
4267	Tweet4267	User4267	2180	2499	Cyprus	Scala
4268	Tweet4268	User4268	3391	3616	Slovenia	PHP
4269	Tweet4269	User4269	833	2428	Estonia	Obj C
4270	Tweet4270	User4270	1510	438	Italy	Ruby
4271	Tweet4271	User4271	4176	4832	Latvia	JavaScript
4272	Tweet4272	User4272	1111	1849	Germany	C++
4273	Tweet4273	User4273	2699	2	Austria	PHP
4274	Tweet4274	User4274	2834	1964	Hungary	PHP
4275	Tweet4275	User4275	2268	3386	Estonia	PHP
4276	Tweet4276	User4276	3061	1599	Ireland	Scala
4277	Tweet4277	User4277	4351	4057	Latvia	Python
4278	Tweet4278	User4278	4040	877	Latvia	Ruby
4279	Tweet4279	User4279	204	3087	Latvia	C#
4280	Tweet4280	User4280	203	4161	Romania	Python
4281	Tweet4281	User4281	3092	4277	Italy	Obj C
4282	Tweet4282	User4282	796	2704	Greece	C++
4283	Tweet4283	User4283	4497	3804	Ireland	JavaScript
4284	Tweet4284	User4284	339	2200	Malta	C++
4285	Tweet4285	User4285	2848	1236	Latvia	C
4286	Tweet4286	User4286	4260	1406	Hungary	C
4287	Tweet4287	User4287	2030	1253	Finland	PHP
4288	Tweet4288	User4288	4027	1599	Romania	Ruby
4289	Tweet4289	User4289	1142	4116	Romania	PHP
4290	Tweet4290	User4290	2281	3134	Sweden	Obj C
4291	Tweet4291	User4291	3622	1252	Estonia	JavaScript
4292	Tweet4292	User4292	701	3849	Spain	JavaScript
4293	Tweet4293	User4293	1137	3706	Poland	Python
4294	Tweet4294	User4294	548	1069	Finland	Python
4295	Tweet4295	User4295	513	1326	Belgium	C++
4296	Tweet4296	User4296	2103	1561	Hungary	JavaScript
4297	Tweet4297	User4297	4395	2711	Italy	C
4298	Tweet4298	User4298	1920	2534	Finland	Scala
4299	Tweet4299	User4299	2383	4528	Slovenia	Ruby
4300	Tweet4300	User4300	1118	4460	Italy	C++
4301	Tweet4301	User4301	1877	702	Estonia	JavaScript
4302	Tweet4302	User4302	1563	2375	Bulgaria	C
4303	Tweet4303	User4303	4349	2032	Finland	Java
4304	Tweet4304	User4304	144	1824	Slovenia	C#
4305	Tweet4305	User4305	4895	4919	Slovenia	PHP
4306	Tweet4306	User4306	680	211	Slovakia	C++
4307	Tweet4307	User4307	4288	1575	Malta	Ruby
4308	Tweet4308	User4308	4763	635	Denmark	PHP
4309	Tweet4309	User4309	3346	197	United Kingdom	C#
4310	Tweet4310	User4310	4157	2319	Spain	Scala
4311	Tweet4311	User4311	3027	1681	Malta	C#
4312	Tweet4312	User4312	1625	676	Germany	Scala
4313	Tweet4313	User4313	123	857	Czech Republic	Ruby
4314	Tweet4314	User4314	2610	4900	Germany	C
4315	Tweet4315	User4315	4459	3969	Finland	Visual Basic
4316	Tweet4316	User4316	3540	2258	Poland	Scala
4317	Tweet4317	User4317	4016	3632	Malta	Python
4318	Tweet4318	User4318	2070	3605	Bulgaria	Ruby
4319	Tweet4319	User4319	4857	2487	France	JavaScript
4320	Tweet4320	User4320	2936	1673	Spain	Python
4321	Tweet4321	User4321	4875	1617	Ireland	Scala
4322	Tweet4322	User4322	4809	2173	Estonia	JavaScript
4323	Tweet4323	User4323	976	160	Portugal	Python
4324	Tweet4324	User4324	620	1844	United Kingdom	C#
4325	Tweet4325	User4325	581	204	Slovenia	Visual Basic
4326	Tweet4326	User4326	1021	4427	Czech Republic	C#
4327	Tweet4327	User4327	4260	1571	Italy	C
4328	Tweet4328	User4328	1411	3309	Romania	Scala
4329	Tweet4329	User4329	683	555	Greece	Ruby
4330	Tweet4330	User4330	4524	2542	Bulgaria	C++
4331	Tweet4331	User4331	2578	4167	Bulgaria	Obj C
4332	Tweet4332	User4332	3798	4382	Czech Republic	Ruby
4333	Tweet4333	User4333	2726	1356	Hungary	Python
4334	Tweet4334	User4334	3756	4794	Italy	PHP
4335	Tweet4335	User4335	1132	3682	Slovakia	Scala
4336	Tweet4336	User4336	4873	638	Cyprus	C
4337	Tweet4337	User4337	4823	211	Bulgaria	Scala
4338	Tweet4338	User4338	1376	3065	Poland	JavaScript
4339	Tweet4339	User4339	2020	1314	Luxembourg	Visual Basic
4340	Tweet4340	User4340	1329	2904	France	PHP
4341	Tweet4341	User4341	1185	3498	Sweden	Python
4342	Tweet4342	User4342	1233	4672	Sweden	Ruby
4343	Tweet4343	User4343	2383	33	Cyprus	C++
4344	Tweet4344	User4344	2795	3492	Slovenia	Scala
4345	Tweet4345	User4345	3281	530	Austria	Scala
4346	Tweet4346	User4346	705	1634	Spain	PHP
4347	Tweet4347	User4347	3189	4692	Spain	Scala
4348	Tweet4348	User4348	2062	274	Greece	Obj C
4349	Tweet4349	User4349	1833	4105	Lithuania	Java
4350	Tweet4350	User4350	3223	1272	Malta	Scala
4351	Tweet4351	User4351	3631	3678	Denmark	Java
4352	Tweet4352	User4352	1429	1955	Slovenia	JavaScript
4353	Tweet4353	User4353	3009	2582	Spain	Ruby
4354	Tweet4354	User4354	4055	2767	Romania	JavaScript
4355	Tweet4355	User4355	2689	864	Luxembourg	PHP
4356	Tweet4356	User4356	523	3050	Hungary	Ruby
4357	Tweet4357	User4357	4247	4961	United Kingdom	Java
4358	Tweet4358	User4358	1718	1376	Germany	C#
4359	Tweet4359	User4359	1381	737	Hungary	C
4360	Tweet4360	User4360	309	1610	Czech Republic	C
4361	Tweet4361	User4361	4309	513	Czech Republic	PHP
4362	Tweet4362	User4362	2695	3382	United Kingdom	Python
4363	Tweet4363	User4363	1336	3425	Luxembourg	Scala
4364	Tweet4364	User4364	4217	224	Poland	Obj C
4365	Tweet4365	User4365	1753	1151	Spain	Scala
4366	Tweet4366	User4366	2042	1097	Hungary	C
4367	Tweet4367	User4367	4202	3520	Czech Republic	PHP
4368	Tweet4368	User4368	2463	311	United Kingdom	Ruby
4369	Tweet4369	User4369	613	32	Italy	C
4370	Tweet4370	User4370	2597	3893	France	PHP
4371	Tweet4371	User4371	2106	1552	Slovenia	Obj C
4372	Tweet4372	User4372	3407	3903	Netherlands	Python
4373	Tweet4373	User4373	4595	2207	Poland	JavaScript
4374	Tweet4374	User4374	1915	3233	Belgium	PHP
4375	Tweet4375	User4375	3753	1137	Greece	Java
4376	Tweet4376	User4376	24	1610	Bulgaria	PHP
4377	Tweet4377	User4377	767	1801	Malta	Java
4378	Tweet4378	User4378	764	4989	Luxembourg	C++
4379	Tweet4379	User4379	2686	23	Germany	C++
4380	Tweet4380	User4380	3954	2794	Belgium	C++
4381	Tweet4381	User4381	4372	3337	Denmark	PHP
4382	Tweet4382	User4382	3745	4542	Luxembourg	C#
4383	Tweet4383	User4383	346	1154	Lithuania	C++
4384	Tweet4384	User4384	2948	2268	France	C++
4385	Tweet4385	User4385	4254	1686	Estonia	JavaScript
4386	Tweet4386	User4386	4542	3924	Malta	Scala
4387	Tweet4387	User4387	4128	1623	Estonia	C++
4388	Tweet4388	User4388	2455	1465	Austria	C#
4389	Tweet4389	User4389	4195	792	Spain	PHP
4390	Tweet4390	User4390	1660	2151	Denmark	PHP
4391	Tweet4391	User4391	3512	4389	Slovenia	JavaScript
4392	Tweet4392	User4392	91	4333	Portugal	Visual Basic
4393	Tweet4393	User4393	4960	1362	Lithuania	Ruby
4394	Tweet4394	User4394	4094	1800	United Kingdom	C++
4395	Tweet4395	User4395	2104	989	Poland	PHP
4396	Tweet4396	User4396	1895	4661	Lithuania	Java
4397	Tweet4397	User4397	4120	230	Romania	Python
4398	Tweet4398	User4398	1551	3427	United Kingdom	Java
4399	Tweet4399	User4399	3927	714	Sweden	C#
4400	Tweet4400	User4400	3107	4731	Romania	Java
4401	Tweet4401	User4401	4269	1107	Ireland	Java
4402	Tweet4402	User4402	2491	170	Lithuania	Scala
4403	Tweet4403	User4403	1489	3198	Greece	Visual Basic
4404	Tweet4404	User4404	557	3659	Romania	Scala
4405	Tweet4405	User4405	2815	1860	Sweden	Scala
4406	Tweet4406	User4406	39	1300	Lithuania	Ruby
4407	Tweet4407	User4407	3636	4944	Slovenia	Ruby
4408	Tweet4408	User4408	2633	4495	Bulgaria	C#
4409	Tweet4409	User4409	4753	1291	Poland	Java
4410	Tweet4410	User4410	1357	4670	Cyprus	Obj C
4411	Tweet4411	User4411	2532	1883	Poland	Ruby
4412	Tweet4412	User4412	2228	209	Denmark	Visual Basic
4413	Tweet4413	User4413	126	2403	Luxembourg	C#
4414	Tweet4414	User4414	108	1215	Lithuania	C#
4415	Tweet4415	User4415	715	2794	France	Visual Basic
4416	Tweet4416	User4416	2924	4322	Slovenia	JavaScript
4417	Tweet4417	User4417	2664	1906	Luxembourg	Scala
4418	Tweet4418	User4418	3043	3002	Hungary	C
4419	Tweet4419	User4419	4006	3967	United Kingdom	C++
4420	Tweet4420	User4420	3676	4556	Austria	Obj C
4421	Tweet4421	User4421	1669	1383	Croatia	C#
4422	Tweet4422	User4422	1310	2240	Belgium	JavaScript
4423	Tweet4423	User4423	4212	511	Poland	C
4424	Tweet4424	User4424	1292	4596	United Kingdom	C#
4425	Tweet4425	User4425	3451	3480	Portugal	C++
4426	Tweet4426	User4426	3222	4910	France	Obj C
4427	Tweet4427	User4427	1953	1329	Denmark	JavaScript
4428	Tweet4428	User4428	4701	411	Cyprus	C
4429	Tweet4429	User4429	3423	409	Finland	Python
4430	Tweet4430	User4430	674	2028	Slovenia	Java
4431	Tweet4431	User4431	4186	677	Austria	C++
4432	Tweet4432	User4432	1916	1273	Finland	Python
4433	Tweet4433	User4433	4147	3226	Denmark	JavaScript
4434	Tweet4434	User4434	4642	4224	Estonia	Java
4435	Tweet4435	User4435	192	384	France	Obj C
4436	Tweet4436	User4436	1743	3616	Poland	Obj C
4437	Tweet4437	User4437	3965	4861	Poland	PHP
4438	Tweet4438	User4438	730	3913	Croatia	C#
4439	Tweet4439	User4439	1918	1709	Slovenia	C#
4440	Tweet4440	User4440	2881	1001	Luxembourg	Scala
4441	Tweet4441	User4441	1371	4956	Italy	Python
4442	Tweet4442	User4442	2170	834	Italy	Visual Basic
4443	Tweet4443	User4443	1857	3124	Latvia	Obj C
4444	Tweet4444	User4444	4583	1293	France	C++
4445	Tweet4445	User4445	2112	4173	Belgium	PHP
4446	Tweet4446	User4446	2743	360	Slovakia	Scala
4447	Tweet4447	User4447	1624	3564	Denmark	C++
4448	Tweet4448	User4448	4760	809	Hungary	Obj C
4449	Tweet4449	User4449	99	2499	Finland	C
4450	Tweet4450	User4450	2211	4506	Spain	Ruby
4451	Tweet4451	User4451	465	2280	Ireland	C++
4452	Tweet4452	User4452	1223	3231	Portugal	Python
4453	Tweet4453	User4453	3039	17	Finland	Ruby
4454	Tweet4454	User4454	2080	4722	Romania	Java
4455	Tweet4455	User4455	935	3543	Bulgaria	JavaScript
4456	Tweet4456	User4456	1477	772	Croatia	Obj C
4457	Tweet4457	User4457	688	3926	Germany	Java
4458	Tweet4458	User4458	4949	318	Portugal	Visual Basic
4459	Tweet4459	User4459	4388	157	Italy	PHP
4460	Tweet4460	User4460	4009	5	Luxembourg	C++
4461	Tweet4461	User4461	2482	290	Spain	Python
4462	Tweet4462	User4462	2702	1960	Cyprus	Python
4463	Tweet4463	User4463	4637	75	Czech Republic	C
4464	Tweet4464	User4464	2772	2787	Slovakia	C
4465	Tweet4465	User4465	3084	2308	Belgium	C
4466	Tweet4466	User4466	1621	2273	Romania	JavaScript
4467	Tweet4467	User4467	2267	824	Czech Republic	C#
4468	Tweet4468	User4468	626	1865	Hungary	C
4469	Tweet4469	User4469	3880	492	United Kingdom	Python
4470	Tweet4470	User4470	1214	1653	Netherlands	PHP
4471	Tweet4471	User4471	1881	2430	Croatia	PHP
4472	Tweet4472	User4472	3975	2806	Greece	C#
4473	Tweet4473	User4473	1716	4431	Luxembourg	Java
4474	Tweet4474	User4474	2017	1144	Spain	PHP
4475	Tweet4475	User4475	2875	4822	Denmark	PHP
4476	Tweet4476	User4476	2476	3314	Lithuania	C
4477	Tweet4477	User4477	692	3289	Greece	Visual Basic
4478	Tweet4478	User4478	2543	3120	Spain	C#
4479	Tweet4479	User4479	3832	1976	Austria	Java
4480	Tweet4480	User4480	758	3636	Austria	PHP
4481	Tweet4481	User4481	1619	4671	Lithuania	PHP
4482	Tweet4482	User4482	3894	2768	Luxembourg	C++
4483	Tweet4483	User4483	4765	1378	Poland	C#
4484	Tweet4484	User4484	1825	2390	Malta	C#
4485	Tweet4485	User4485	4648	916	Belgium	C#
4486	Tweet4486	User4486	4228	951	Italy	Scala
4487	Tweet4487	User4487	1299	157	Hungary	PHP
4488	Tweet4488	User4488	4108	187	Germany	C#
4489	Tweet4489	User4489	2231	4537	Lithuania	PHP
4490	Tweet4490	User4490	4167	3148	Ireland	Java
4491	Tweet4491	User4491	4013	707	Latvia	C++
4492	Tweet4492	User4492	1273	3068	Netherlands	Ruby
4493	Tweet4493	User4493	1625	2651	United Kingdom	Obj C
4494	Tweet4494	User4494	1937	2103	Romania	Visual Basic
4495	Tweet4495	User4495	459	3850	Austria	C#
4496	Tweet4496	User4496	3148	2836	Poland	Scala
4497	Tweet4497	User4497	4434	1569	Sweden	C++
4498	Tweet4498	User4498	1068	3677	Hungary	PHP
4499	Tweet4499	User4499	3838	688	Luxembourg	C++
4500	Tweet4500	User4500	3498	3223	Romania	Scala
4501	Tweet4501	User4501	2983	4747	Luxembourg	Ruby
4502	Tweet4502	User4502	3513	2946	Romania	Obj C
4503	Tweet4503	User4503	2899	1175	Bulgaria	Visual Basic
4504	Tweet4504	User4504	1547	463	France	Obj C
4505	Tweet4505	User4505	1355	3090	Portugal	Ruby
4506	Tweet4506	User4506	269	3987	United Kingdom	PHP
4507	Tweet4507	User4507	2380	4478	Slovenia	Java
4508	Tweet4508	User4508	1985	1694	Luxembourg	Obj C
4509	Tweet4509	User4509	240	3607	Czech Republic	PHP
4510	Tweet4510	User4510	1877	3976	Lithuania	PHP
4511	Tweet4511	User4511	3782	2979	Italy	C#
4512	Tweet4512	User4512	419	1709	Croatia	Java
4513	Tweet4513	User4513	4192	3306	Italy	PHP
4514	Tweet4514	User4514	3280	140	Bulgaria	JavaScript
4515	Tweet4515	User4515	2031	1069	Hungary	C
4516	Tweet4516	User4516	2106	1749	France	Visual Basic
4517	Tweet4517	User4517	1834	4025	Latvia	JavaScript
4518	Tweet4518	User4518	3254	3270	Italy	Obj C
4519	Tweet4519	User4519	3554	1001	Romania	Visual Basic
4520	Tweet4520	User4520	4226	3611	Latvia	PHP
4521	Tweet4521	User4521	4129	4680	Finland	C++
4522	Tweet4522	User4522	4175	3614	Sweden	JavaScript
4523	Tweet4523	User4523	2917	958	Germany	Java
4524	Tweet4524	User4524	4035	112	Netherlands	Obj C
4525	Tweet4525	User4525	1793	749	Germany	Ruby
4526	Tweet4526	User4526	2345	3170	Slovenia	PHP
4527	Tweet4527	User4527	333	4332	Romania	Python
4528	Tweet4528	User4528	1395	3672	Luxembourg	Scala
4529	Tweet4529	User4529	1430	4151	Bulgaria	C#
4530	Tweet4530	User4530	967	4672	Denmark	Python
4531	Tweet4531	User4531	4276	4904	Austria	Ruby
4532	Tweet4532	User4532	4108	3835	Slovenia	Scala
4533	Tweet4533	User4533	4966	4761	Latvia	PHP
4534	Tweet4534	User4534	4766	343	Portugal	Ruby
4535	Tweet4535	User4535	1899	3411	France	C++
4536	Tweet4536	User4536	3433	4513	Portugal	Visual Basic
4537	Tweet4537	User4537	4803	978	Austria	C
4538	Tweet4538	User4538	187	2327	Spain	Python
4539	Tweet4539	User4539	4300	2879	Croatia	C#
4540	Tweet4540	User4540	976	2477	Luxembourg	Scala
4541	Tweet4541	User4541	830	1647	Finland	Ruby
4542	Tweet4542	User4542	3066	4363	Bulgaria	PHP
4543	Tweet4543	User4543	3743	530	Slovenia	Python
4544	Tweet4544	User4544	3871	142	Poland	Scala
4545	Tweet4545	User4545	4904	4488	Hungary	PHP
4546	Tweet4546	User4546	2851	4179	Lithuania	Python
4547	Tweet4547	User4547	2181	1641	Spain	JavaScript
4548	Tweet4548	User4548	1590	727	Greece	JavaScript
4549	Tweet4549	User4549	4846	4744	Finland	Ruby
4550	Tweet4550	User4550	3981	2315	Portugal	Obj C
4551	Tweet4551	User4551	896	3148	Czech Republic	Visual Basic
4552	Tweet4552	User4552	3662	3314	Malta	Python
4553	Tweet4553	User4553	2580	4059	Germany	Ruby
4554	Tweet4554	User4554	764	3496	Luxembourg	Visual Basic
4555	Tweet4555	User4555	1044	204	Finland	C++
4556	Tweet4556	User4556	1861	4818	Malta	Python
4557	Tweet4557	User4557	560	3255	Lithuania	Visual Basic
4558	Tweet4558	User4558	4722	1222	Czech Republic	C++
4559	Tweet4559	User4559	3001	940	Bulgaria	Scala
4560	Tweet4560	User4560	2536	3692	Finland	Visual Basic
4561	Tweet4561	User4561	2741	412	Poland	C
4562	Tweet4562	User4562	3665	1453	Finland	Scala
4563	Tweet4563	User4563	3739	4604	Sweden	PHP
4564	Tweet4564	User4564	3137	4991	Portugal	PHP
4565	Tweet4565	User4565	3426	986	Cyprus	Visual Basic
4566	Tweet4566	User4566	4059	2645	Denmark	Java
4567	Tweet4567	User4567	289	4625	Latvia	JavaScript
4568	Tweet4568	User4568	4079	4730	Germany	C#
4569	Tweet4569	User4569	631	1774	Luxembourg	C++
4570	Tweet4570	User4570	2316	4782	United Kingdom	Obj C
4571	Tweet4571	User4571	88	4631	Slovenia	Python
4572	Tweet4572	User4572	2989	858	Ireland	C#
4573	Tweet4573	User4573	3947	3660	Croatia	Scala
4574	Tweet4574	User4574	4774	2444	Denmark	Ruby
4575	Tweet4575	User4575	2181	2560	France	C++
4576	Tweet4576	User4576	3819	3667	Luxembourg	Python
4577	Tweet4577	User4577	1785	3625	Malta	Obj C
4578	Tweet4578	User4578	3993	2962	Portugal	PHP
4579	Tweet4579	User4579	1773	4231	Ireland	Visual Basic
4580	Tweet4580	User4580	1664	4180	Germany	C
4581	Tweet4581	User4581	1213	4352	Netherlands	Visual Basic
4582	Tweet4582	User4582	2177	4719	Lithuania	C
4583	Tweet4583	User4583	4475	2324	Croatia	JavaScript
4584	Tweet4584	User4584	1873	1528	Spain	C++
4585	Tweet4585	User4585	3432	1210	France	Java
4586	Tweet4586	User4586	2258	3726	Belgium	Java
4587	Tweet4587	User4587	3762	2032	Netherlands	Scala
4588	Tweet4588	User4588	1471	3047	Spain	C
4589	Tweet4589	User4589	2790	4183	Finland	Java
4590	Tweet4590	User4590	2156	3877	Slovenia	PHP
4591	Tweet4591	User4591	4950	4646	Hungary	C++
4592	Tweet4592	User4592	565	905	Finland	C
4593	Tweet4593	User4593	1279	1265	Croatia	PHP
4594	Tweet4594	User4594	2956	569	France	Ruby
4595	Tweet4595	User4595	3252	4360	Belgium	Visual Basic
4596	Tweet4596	User4596	1370	461	Lithuania	C
4597	Tweet4597	User4597	3112	2866	Finland	JavaScript
4598	Tweet4598	User4598	1645	1328	Portugal	Scala
4599	Tweet4599	User4599	4474	3490	Malta	Ruby
4600	Tweet4600	User4600	876	1526	Sweden	Obj C
4601	Tweet4601	User4601	3293	2004	Slovenia	Visual Basic
4602	Tweet4602	User4602	834	3554	Latvia	Scala
4603	Tweet4603	User4603	3981	3940	Estonia	Visual Basic
4604	Tweet4604	User4604	559	2719	Slovakia	Visual Basic
4605	Tweet4605	User4605	1765	4917	Austria	Visual Basic
4606	Tweet4606	User4606	1793	1022	Italy	PHP
4607	Tweet4607	User4607	1880	1759	Portugal	C
4608	Tweet4608	User4608	4308	687	Poland	JavaScript
4609	Tweet4609	User4609	2615	3970	Denmark	Visual Basic
4610	Tweet4610	User4610	1698	3837	Hungary	C++
4611	Tweet4611	User4611	43	265	Hungary	C
4612	Tweet4612	User4612	281	2775	Sweden	Java
4613	Tweet4613	User4613	38	640	Greece	Ruby
4614	Tweet4614	User4614	4472	4247	Cyprus	Python
4615	Tweet4615	User4615	2771	2943	Lithuania	Obj C
4616	Tweet4616	User4616	4784	4461	Slovakia	Scala
4617	Tweet4617	User4617	1414	3843	Greece	C#
4618	Tweet4618	User4618	1486	3244	Croatia	PHP
4619	Tweet4619	User4619	866	2541	Croatia	JavaScript
4620	Tweet4620	User4620	628	1122	Bulgaria	Scala
4621	Tweet4621	User4621	3701	3857	Denmark	Ruby
4622	Tweet4622	User4622	3958	2913	Croatia	C
4623	Tweet4623	User4623	1006	3943	United Kingdom	C
4624	Tweet4624	User4624	3467	3208	Sweden	Visual Basic
4625	Tweet4625	User4625	5	453	Germany	PHP
4626	Tweet4626	User4626	2746	2217	France	Scala
4627	Tweet4627	User4627	1538	632	Austria	Visual Basic
4628	Tweet4628	User4628	153	4182	Portugal	Python
4629	Tweet4629	User4629	4550	895	Croatia	Obj C
4630	Tweet4630	User4630	518	85	Czech Republic	PHP
4631	Tweet4631	User4631	4703	2972	Slovenia	Obj C
4632	Tweet4632	User4632	4139	3277	Estonia	C#
4633	Tweet4633	User4633	1735	4814	Hungary	Visual Basic
4634	Tweet4634	User4634	3648	2282	Poland	Ruby
4635	Tweet4635	User4635	3980	4207	Latvia	Visual Basic
4636	Tweet4636	User4636	446	4739	Luxembourg	Ruby
4637	Tweet4637	User4637	2449	1576	Luxembourg	C
4638	Tweet4638	User4638	4983	3633	Hungary	C++
4639	Tweet4639	User4639	2906	4624	Slovenia	JavaScript
4640	Tweet4640	User4640	4777	2090	Ireland	Python
4641	Tweet4641	User4641	3943	2396	Austria	JavaScript
4642	Tweet4642	User4642	3306	2640	Belgium	Obj C
4643	Tweet4643	User4643	3147	2977	Belgium	Ruby
4644	Tweet4644	User4644	1389	4626	Hungary	Ruby
4645	Tweet4645	User4645	3270	1097	United Kingdom	C
4646	Tweet4646	User4646	377	4743	Romania	Python
4647	Tweet4647	User4647	3413	3404	Estonia	C#
4648	Tweet4648	User4648	872	3391	Bulgaria	Obj C
4649	Tweet4649	User4649	3173	1142	Netherlands	Scala
4650	Tweet4650	User4650	2875	4857	Spain	Python
4651	Tweet4651	User4651	3595	2660	Romania	Visual Basic
4652	Tweet4652	User4652	637	1643	Finland	Visual Basic
4653	Tweet4653	User4653	1126	2407	Lithuania	JavaScript
4654	Tweet4654	User4654	2	4208	Malta	Scala
4655	Tweet4655	User4655	2545	4443	Sweden	Obj C
4656	Tweet4656	User4656	2030	1504	Portugal	Scala
4657	Tweet4657	User4657	4159	4325	Malta	C#
4658	Tweet4658	User4658	2947	1098	Latvia	JavaScript
4659	Tweet4659	User4659	1751	520	Denmark	Python
4660	Tweet4660	User4660	279	2341	France	Ruby
4661	Tweet4661	User4661	143	508	Croatia	C#
4662	Tweet4662	User4662	454	2288	Slovenia	C
4663	Tweet4663	User4663	1644	72	Spain	C#
4664	Tweet4664	User4664	314	1814	Finland	Java
4665	Tweet4665	User4665	578	2090	Austria	Python
4666	Tweet4666	User4666	4904	3714	Cyprus	Obj C
4667	Tweet4667	User4667	920	328	Greece	Scala
4668	Tweet4668	User4668	1482	4258	Denmark	C
4669	Tweet4669	User4669	1064	4489	Ireland	Obj C
4670	Tweet4670	User4670	853	2685	Hungary	PHP
4671	Tweet4671	User4671	4333	3259	Austria	Python
4672	Tweet4672	User4672	692	3813	Austria	Visual Basic
4673	Tweet4673	User4673	3871	4081	Estonia	Scala
4674	Tweet4674	User4674	2180	4186	Germany	Python
4675	Tweet4675	User4675	4934	2917	Estonia	Visual Basic
4676	Tweet4676	User4676	3723	3687	Spain	C
4677	Tweet4677	User4677	514	2419	Bulgaria	C#
4678	Tweet4678	User4678	4314	313	Estonia	JavaScript
4679	Tweet4679	User4679	3832	4972	Poland	Java
4680	Tweet4680	User4680	1773	82	Sweden	PHP
4681	Tweet4681	User4681	2570	820	Poland	Scala
4682	Tweet4682	User4682	574	3900	Ireland	Obj C
4683	Tweet4683	User4683	945	3530	Belgium	Obj C
4684	Tweet4684	User4684	2956	4205	Netherlands	C
4685	Tweet4685	User4685	3145	1790	Lithuania	Java
4686	Tweet4686	User4686	4181	237	Lithuania	Visual Basic
4687	Tweet4687	User4687	2859	2591	Greece	C
4688	Tweet4688	User4688	1048	3029	Austria	Scala
4689	Tweet4689	User4689	270	4248	Poland	Obj C
4690	Tweet4690	User4690	3329	3043	Croatia	C
4691	Tweet4691	User4691	2740	3899	Hungary	Obj C
4692	Tweet4692	User4692	1233	1129	Croatia	C#
4693	Tweet4693	User4693	1102	3764	Latvia	Java
4694	Tweet4694	User4694	2988	1847	Poland	Python
4695	Tweet4695	User4695	4369	1872	Austria	JavaScript
4696	Tweet4696	User4696	2609	3170	Ireland	Java
4697	Tweet4697	User4697	3294	3138	Lithuania	C#
4698	Tweet4698	User4698	1293	3476	Belgium	C++
4699	Tweet4699	User4699	2311	2029	Netherlands	C#
4700	Tweet4700	User4700	2292	3798	France	Obj C
4701	Tweet4701	User4701	4292	1114	Romania	C#
4702	Tweet4702	User4702	3509	4589	Lithuania	PHP
4703	Tweet4703	User4703	138	4376	Greece	C
4704	Tweet4704	User4704	1757	4349	United Kingdom	JavaScript
4705	Tweet4705	User4705	3433	3012	Portugal	C++
4706	Tweet4706	User4706	2318	180	Denmark	Scala
4707	Tweet4707	User4707	3056	4604	Romania	JavaScript
4708	Tweet4708	User4708	4339	1654	Malta	Scala
4709	Tweet4709	User4709	3339	2729	Luxembourg	Scala
4710	Tweet4710	User4710	2495	946	Sweden	Scala
4711	Tweet4711	User4711	43	999	Netherlands	PHP
4712	Tweet4712	User4712	3220	2447	Germany	Python
4713	Tweet4713	User4713	3019	1464	Austria	Java
4714	Tweet4714	User4714	566	2613	Romania	C
4715	Tweet4715	User4715	2612	4819	Greece	C#
4716	Tweet4716	User4716	4481	4619	Portugal	Visual Basic
4717	Tweet4717	User4717	783	3411	United Kingdom	C#
4718	Tweet4718	User4718	2404	1062	Malta	Python
4719	Tweet4719	User4719	1678	3733	Slovakia	Python
4720	Tweet4720	User4720	3478	564	Luxembourg	Scala
4721	Tweet4721	User4721	4482	209	Hungary	C++
4722	Tweet4722	User4722	4404	870	Slovakia	C
4723	Tweet4723	User4723	2716	4356	Finland	Obj C
4724	Tweet4724	User4724	524	766	Greece	C++
4725	Tweet4725	User4725	3359	654	Romania	Python
4726	Tweet4726	User4726	2920	1794	Slovakia	C#
4727	Tweet4727	User4727	2795	2939	Greece	Visual Basic
4728	Tweet4728	User4728	136	4250	Netherlands	Visual Basic
4729	Tweet4729	User4729	2467	915	Cyprus	Obj C
4730	Tweet4730	User4730	3725	3439	Estonia	JavaScript
4731	Tweet4731	User4731	4148	1741	Lithuania	Ruby
4732	Tweet4732	User4732	2233	2873	Italy	Visual Basic
4733	Tweet4733	User4733	493	1443	Belgium	PHP
4734	Tweet4734	User4734	345	2522	Czech Republic	Obj C
4735	Tweet4735	User4735	385	1339	Slovenia	Scala
4736	Tweet4736	User4736	1988	4966	Poland	Java
4737	Tweet4737	User4737	2252	4331	Latvia	C#
4738	Tweet4738	User4738	251	578	Poland	JavaScript
4739	Tweet4739	User4739	382	1377	Portugal	PHP
4740	Tweet4740	User4740	2665	467	Netherlands	Visual Basic
4741	Tweet4741	User4741	3055	3040	Croatia	C#
4742	Tweet4742	User4742	3399	2827	Spain	C++
4743	Tweet4743	User4743	1437	4075	Croatia	C#
4744	Tweet4744	User4744	4547	723	Denmark	Scala
4745	Tweet4745	User4745	2718	3319	Slovakia	JavaScript
4746	Tweet4746	User4746	1779	284	Greece	C
4747	Tweet4747	User4747	141	945	Malta	C
4748	Tweet4748	User4748	2279	1098	Croatia	C++
4749	Tweet4749	User4749	1176	2096	Greece	Scala
4750	Tweet4750	User4750	291	1304	Malta	Ruby
4751	Tweet4751	User4751	26	185	Malta	Python
4752	Tweet4752	User4752	643	4560	France	Obj C
4753	Tweet4753	User4753	4639	3092	Netherlands	C#
4754	Tweet4754	User4754	1616	1463	Luxembourg	Obj C
4755	Tweet4755	User4755	1769	1297	Cyprus	Scala
4756	Tweet4756	User4756	4544	457	United Kingdom	Ruby
4757	Tweet4757	User4757	1940	3027	Italy	JavaScript
4758	Tweet4758	User4758	1445	1043	Belgium	JavaScript
4759	Tweet4759	User4759	3264	977	Germany	PHP
4760	Tweet4760	User4760	2751	2648	Sweden	Java
4761	Tweet4761	User4761	4628	4306	Cyprus	Scala
4762	Tweet4762	User4762	4114	3127	Sweden	JavaScript
4763	Tweet4763	User4763	503	3424	Luxembourg	Scala
4764	Tweet4764	User4764	1156	4036	Latvia	Visual Basic
4765	Tweet4765	User4765	3743	1518	Sweden	C
4766	Tweet4766	User4766	2618	4418	Croatia	C++
4767	Tweet4767	User4767	3186	2149	Finland	C++
4768	Tweet4768	User4768	143	4078	Latvia	C
4769	Tweet4769	User4769	3016	502	Finland	Python
4770	Tweet4770	User4770	1011	1156	Croatia	Python
4771	Tweet4771	User4771	222	1766	Slovakia	Python
4772	Tweet4772	User4772	1065	1728	Slovakia	C++
4773	Tweet4773	User4773	1311	859	Croatia	C#
4774	Tweet4774	User4774	851	1909	Malta	JavaScript
4775	Tweet4775	User4775	830	831	Malta	PHP
4776	Tweet4776	User4776	1840	3974	Poland	Ruby
4777	Tweet4777	User4777	1456	1442	Greece	C#
4778	Tweet4778	User4778	2147	4884	Slovenia	Obj C
4779	Tweet4779	User4779	2721	4786	Czech Republic	C
4780	Tweet4780	User4780	3175	4734	Bulgaria	PHP
4781	Tweet4781	User4781	1998	3301	Estonia	Python
4782	Tweet4782	User4782	1809	3318	Slovenia	C
4783	Tweet4783	User4783	1892	3123	Netherlands	Scala
4784	Tweet4784	User4784	4618	2827	Belgium	Java
4785	Tweet4785	User4785	483	1680	Cyprus	C
4786	Tweet4786	User4786	3879	1273	Poland	Ruby
4787	Tweet4787	User4787	3463	2112	France	JavaScript
4788	Tweet4788	User4788	3210	4176	Slovenia	PHP
4789	Tweet4789	User4789	379	4112	Bulgaria	Python
4790	Tweet4790	User4790	844	1297	Greece	Scala
4791	Tweet4791	User4791	329	2369	Cyprus	Java
4792	Tweet4792	User4792	999	177	Ireland	Scala
4793	Tweet4793	User4793	540	36	Austria	C
4794	Tweet4794	User4794	4548	1999	Finland	Scala
4795	Tweet4795	User4795	4765	3218	Spain	PHP
4796	Tweet4796	User4796	4666	1836	Finland	PHP
4797	Tweet4797	User4797	561	4158	Malta	C++
4798	Tweet4798	User4798	4051	4433	Malta	C
4799	Tweet4799	User4799	2494	693	Spain	PHP
4800	Tweet4800	User4800	498	2235	Malta	Visual Basic
4801	Tweet4801	User4801	629	4673	Germany	PHP
4802	Tweet4802	User4802	2244	4182	Italy	JavaScript
4803	Tweet4803	User4803	4513	4940	Italy	Ruby
4804	Tweet4804	User4804	3954	2155	Ireland	C#
4805	Tweet4805	User4805	1994	2947	Sweden	Visual Basic
4806	Tweet4806	User4806	4433	1199	Bulgaria	Scala
4807	Tweet4807	User4807	551	1860	United Kingdom	Python
4808	Tweet4808	User4808	3883	838	Lithuania	Java
4809	Tweet4809	User4809	4910	2500	France	Java
4810	Tweet4810	User4810	2924	2926	Cyprus	PHP
4811	Tweet4811	User4811	1551	4399	Sweden	Ruby
4812	Tweet4812	User4812	4082	3421	Lithuania	JavaScript
4813	Tweet4813	User4813	3831	2797	Portugal	Visual Basic
4814	Tweet4814	User4814	4163	3616	Italy	PHP
4815	Tweet4815	User4815	1676	2870	Portugal	C
4816	Tweet4816	User4816	4337	4047	Sweden	Scala
4817	Tweet4817	User4817	2415	3715	Czech Republic	C
4818	Tweet4818	User4818	4292	4500	United Kingdom	Obj C
4819	Tweet4819	User4819	1585	4386	Belgium	Java
4820	Tweet4820	User4820	3012	983	France	Python
4821	Tweet4821	User4821	3101	3511	Romania	Ruby
4822	Tweet4822	User4822	2652	4898	Sweden	JavaScript
4823	Tweet4823	User4823	4806	810	Denmark	Obj C
4824	Tweet4824	User4824	2440	2159	Spain	Ruby
4825	Tweet4825	User4825	3391	2209	Greece	C#
4826	Tweet4826	User4826	3517	4030	Greece	Visual Basic
4827	Tweet4827	User4827	4881	3347	United Kingdom	PHP
4828	Tweet4828	User4828	2151	2273	Cyprus	Ruby
4829	Tweet4829	User4829	387	2783	Romania	C
4830	Tweet4830	User4830	1499	3424	Luxembourg	PHP
4831	Tweet4831	User4831	3475	3254	United Kingdom	Python
4832	Tweet4832	User4832	3542	2824	Bulgaria	PHP
4833	Tweet4833	User4833	2990	2369	Sweden	C++
4834	Tweet4834	User4834	537	1002	Slovakia	Ruby
4835	Tweet4835	User4835	1640	1962	Bulgaria	C
4836	Tweet4836	User4836	13	2870	Belgium	Scala
4837	Tweet4837	User4837	4009	1962	Finland	Ruby
4838	Tweet4838	User4838	2947	4398	Germany	Python
4839	Tweet4839	User4839	3446	4237	Greece	Obj C
4840	Tweet4840	User4840	1681	1776	Slovakia	Obj C
4841	Tweet4841	User4841	2957	662	Hungary	C++
4842	Tweet4842	User4842	3117	759	United Kingdom	C
4843	Tweet4843	User4843	1588	999	Italy	Visual Basic
4844	Tweet4844	User4844	1292	3774	Germany	Scala
4845	Tweet4845	User4845	2921	1636	Latvia	Scala
4846	Tweet4846	User4846	1613	2567	Portugal	JavaScript
4847	Tweet4847	User4847	4013	2373	Bulgaria	C++
4848	Tweet4848	User4848	2270	2219	Latvia	C#
4849	Tweet4849	User4849	1467	771	Cyprus	Obj C
4850	Tweet4850	User4850	4322	2645	Denmark	JavaScript
4851	Tweet4851	User4851	1513	1851	Czech Republic	JavaScript
4852	Tweet4852	User4852	1960	3583	Bulgaria	C++
4853	Tweet4853	User4853	2133	2134	Poland	C
4854	Tweet4854	User4854	398	2323	Cyprus	C
4855	Tweet4855	User4855	1039	2369	Bulgaria	PHP
4856	Tweet4856	User4856	2272	4152	Netherlands	Ruby
4857	Tweet4857	User4857	4988	2419	Slovakia	Java
4858	Tweet4858	User4858	903	4316	Belgium	Obj C
4859	Tweet4859	User4859	2478	2550	Slovenia	C++
4860	Tweet4860	User4860	1787	3689	Austria	PHP
4861	Tweet4861	User4861	2493	3080	Germany	Java
4862	Tweet4862	User4862	841	4549	Lithuania	Visual Basic
4863	Tweet4863	User4863	3761	2449	Luxembourg	Ruby
4864	Tweet4864	User4864	1504	1272	France	C++
4865	Tweet4865	User4865	2685	3684	Croatia	Java
4866	Tweet4866	User4866	1004	1514	Estonia	C#
4867	Tweet4867	User4867	1948	621	Czech Republic	Scala
4868	Tweet4868	User4868	2824	2957	Hungary	Ruby
4869	Tweet4869	User4869	441	1692	Italy	C#
4870	Tweet4870	User4870	2483	1556	Denmark	Python
4871	Tweet4871	User4871	4847	3945	Malta	Scala
4872	Tweet4872	User4872	3564	3495	Spain	PHP
4873	Tweet4873	User4873	4812	2046	Portugal	C
4874	Tweet4874	User4874	3172	813	Romania	Scala
4875	Tweet4875	User4875	3990	4669	Cyprus	Java
4876	Tweet4876	User4876	1888	3698	Greece	C#
4877	Tweet4877	User4877	869	116	Denmark	C
4878	Tweet4878	User4878	3233	4736	Lithuania	JavaScript
4879	Tweet4879	User4879	2770	1634	Czech Republic	C++
4880	Tweet4880	User4880	1412	2992	Portugal	Visual Basic
4881	Tweet4881	User4881	8	2698	Lithuania	Visual Basic
4882	Tweet4882	User4882	1277	1048	Lithuania	Java
4883	Tweet4883	User4883	3051	2449	Ireland	PHP
4884	Tweet4884	User4884	4707	2600	Austria	JavaScript
4885	Tweet4885	User4885	1012	4615	Malta	Java
4886	Tweet4886	User4886	3274	1694	Cyprus	Ruby
4887	Tweet4887	User4887	2822	2892	Luxembourg	JavaScript
4888	Tweet4888	User4888	1802	3680	France	PHP
4889	Tweet4889	User4889	1309	4842	Bulgaria	C++
4890	Tweet4890	User4890	709	2868	Belgium	Python
4891	Tweet4891	User4891	103	942	Malta	Python
4892	Tweet4892	User4892	682	2407	Slovenia	C#
4893	Tweet4893	User4893	1330	1337	Denmark	PHP
4894	Tweet4894	User4894	2290	4479	United Kingdom	Python
4895	Tweet4895	User4895	1463	2258	Denmark	Python
4896	Tweet4896	User4896	2273	134	Ireland	C#
4897	Tweet4897	User4897	3109	1244	Sweden	C++
4898	Tweet4898	User4898	1630	2792	Sweden	PHP
4899	Tweet4899	User4899	2236	1053	Spain	Ruby
4900	Tweet4900	User4900	2512	1454	Poland	Java
4901	Tweet4901	User4901	1149	1569	Germany	C
4902	Tweet4902	User4902	1704	1393	Estonia	PHP
4903	Tweet4903	User4903	4591	2264	Luxembourg	Obj C
4904	Tweet4904	User4904	131	1933	Austria	Obj C
4905	Tweet4905	User4905	2607	3900	Czech Republic	C
4906	Tweet4906	User4906	4918	356	United Kingdom	JavaScript
4907	Tweet4907	User4907	4779	2538	Austria	C++
4908	Tweet4908	User4908	2191	231	Luxembourg	C#
4909	Tweet4909	User4909	3552	1108	United Kingdom	Obj C
4910	Tweet4910	User4910	1933	2927	Malta	PHP
4911	Tweet4911	User4911	4657	3680	Latvia	Java
4912	Tweet4912	User4912	2492	4681	Estonia	PHP
4913	Tweet4913	User4913	4924	769	Ireland	Visual Basic
4914	Tweet4914	User4914	1615	3317	Italy	JavaScript
4915	Tweet4915	User4915	1777	3967	Cyprus	JavaScript
4916	Tweet4916	User4916	2999	4249	Italy	Ruby
4917	Tweet4917	User4917	2581	4830	Denmark	Ruby
4918	Tweet4918	User4918	2835	2443	Poland	PHP
4919	Tweet4919	User4919	3964	2927	United Kingdom	Scala
4920	Tweet4920	User4920	4747	347	Czech Republic	Java
4921	Tweet4921	User4921	2806	3340	Luxembourg	Python
4922	Tweet4922	User4922	1967	531	Belgium	Obj C
4923	Tweet4923	User4923	4654	185	Slovenia	C
4924	Tweet4924	User4924	4063	1634	Cyprus	Visual Basic
4925	Tweet4925	User4925	2455	133	United Kingdom	C++
4926	Tweet4926	User4926	4471	1980	Denmark	JavaScript
4927	Tweet4927	User4927	2397	2044	Malta	C++
4928	Tweet4928	User4928	2694	1861	Ireland	Scala
4929	Tweet4929	User4929	857	3256	Slovakia	C
4930	Tweet4930	User4930	832	1063	Czech Republic	Obj C
4931	Tweet4931	User4931	1411	3827	Belgium	Visual Basic
4932	Tweet4932	User4932	2471	167	Malta	PHP
4933	Tweet4933	User4933	418	1015	Italy	Obj C
4934	Tweet4934	User4934	2966	4806	Estonia	C#
4935	Tweet4935	User4935	816	4375	United Kingdom	PHP
4936	Tweet4936	User4936	3323	4504	Portugal	JavaScript
4937	Tweet4937	User4937	2305	2862	France	PHP
4938	Tweet4938	User4938	965	2181	Hungary	Obj C
4939	Tweet4939	User4939	4664	3760	Luxembourg	Python
4940	Tweet4940	User4940	267	2062	Estonia	Python
4941	Tweet4941	User4941	3520	3485	Portugal	PHP
4942	Tweet4942	User4942	4942	2437	Latvia	Java
4943	Tweet4943	User4943	965	4494	Belgium	JavaScript
4944	Tweet4944	User4944	79	1866	Belgium	PHP
4945	Tweet4945	User4945	3603	3886	Spain	C#
4946	Tweet4946	User4946	1330	535	Austria	Python
4947	Tweet4947	User4947	509	445	Estonia	JavaScript
4948	Tweet4948	User4948	3469	4775	Belgium	Ruby
4949	Tweet4949	User4949	4267	513	Ireland	C
4950	Tweet4950	User4950	370	248	Latvia	Visual Basic
4951	Tweet4951	User4951	4793	3885	Estonia	Scala
4952	Tweet4952	User4952	3343	4972	Latvia	JavaScript
4953	Tweet4953	User4953	3107	1066	Slovakia	C++
4954	Tweet4954	User4954	3179	4062	Czech Republic	Ruby
4955	Tweet4955	User4955	3289	531	Bulgaria	Ruby
4956	Tweet4956	User4956	4100	683	United Kingdom	C++
4957	Tweet4957	User4957	2411	1793	Slovenia	Obj C
4958	Tweet4958	User4958	1390	151	Hungary	Java
4959	Tweet4959	User4959	981	2588	Slovenia	PHP
4960	Tweet4960	User4960	4235	4880	Croatia	Java
4961	Tweet4961	User4961	1698	883	Czech Republic	Java
4962	Tweet4962	User4962	4140	3114	Austria	Python
4963	Tweet4963	User4963	1931	2564	Slovakia	Python
4964	Tweet4964	User4964	2849	4603	Belgium	JavaScript
4965	Tweet4965	User4965	1608	4233	United Kingdom	C#
4966	Tweet4966	User4966	3126	4356	Poland	Java
4967	Tweet4967	User4967	2298	18	United Kingdom	Ruby
4968	Tweet4968	User4968	342	51	Denmark	Scala
4969	Tweet4969	User4969	2387	2614	Latvia	PHP
4970	Tweet4970	User4970	4986	4090	Spain	JavaScript
4971	Tweet4971	User4971	607	4504	Netherlands	C
4972	Tweet4972	User4972	1194	1158	France	JavaScript
4973	Tweet4973	User4973	4709	4584	Sweden	Obj C
4974	Tweet4974	User4974	3762	2485	Spain	Scala
4975	Tweet4975	User4975	837	2648	Romania	PHP
4976	Tweet4976	User4976	1153	4365	Sweden	Visual Basic
4977	Tweet4977	User4977	4293	392	United Kingdom	C++
4978	Tweet4978	User4978	4465	4386	Malta	JavaScript
4979	Tweet4979	User4979	2945	1278	France	C
4980	Tweet4980	User4980	525	3593	Slovenia	Python
4981	Tweet4981	User4981	606	2447	Sweden	Ruby
4982	Tweet4982	User4982	65	2847	Finland	JavaScript
4983	Tweet4983	User4983	565	1664	Austria	Java
4984	Tweet4984	User4984	716	2914	Spain	C++
4985	Tweet4985	User4985	1989	845	Ireland	Java
4986	Tweet4986	User4986	4247	3739	Bulgaria	C++
4987	Tweet4987	User4987	1251	2814	Romania	Ruby
4988	Tweet4988	User4988	2024	4362	Germany	Scala
4989	Tweet4989	User4989	4685	16	Romania	Visual Basic
4990	Tweet4990	User4990	3588	1041	Hungary	Ruby
4991	Tweet4991	User4991	1298	2376	Czech Republic	Java
4992	Tweet4992	User4992	1656	2120	Malta	Obj C
4993	Tweet4993	User4993	2567	248	Portugal	C++
4994	Tweet4994	User4994	1566	592	Spain	C++
4995	Tweet4995	User4995	2043	3541	Slovakia	JavaScript
4996	Tweet4996	User4996	2256	3492	Malta	Java
4997	Tweet4997	User4997	2256	1598	Malta	Visual Basic
4998	Tweet4998	User4998	3082	3640	Germany	JavaScript
4999	Tweet4999	User4999	2182	3877	Germany	Python
5000	Tweet5000	User5000	3964	938	Belgium	Visual Basic
5001	Tweet5001	User5001	3096	2391	Estonia	Scala
5002	Tweet5002	User5002	2077	2169	Italy	C
5003	Tweet5003	User5003	4524	3817	Lithuania	Obj C
5004	Tweet5004	User5004	2265	4917	Poland	Java
5005	Tweet5005	User5005	4072	2233	United Kingdom	C++
5006	Tweet5006	User5006	1372	4844	Slovenia	Scala
5007	Tweet5007	User5007	565	29	Romania	Scala
5008	Tweet5008	User5008	3675	743	Lithuania	C++
5009	Tweet5009	User5009	3615	1660	Spain	Python
5010	Tweet5010	User5010	197	693	United Kingdom	JavaScript
5011	Tweet5011	User5011	4572	1841	Poland	Obj C
5012	Tweet5012	User5012	3389	4213	United Kingdom	C++
5013	Tweet5013	User5013	2071	3271	Hungary	Obj C
5014	Tweet5014	User5014	3662	1568	Hungary	C
5015	Tweet5015	User5015	2459	2980	Czech Republic	Obj C
5016	Tweet5016	User5016	1545	4987	Slovakia	C
5017	Tweet5017	User5017	2609	2694	Czech Republic	C++
5018	Tweet5018	User5018	1169	2228	Greece	JavaScript
5019	Tweet5019	User5019	4088	3372	Slovenia	PHP
5020	Tweet5020	User5020	1777	3194	Estonia	PHP
5021	Tweet5021	User5021	3269	39	Netherlands	Java
5022	Tweet5022	User5022	2217	2588	Poland	Ruby
5023	Tweet5023	User5023	2248	1272	Italy	Obj C
5024	Tweet5024	User5024	1795	3404	Belgium	Scala
5025	Tweet5025	User5025	3614	3623	Finland	Visual Basic
5026	Tweet5026	User5026	338	688	Germany	Python
5027	Tweet5027	User5027	3780	2971	Greece	Obj C
5028	Tweet5028	User5028	4061	4776	Sweden	C
5029	Tweet5029	User5029	1710	2361	United Kingdom	Scala
5030	Tweet5030	User5030	4781	2413	Bulgaria	C#
5031	Tweet5031	User5031	2313	2813	Bulgaria	Python
5032	Tweet5032	User5032	654	2180	Romania	C++
5033	Tweet5033	User5033	3993	4169	Portugal	C
5034	Tweet5034	User5034	399	1191	Spain	Visual Basic
5035	Tweet5035	User5035	2110	365	Estonia	Visual Basic
5036	Tweet5036	User5036	2168	3010	Lithuania	Java
5037	Tweet5037	User5037	1932	2	Germany	Scala
5038	Tweet5038	User5038	2301	1433	Slovenia	Ruby
5039	Tweet5039	User5039	4487	846	Netherlands	C
5040	Tweet5040	User5040	1141	1200	Croatia	Visual Basic
5041	Tweet5041	User5041	3247	608	Estonia	Java
5042	Tweet5042	User5042	1698	4698	Malta	C++
5043	Tweet5043	User5043	3204	180	Netherlands	Obj C
5044	Tweet5044	User5044	206	2661	Bulgaria	C#
5045	Tweet5045	User5045	2001	314	Slovakia	Obj C
5046	Tweet5046	User5046	4664	4896	Italy	Scala
5047	Tweet5047	User5047	2170	2291	Austria	Java
5048	Tweet5048	User5048	736	194	Lithuania	PHP
5049	Tweet5049	User5049	4148	4470	Malta	Scala
5050	Tweet5050	User5050	1278	2646	Italy	Ruby
5051	Tweet5051	User5051	4965	4615	Estonia	PHP
5052	Tweet5052	User5052	762	2329	Netherlands	Java
5053	Tweet5053	User5053	2974	2446	Cyprus	Python
5054	Tweet5054	User5054	4034	431	United Kingdom	C++
5055	Tweet5055	User5055	640	3401	Bulgaria	Ruby
5056	Tweet5056	User5056	2014	2305	Spain	Python
5057	Tweet5057	User5057	2865	4532	Latvia	Scala
5058	Tweet5058	User5058	1023	4616	Croatia	C#
5059	Tweet5059	User5059	3267	2316	Finland	Obj C
5060	Tweet5060	User5060	4627	3304	Italy	PHP
5061	Tweet5061	User5061	229	77	Poland	Java
5062	Tweet5062	User5062	3037	1321	Latvia	C++
5063	Tweet5063	User5063	1250	1179	Slovenia	C#
5064	Tweet5064	User5064	2241	416	Bulgaria	JavaScript
5065	Tweet5065	User5065	4256	2751	Lithuania	Scala
5066	Tweet5066	User5066	268	1208	Austria	Python
5067	Tweet5067	User5067	4057	4086	Lithuania	JavaScript
5068	Tweet5068	User5068	2811	4186	Bulgaria	Scala
5069	Tweet5069	User5069	4575	2548	Ireland	C++
5070	Tweet5070	User5070	2338	2632	Czech Republic	C++
5071	Tweet5071	User5071	3394	3851	Estonia	JavaScript
5072	Tweet5072	User5072	1496	2553	Italy	Scala
5073	Tweet5073	User5073	344	4072	Portugal	JavaScript
5074	Tweet5074	User5074	3630	1865	Estonia	Scala
5075	Tweet5075	User5075	1365	4266	Ireland	Python
5076	Tweet5076	User5076	2524	1562	Netherlands	Scala
5077	Tweet5077	User5077	4931	4611	Poland	JavaScript
5078	Tweet5078	User5078	3037	1574	Latvia	Java
5079	Tweet5079	User5079	2160	582	Slovakia	Visual Basic
5080	Tweet5080	User5080	88	3491	Slovenia	C#
5081	Tweet5081	User5081	2884	2346	Germany	Scala
5082	Tweet5082	User5082	1393	2668	Czech Republic	C#
5083	Tweet5083	User5083	4532	3290	Slovakia	Obj C
5084	Tweet5084	User5084	1346	3346	Spain	Scala
5085	Tweet5085	User5085	3837	3177	United Kingdom	JavaScript
5086	Tweet5086	User5086	3528	3769	Latvia	C
5087	Tweet5087	User5087	1932	3575	France	JavaScript
5088	Tweet5088	User5088	2551	1275	Estonia	C
5089	Tweet5089	User5089	2782	3526	Germany	Ruby
5090	Tweet5090	User5090	224	1376	Poland	C++
5091	Tweet5091	User5091	669	3963	Lithuania	PHP
5092	Tweet5092	User5092	1392	3714	Italy	PHP
5093	Tweet5093	User5093	4660	1488	Netherlands	C
5094	Tweet5094	User5094	1634	1230	Sweden	Obj C
5095	Tweet5095	User5095	1730	108	Austria	PHP
5096	Tweet5096	User5096	1114	1387	Romania	Java
5097	Tweet5097	User5097	415	4301	Latvia	Visual Basic
5098	Tweet5098	User5098	3220	1374	Bulgaria	C++
5099	Tweet5099	User5099	1367	675	Greece	C
5100	Tweet5100	User5100	3388	2457	Cyprus	JavaScript
5101	Tweet5101	User5101	161	3799	Slovenia	Ruby
5102	Tweet5102	User5102	3114	1957	Germany	JavaScript
5103	Tweet5103	User5103	2641	2302	Denmark	JavaScript
5104	Tweet5104	User5104	1867	1388	Cyprus	C
5105	Tweet5105	User5105	2764	2260	France	PHP
5106	Tweet5106	User5106	3464	1845	Lithuania	Scala
5107	Tweet5107	User5107	731	3622	Slovenia	Scala
5108	Tweet5108	User5108	4623	2454	Belgium	Java
5109	Tweet5109	User5109	4785	3754	Denmark	Visual Basic
5110	Tweet5110	User5110	2298	3475	Lithuania	C
5111	Tweet5111	User5111	4663	4219	Netherlands	Scala
5112	Tweet5112	User5112	889	1324	Croatia	C
5113	Tweet5113	User5113	1747	1881	Belgium	Python
5114	Tweet5114	User5114	1341	1582	Portugal	C++
5115	Tweet5115	User5115	482	180	Denmark	Ruby
5116	Tweet5116	User5116	1865	328	Slovakia	Ruby
5117	Tweet5117	User5117	1036	981	Croatia	JavaScript
5118	Tweet5118	User5118	906	2175	Lithuania	C
5119	Tweet5119	User5119	1870	2422	Poland	C++
5120	Tweet5120	User5120	885	3420	Finland	Ruby
5121	Tweet5121	User5121	1128	4470	Slovakia	Python
5122	Tweet5122	User5122	640	1568	Poland	Scala
5123	Tweet5123	User5123	632	4634	Hungary	PHP
5124	Tweet5124	User5124	3749	197	Netherlands	C#
5125	Tweet5125	User5125	371	374	Slovenia	Java
5126	Tweet5126	User5126	2257	3157	Netherlands	JavaScript
5127	Tweet5127	User5127	3826	859	France	Ruby
5128	Tweet5128	User5128	3431	3311	Romania	C#
5129	Tweet5129	User5129	712	3621	Spain	C++
5130	Tweet5130	User5130	1011	1071	Greece	Python
5131	Tweet5131	User5131	2796	430	Finland	Ruby
5132	Tweet5132	User5132	1334	3714	Cyprus	Obj C
5133	Tweet5133	User5133	580	3322	Slovakia	Python
5134	Tweet5134	User5134	3730	307	Germany	PHP
5135	Tweet5135	User5135	1158	2878	Cyprus	C++
5136	Tweet5136	User5136	2507	1866	Czech Republic	Obj C
5137	Tweet5137	User5137	623	177	Bulgaria	Python
5138	Tweet5138	User5138	2039	1408	United Kingdom	Java
5139	Tweet5139	User5139	1119	1145	Italy	Scala
5140	Tweet5140	User5140	2672	1887	Belgium	Python
5141	Tweet5141	User5141	4420	3157	Lithuania	Scala
5142	Tweet5142	User5142	197	3203	Slovakia	Obj C
5143	Tweet5143	User5143	4965	3655	Austria	Ruby
5144	Tweet5144	User5144	4741	2375	Slovakia	JavaScript
5145	Tweet5145	User5145	3730	2296	Lithuania	Scala
5146	Tweet5146	User5146	3905	3682	Poland	Obj C
5147	Tweet5147	User5147	2962	924	Italy	Obj C
5148	Tweet5148	User5148	768	2490	Luxembourg	Ruby
5149	Tweet5149	User5149	4758	1358	Ireland	C#
5150	Tweet5150	User5150	2674	368	Spain	Scala
5151	Tweet5151	User5151	3051	66	Latvia	C
5152	Tweet5152	User5152	1893	863	Portugal	Python
5153	Tweet5153	User5153	1375	4890	Croatia	C#
5154	Tweet5154	User5154	3854	4494	Belgium	C#
5155	Tweet5155	User5155	1191	19	Latvia	Scala
5156	Tweet5156	User5156	3041	1974	Germany	Python
5157	Tweet5157	User5157	1566	4790	Luxembourg	C++
5158	Tweet5158	User5158	3072	349	Slovakia	Python
5159	Tweet5159	User5159	1268	4982	Finland	PHP
5160	Tweet5160	User5160	4509	2236	Belgium	Python
5161	Tweet5161	User5161	471	2094	Germany	C#
5162	Tweet5162	User5162	3291	4715	Spain	C
5163	Tweet5163	User5163	2195	580	Bulgaria	Python
5164	Tweet5164	User5164	1697	1501	Spain	Python
5165	Tweet5165	User5165	2580	1965	United Kingdom	Visual Basic
5166	Tweet5166	User5166	2380	2250	Croatia	Obj C
5167	Tweet5167	User5167	2097	3171	Lithuania	Scala
5168	Tweet5168	User5168	3842	2839	Sweden	Obj C
5169	Tweet5169	User5169	867	4760	Latvia	Obj C
5170	Tweet5170	User5170	2563	4223	Croatia	Scala
5171	Tweet5171	User5171	581	4342	Latvia	C++
5172	Tweet5172	User5172	170	3350	Cyprus	PHP
5173	Tweet5173	User5173	2843	4297	Sweden	Ruby
5174	Tweet5174	User5174	2869	1217	Estonia	C
5175	Tweet5175	User5175	2437	2166	Greece	PHP
5176	Tweet5176	User5176	3459	1573	Latvia	C++
5177	Tweet5177	User5177	3340	1406	Romania	Scala
5178	Tweet5178	User5178	655	1416	Luxembourg	Java
5179	Tweet5179	User5179	1780	4376	Spain	Obj C
5180	Tweet5180	User5180	4856	3502	Netherlands	C#
5181	Tweet5181	User5181	1073	4081	France	Visual Basic
5182	Tweet5182	User5182	3067	103	Romania	PHP
5183	Tweet5183	User5183	4289	3676	United Kingdom	Scala
5184	Tweet5184	User5184	2092	4523	Estonia	Obj C
5185	Tweet5185	User5185	2803	3688	Lithuania	Python
5186	Tweet5186	User5186	2235	997	Slovenia	Scala
5187	Tweet5187	User5187	856	2948	Croatia	Scala
5188	Tweet5188	User5188	4940	4089	Croatia	Ruby
5189	Tweet5189	User5189	110	2401	Romania	C
5190	Tweet5190	User5190	1814	2750	Lithuania	C
5191	Tweet5191	User5191	713	793	Sweden	Scala
5192	Tweet5192	User5192	2509	1401	Belgium	C++
5193	Tweet5193	User5193	4037	4849	Latvia	JavaScript
5194	Tweet5194	User5194	3584	3189	Portugal	Obj C
5195	Tweet5195	User5195	3895	510	Spain	Ruby
5196	Tweet5196	User5196	4205	4941	Netherlands	C#
5197	Tweet5197	User5197	4530	880	Sweden	C++
5198	Tweet5198	User5198	562	177	Spain	Python
5199	Tweet5199	User5199	2643	1689	Slovakia	C#
5200	Tweet5200	User5200	127	2146	Luxembourg	C#
5201	Tweet5201	User5201	3230	4434	Sweden	Java
5202	Tweet5202	User5202	141	327	Spain	C#
5203	Tweet5203	User5203	4133	1019	Portugal	C++
5204	Tweet5204	User5204	1957	1227	Bulgaria	JavaScript
5205	Tweet5205	User5205	2245	37	Malta	Scala
5206	Tweet5206	User5206	3268	2428	United Kingdom	C++
5207	Tweet5207	User5207	3817	3047	France	Ruby
5208	Tweet5208	User5208	3640	4069	Greece	Obj C
5209	Tweet5209	User5209	4131	2657	Poland	C#
5210	Tweet5210	User5210	4916	4983	Estonia	Ruby
5211	Tweet5211	User5211	3795	3692	Germany	Obj C
5212	Tweet5212	User5212	1820	3312	Portugal	C
5213	Tweet5213	User5213	378	3932	Austria	Visual Basic
5214	Tweet5214	User5214	3520	1330	Denmark	PHP
5215	Tweet5215	User5215	1027	3722	Malta	Obj C
5216	Tweet5216	User5216	4504	1576	Latvia	Ruby
5217	Tweet5217	User5217	2501	1911	Lithuania	C
5218	Tweet5218	User5218	1954	2663	Ireland	C
5219	Tweet5219	User5219	3121	3655	Romania	Obj C
5220	Tweet5220	User5220	1384	2884	Denmark	PHP
5221	Tweet5221	User5221	4664	1169	Slovenia	Obj C
5222	Tweet5222	User5222	2218	2753	Spain	Python
5223	Tweet5223	User5223	109	3960	Croatia	C++
5224	Tweet5224	User5224	1745	3129	Italy	JavaScript
5225	Tweet5225	User5225	2462	2829	Cyprus	Scala
5226	Tweet5226	User5226	3944	3647	Denmark	JavaScript
5227	Tweet5227	User5227	4924	4564	Estonia	C
5228	Tweet5228	User5228	1924	1326	Cyprus	C#
5229	Tweet5229	User5229	925	3709	Ireland	Scala
5230	Tweet5230	User5230	3900	4462	Cyprus	Scala
5231	Tweet5231	User5231	3792	1115	Poland	Ruby
5232	Tweet5232	User5232	522	2877	Estonia	Java
5233	Tweet5233	User5233	2239	4280	Slovenia	Scala
5234	Tweet5234	User5234	4701	488	Slovenia	Ruby
5235	Tweet5235	User5235	4051	43	Greece	Obj C
5236	Tweet5236	User5236	1312	641	Latvia	C
5237	Tweet5237	User5237	3017	4094	Czech Republic	C
5238	Tweet5238	User5238	65	4080	Estonia	PHP
5239	Tweet5239	User5239	2112	2886	Germany	C++
5240	Tweet5240	User5240	3440	4058	Portugal	Scala
5241	Tweet5241	User5241	4769	1159	Netherlands	C++
5242	Tweet5242	User5242	3437	378	Spain	Visual Basic
5243	Tweet5243	User5243	4331	3648	Romania	Ruby
5244	Tweet5244	User5244	137	3063	Greece	C
5245	Tweet5245	User5245	3423	4033	Netherlands	C++
5246	Tweet5246	User5246	3094	4113	Czech Republic	C++
5247	Tweet5247	User5247	4795	4805	Slovakia	Visual Basic
5248	Tweet5248	User5248	3350	1761	Belgium	C++
5249	Tweet5249	User5249	735	2588	Greece	Visual Basic
5250	Tweet5250	User5250	2818	4756	Germany	Obj C
5251	Tweet5251	User5251	467	1167	Slovenia	Ruby
5252	Tweet5252	User5252	2652	4382	Latvia	C#
5253	Tweet5253	User5253	3548	4039	Austria	C#
5254	Tweet5254	User5254	4115	3637	Denmark	Python
5255	Tweet5255	User5255	1797	3092	Slovakia	C#
5256	Tweet5256	User5256	1734	2685	Lithuania	JavaScript
5257	Tweet5257	User5257	2815	2573	Ireland	C#
5258	Tweet5258	User5258	4982	3509	Sweden	C
5259	Tweet5259	User5259	1857	3553	Germany	Python
5260	Tweet5260	User5260	1075	1626	Estonia	PHP
5261	Tweet5261	User5261	1494	141	Ireland	Java
5262	Tweet5262	User5262	333	2690	Spain	PHP
5263	Tweet5263	User5263	4192	2323	Malta	C#
5264	Tweet5264	User5264	341	1674	Austria	Java
5265	Tweet5265	User5265	3844	4840	Netherlands	Python
5266	Tweet5266	User5266	2845	2711	Cyprus	JavaScript
5267	Tweet5267	User5267	4224	2020	Croatia	C#
5268	Tweet5268	User5268	1154	2878	Italy	PHP
5269	Tweet5269	User5269	1939	2167	Croatia	Python
5270	Tweet5270	User5270	2383	2472	Romania	Obj C
5271	Tweet5271	User5271	2702	4955	Czech Republic	PHP
5272	Tweet5272	User5272	1342	3910	Czech Republic	Visual Basic
5273	Tweet5273	User5273	744	4899	Cyprus	Scala
5274	Tweet5274	User5274	4486	4300	United Kingdom	C
5275	Tweet5275	User5275	1624	3995	Malta	PHP
5276	Tweet5276	User5276	146	746	Germany	Visual Basic
5277	Tweet5277	User5277	3550	4792	Malta	Java
5278	Tweet5278	User5278	3424	3584	Italy	Visual Basic
5279	Tweet5279	User5279	953	4229	Slovenia	C
5280	Tweet5280	User5280	2647	1670	Netherlands	Python
5281	Tweet5281	User5281	3164	2744	Luxembourg	JavaScript
5282	Tweet5282	User5282	3497	758	Latvia	Scala
5283	Tweet5283	User5283	4150	4004	Romania	PHP
5284	Tweet5284	User5284	1329	3961	Sweden	C++
5285	Tweet5285	User5285	3307	3338	Belgium	JavaScript
5286	Tweet5286	User5286	3182	4973	Malta	C++
5287	Tweet5287	User5287	3769	2757	Poland	PHP
5288	Tweet5288	User5288	546	1023	Italy	PHP
5289	Tweet5289	User5289	4465	4051	Lithuania	C++
5290	Tweet5290	User5290	2037	567	Bulgaria	Python
5291	Tweet5291	User5291	2103	927	Cyprus	C
5292	Tweet5292	User5292	1463	4854	Estonia	Java
5293	Tweet5293	User5293	4515	3489	Netherlands	C
5294	Tweet5294	User5294	2442	2688	Estonia	JavaScript
5295	Tweet5295	User5295	4782	1164	Croatia	JavaScript
5296	Tweet5296	User5296	730	1226	Finland	JavaScript
5297	Tweet5297	User5297	2044	4989	Hungary	Ruby
5298	Tweet5298	User5298	2271	1193	Poland	C++
5299	Tweet5299	User5299	238	3522	Spain	Scala
5300	Tweet5300	User5300	3382	3067	Finland	Scala
5301	Tweet5301	User5301	957	1017	Poland	C
5302	Tweet5302	User5302	3499	1476	Portugal	JavaScript
5303	Tweet5303	User5303	4304	4634	Portugal	C#
5304	Tweet5304	User5304	3542	3940	Malta	PHP
5305	Tweet5305	User5305	3715	1488	Spain	C#
5306	Tweet5306	User5306	69	2068	Poland	Visual Basic
5307	Tweet5307	User5307	2202	3166	Spain	Python
5308	Tweet5308	User5308	3672	3895	Austria	Obj C
5309	Tweet5309	User5309	4977	4330	Sweden	C
5310	Tweet5310	User5310	4944	4892	Lithuania	JavaScript
5311	Tweet5311	User5311	4477	241	Hungary	PHP
5312	Tweet5312	User5312	2445	2084	Belgium	C
5313	Tweet5313	User5313	2487	1340	Belgium	Java
5314	Tweet5314	User5314	32	2410	Lithuania	C++
5315	Tweet5315	User5315	2139	2056	Greece	C
5316	Tweet5316	User5316	3945	4314	Czech Republic	Obj C
5317	Tweet5317	User5317	4633	1845	Malta	Obj C
5318	Tweet5318	User5318	1965	2279	Malta	C
5319	Tweet5319	User5319	1546	93	United Kingdom	C#
5320	Tweet5320	User5320	2026	3540	Malta	C#
5321	Tweet5321	User5321	3641	4748	Estonia	Obj C
5322	Tweet5322	User5322	1317	4573	Greece	Scala
5323	Tweet5323	User5323	1830	495	Denmark	Visual Basic
5324	Tweet5324	User5324	1207	347	Finland	C
5325	Tweet5325	User5325	1664	3283	Croatia	PHP
5326	Tweet5326	User5326	1190	1187	Croatia	C
5327	Tweet5327	User5327	2269	2652	Finland	Ruby
5328	Tweet5328	User5328	574	4475	Denmark	Python
5329	Tweet5329	User5329	2885	3644	Greece	Scala
5330	Tweet5330	User5330	861	740	Croatia	JavaScript
5331	Tweet5331	User5331	3048	3943	Spain	Python
5332	Tweet5332	User5332	4084	1038	Croatia	Scala
5333	Tweet5333	User5333	27	2521	Finland	Visual Basic
5334	Tweet5334	User5334	1977	3288	Germany	Java
5335	Tweet5335	User5335	2334	1865	Malta	PHP
5336	Tweet5336	User5336	2410	3436	Spain	JavaScript
5337	Tweet5337	User5337	76	1223	Croatia	C++
5338	Tweet5338	User5338	2859	4428	France	Scala
5339	Tweet5339	User5339	810	925	Slovenia	Visual Basic
5340	Tweet5340	User5340	3894	2283	Luxembourg	Python
5341	Tweet5341	User5341	195	2985	Austria	C++
5342	Tweet5342	User5342	289	4432	Romania	Ruby
5343	Tweet5343	User5343	3427	4837	Estonia	PHP
5344	Tweet5344	User5344	1490	3778	Sweden	Ruby
5345	Tweet5345	User5345	1950	638	Netherlands	C
5346	Tweet5346	User5346	3501	525	Greece	JavaScript
5347	Tweet5347	User5347	610	2534	Romania	JavaScript
5348	Tweet5348	User5348	669	3778	Netherlands	PHP
5349	Tweet5349	User5349	3840	1743	Luxembourg	Java
5350	Tweet5350	User5350	4736	1198	Estonia	C#
5351	Tweet5351	User5351	1399	652	Luxembourg	Python
5352	Tweet5352	User5352	2528	1750	Czech Republic	C++
5353	Tweet5353	User5353	232	3284	Germany	Java
5354	Tweet5354	User5354	1049	1756	Portugal	C++
5355	Tweet5355	User5355	3180	778	Slovakia	Visual Basic
5356	Tweet5356	User5356	4509	2217	Germany	JavaScript
5357	Tweet5357	User5357	3345	3844	Netherlands	Obj C
5358	Tweet5358	User5358	1033	4188	Greece	C
5359	Tweet5359	User5359	4825	1338	Cyprus	Obj C
5360	Tweet5360	User5360	4785	747	Italy	Visual Basic
5361	Tweet5361	User5361	492	4880	Germany	C++
5362	Tweet5362	User5362	370	897	Slovenia	C#
5363	Tweet5363	User5363	1717	4483	Bulgaria	Python
5364	Tweet5364	User5364	2516	4858	Czech Republic	Java
5365	Tweet5365	User5365	1791	4789	United Kingdom	Visual Basic
5366	Tweet5366	User5366	4528	1061	Bulgaria	Java
5367	Tweet5367	User5367	4774	4637	Hungary	C++
5368	Tweet5368	User5368	2464	3775	Cyprus	Java
5369	Tweet5369	User5369	434	1729	Germany	PHP
5370	Tweet5370	User5370	3501	3973	Estonia	C++
5371	Tweet5371	User5371	3755	780	Cyprus	Scala
5372	Tweet5372	User5372	1094	523	Hungary	Visual Basic
5373	Tweet5373	User5373	1207	3696	Poland	Obj C
5374	Tweet5374	User5374	3054	1496	Lithuania	Visual Basic
5375	Tweet5375	User5375	2307	4161	Netherlands	Obj C
5376	Tweet5376	User5376	204	2268	Croatia	C#
5377	Tweet5377	User5377	3054	2540	Spain	PHP
5378	Tweet5378	User5378	4692	4129	Italy	PHP
5379	Tweet5379	User5379	545	4754	Romania	PHP
5380	Tweet5380	User5380	4462	232	Latvia	Python
5381	Tweet5381	User5381	4477	4114	Lithuania	Scala
5382	Tweet5382	User5382	856	1432	Italy	Java
5383	Tweet5383	User5383	2442	1049	Sweden	Python
5384	Tweet5384	User5384	3447	4928	France	C#
5385	Tweet5385	User5385	3252	1022	Sweden	C#
5386	Tweet5386	User5386	1330	4910	Belgium	JavaScript
5387	Tweet5387	User5387	3819	3004	Belgium	C++
5388	Tweet5388	User5388	3620	166	Ireland	Ruby
5389	Tweet5389	User5389	755	1296	Latvia	PHP
5390	Tweet5390	User5390	1837	3091	Belgium	Scala
5391	Tweet5391	User5391	1123	1467	Ireland	Python
5392	Tweet5392	User5392	973	4865	Latvia	C
5393	Tweet5393	User5393	1804	2850	Greece	C++
5394	Tweet5394	User5394	1827	4835	Finland	JavaScript
5395	Tweet5395	User5395	4343	4277	Poland	Python
5396	Tweet5396	User5396	952	3519	United Kingdom	C++
5397	Tweet5397	User5397	167	1443	Denmark	Python
5398	Tweet5398	User5398	1136	4842	Greece	Scala
5399	Tweet5399	User5399	3423	788	Denmark	Obj C
5400	Tweet5400	User5400	2217	1239	Denmark	C#
5401	Tweet5401	User5401	2857	3046	Malta	PHP
5402	Tweet5402	User5402	4121	148	Greece	C#
5403	Tweet5403	User5403	364	113	Estonia	Scala
5404	Tweet5404	User5404	4306	1887	Ireland	Ruby
5405	Tweet5405	User5405	1319	4398	Latvia	JavaScript
5406	Tweet5406	User5406	2148	606	Latvia	C
5407	Tweet5407	User5407	1668	2019	Cyprus	Scala
5408	Tweet5408	User5408	432	2081	Greece	C++
5409	Tweet5409	User5409	2336	1693	Sweden	Java
5410	Tweet5410	User5410	4732	4253	Slovakia	Ruby
5411	Tweet5411	User5411	4428	2544	Austria	PHP
5412	Tweet5412	User5412	3676	1297	Netherlands	C++
5413	Tweet5413	User5413	1475	304	United Kingdom	JavaScript
5414	Tweet5414	User5414	1205	4072	Austria	Ruby
5415	Tweet5415	User5415	252	1537	Finland	Ruby
5416	Tweet5416	User5416	3928	2198	Netherlands	C
5417	Tweet5417	User5417	2539	3520	Denmark	JavaScript
5418	Tweet5418	User5418	1140	970	Portugal	C
5419	Tweet5419	User5419	2063	995	Italy	C#
5420	Tweet5420	User5420	2672	1314	Croatia	C++
5421	Tweet5421	User5421	1887	4220	Slovenia	Python
5422	Tweet5422	User5422	606	824	Romania	Python
5423	Tweet5423	User5423	4478	3848	Estonia	Obj C
5424	Tweet5424	User5424	93	1305	Latvia	Python
5425	Tweet5425	User5425	4258	738	Cyprus	C#
5426	Tweet5426	User5426	4189	2190	Latvia	PHP
5427	Tweet5427	User5427	1229	1928	Finland	Java
5428	Tweet5428	User5428	1447	511	Finland	Ruby
5429	Tweet5429	User5429	938	2858	Hungary	Obj C
5430	Tweet5430	User5430	3625	1894	Slovakia	C#
5431	Tweet5431	User5431	768	3408	Spain	Scala
5432	Tweet5432	User5432	135	3213	United Kingdom	JavaScript
5433	Tweet5433	User5433	486	1659	Poland	PHP
5434	Tweet5434	User5434	4909	1409	Austria	PHP
5435	Tweet5435	User5435	797	3748	France	C++
5436	Tweet5436	User5436	4104	1619	Malta	JavaScript
5437	Tweet5437	User5437	4499	229	Romania	C#
5438	Tweet5438	User5438	2518	3367	Slovenia	C#
5439	Tweet5439	User5439	2574	1333	Slovakia	C#
5440	Tweet5440	User5440	3434	4157	Denmark	JavaScript
5441	Tweet5441	User5441	913	3106	Romania	Scala
5442	Tweet5442	User5442	4692	2343	Netherlands	C
5443	Tweet5443	User5443	3645	4830	Cyprus	Java
5444	Tweet5444	User5444	4020	4799	Slovakia	Obj C
5445	Tweet5445	User5445	3443	3895	Bulgaria	Obj C
5446	Tweet5446	User5446	3319	1301	Czech Republic	Ruby
5447	Tweet5447	User5447	2967	4958	Croatia	C++
5448	Tweet5448	User5448	4706	2017	Malta	C
5449	Tweet5449	User5449	2092	2719	Bulgaria	Python
5450	Tweet5450	User5450	339	4141	Portugal	Python
5451	Tweet5451	User5451	3625	3467	Slovakia	Obj C
5452	Tweet5452	User5452	3032	4985	Greece	C#
5453	Tweet5453	User5453	1344	4148	Belgium	Scala
5454	Tweet5454	User5454	198	684	France	Java
5455	Tweet5455	User5455	2479	3372	Finland	Java
5456	Tweet5456	User5456	2911	4744	Belgium	Obj C
5457	Tweet5457	User5457	3202	1070	Hungary	Scala
5458	Tweet5458	User5458	302	1728	Estonia	Visual Basic
5459	Tweet5459	User5459	3799	1605	Czech Republic	Obj C
5460	Tweet5460	User5460	1824	703	Lithuania	Scala
5461	Tweet5461	User5461	1482	2018	Portugal	Scala
5462	Tweet5462	User5462	3695	2999	Czech Republic	Java
5463	Tweet5463	User5463	4487	1778	Austria	Ruby
5464	Tweet5464	User5464	3484	2417	Luxembourg	Ruby
5465	Tweet5465	User5465	2058	4032	Estonia	PHP
5466	Tweet5466	User5466	2280	2388	Hungary	Visual Basic
5467	Tweet5467	User5467	4029	2665	Denmark	PHP
5468	Tweet5468	User5468	4	2461	Italy	Ruby
5469	Tweet5469	User5469	3022	3780	Lithuania	C
5470	Tweet5470	User5470	2618	267	Romania	Java
5471	Tweet5471	User5471	4718	284	Luxembourg	C++
5472	Tweet5472	User5472	4259	4419	Netherlands	Java
5473	Tweet5473	User5473	3066	4507	Malta	Scala
5474	Tweet5474	User5474	1545	2848	Cyprus	C
5475	Tweet5475	User5475	2358	752	Italy	JavaScript
5476	Tweet5476	User5476	3084	420	Slovakia	Ruby
5477	Tweet5477	User5477	1857	3917	Ireland	Scala
5478	Tweet5478	User5478	1337	2141	France	Java
5479	Tweet5479	User5479	1129	4312	Cyprus	C#
5480	Tweet5480	User5480	1218	2738	Spain	PHP
5481	Tweet5481	User5481	2369	2678	Lithuania	C++
5482	Tweet5482	User5482	225	2778	Germany	C
5483	Tweet5483	User5483	1833	3984	Czech Republic	Ruby
5484	Tweet5484	User5484	1859	1386	Bulgaria	Java
5485	Tweet5485	User5485	1598	2789	Estonia	Java
5486	Tweet5486	User5486	3166	4992	Luxembourg	Java
5487	Tweet5487	User5487	3968	2604	Lithuania	Scala
5488	Tweet5488	User5488	4073	4038	Slovakia	Python
5489	Tweet5489	User5489	3843	3169	Ireland	Obj C
5490	Tweet5490	User5490	3178	2982	Germany	Scala
5491	Tweet5491	User5491	4436	127	Portugal	C#
5492	Tweet5492	User5492	4526	1577	Cyprus	Ruby
5493	Tweet5493	User5493	729	454	Germany	Ruby
5494	Tweet5494	User5494	2979	2824	Estonia	Obj C
5495	Tweet5495	User5495	4198	1698	United Kingdom	Ruby
5496	Tweet5496	User5496	4004	1411	Belgium	Java
5497	Tweet5497	User5497	105	90	Hungary	Scala
5498	Tweet5498	User5498	1342	4876	France	Python
5499	Tweet5499	User5499	1271	612	France	Java
5500	Tweet5500	User5500	1129	2174	Lithuania	Visual Basic
5501	Tweet5501	User5501	4299	4052	Croatia	Ruby
5502	Tweet5502	User5502	2108	1426	Romania	C
5503	Tweet5503	User5503	1283	4495	Romania	Obj C
5504	Tweet5504	User5504	3772	4211	Italy	Python
5505	Tweet5505	User5505	2816	242	Slovakia	JavaScript
5506	Tweet5506	User5506	526	3035	France	C#
5507	Tweet5507	User5507	327	174	Slovenia	PHP
5508	Tweet5508	User5508	4675	3930	Croatia	C#
5509	Tweet5509	User5509	1720	520	Netherlands	Python
5510	Tweet5510	User5510	2252	721	Ireland	PHP
5511	Tweet5511	User5511	1268	259	Estonia	C
5512	Tweet5512	User5512	2439	922	Slovakia	PHP
5513	Tweet5513	User5513	2492	2971	Lithuania	Java
5514	Tweet5514	User5514	3148	2829	Slovakia	Visual Basic
5515	Tweet5515	User5515	3169	1636	Croatia	Ruby
5516	Tweet5516	User5516	2346	649	Greece	C
5517	Tweet5517	User5517	4688	3021	Ireland	Java
5518	Tweet5518	User5518	4734	712	Poland	JavaScript
5519	Tweet5519	User5519	699	2999	Netherlands	Visual Basic
5520	Tweet5520	User5520	945	4047	Malta	Visual Basic
5521	Tweet5521	User5521	952	4986	Romania	JavaScript
5522	Tweet5522	User5522	2664	4109	Austria	Ruby
5523	Tweet5523	User5523	4226	3379	Austria	C++
5524	Tweet5524	User5524	1747	4991	Ireland	Ruby
5525	Tweet5525	User5525	1989	114	Sweden	JavaScript
5526	Tweet5526	User5526	957	3465	United Kingdom	Ruby
5527	Tweet5527	User5527	1384	1185	Czech Republic	Java
5528	Tweet5528	User5528	1560	204	Germany	Scala
5529	Tweet5529	User5529	1922	3982	Netherlands	PHP
5530	Tweet5530	User5530	1619	3544	Hungary	PHP
5531	Tweet5531	User5531	1805	4273	Denmark	Obj C
5532	Tweet5532	User5532	3949	1550	Czech Republic	PHP
5533	Tweet5533	User5533	1055	3964	Bulgaria	Ruby
5534	Tweet5534	User5534	522	1449	Slovenia	Java
5535	Tweet5535	User5535	3541	1676	Portugal	Obj C
5536	Tweet5536	User5536	4079	3165	France	Obj C
5537	Tweet5537	User5537	997	3313	Germany	JavaScript
5538	Tweet5538	User5538	1156	3632	Denmark	PHP
5539	Tweet5539	User5539	1689	1432	Germany	Python
5540	Tweet5540	User5540	1937	3232	United Kingdom	Ruby
5541	Tweet5541	User5541	627	2438	Belgium	JavaScript
5542	Tweet5542	User5542	3665	3753	Romania	JavaScript
5543	Tweet5543	User5543	2869	1120	Hungary	PHP
5544	Tweet5544	User5544	2337	3389	Finland	C#
5545	Tweet5545	User5545	4741	2777	Luxembourg	C#
5546	Tweet5546	User5546	1208	4800	Poland	JavaScript
5547	Tweet5547	User5547	3936	340	France	Python
5548	Tweet5548	User5548	1041	1513	Belgium	Obj C
5549	Tweet5549	User5549	3480	2500	Finland	Obj C
5550	Tweet5550	User5550	4976	809	Croatia	Scala
5551	Tweet5551	User5551	1372	4591	France	Visual Basic
5552	Tweet5552	User5552	3973	2051	Slovakia	PHP
5553	Tweet5553	User5553	3627	3723	Luxembourg	Java
5554	Tweet5554	User5554	3722	4757	Bulgaria	Ruby
5555	Tweet5555	User5555	2561	4859	Netherlands	Obj C
5556	Tweet5556	User5556	4085	2768	Croatia	Obj C
5557	Tweet5557	User5557	1756	2902	Czech Republic	C++
5558	Tweet5558	User5558	1647	622	Sweden	Ruby
5559	Tweet5559	User5559	3044	2285	Czech Republic	Python
5560	Tweet5560	User5560	903	3135	Finland	JavaScript
5561	Tweet5561	User5561	1391	3983	Estonia	Visual Basic
5562	Tweet5562	User5562	3832	753	Netherlands	Visual Basic
5563	Tweet5563	User5563	3730	2841	United Kingdom	JavaScript
5564	Tweet5564	User5564	43	1304	Slovenia	Python
5565	Tweet5565	User5565	94	1727	Slovakia	C++
5566	Tweet5566	User5566	2587	199	Estonia	Ruby
5567	Tweet5567	User5567	3942	4679	Bulgaria	C
5568	Tweet5568	User5568	3896	679	Spain	JavaScript
5569	Tweet5569	User5569	1430	3452	Austria	Scala
5570	Tweet5570	User5570	3910	3334	Belgium	Visual Basic
5571	Tweet5571	User5571	2010	1579	Ireland	C++
5572	Tweet5572	User5572	298	3463	Austria	Obj C
5573	Tweet5573	User5573	337	4620	Cyprus	Visual Basic
5574	Tweet5574	User5574	3076	3034	Sweden	Obj C
5575	Tweet5575	User5575	490	4242	France	C#
5576	Tweet5576	User5576	1018	4025	Italy	PHP
5577	Tweet5577	User5577	4473	3102	Portugal	Obj C
5578	Tweet5578	User5578	3632	4430	Lithuania	Visual Basic
5579	Tweet5579	User5579	320	1698	Lithuania	Visual Basic
5580	Tweet5580	User5580	883	820	Belgium	Visual Basic
5581	Tweet5581	User5581	4811	2572	Ireland	C++
5582	Tweet5582	User5582	2084	1342	Sweden	C#
5583	Tweet5583	User5583	3210	3717	Spain	C++
5584	Tweet5584	User5584	1375	3393	Netherlands	Ruby
5585	Tweet5585	User5585	2872	4198	Slovakia	Java
5586	Tweet5586	User5586	3323	2138	Poland	Scala
5587	Tweet5587	User5587	3782	1508	Luxembourg	Ruby
5588	Tweet5588	User5588	3668	1460	Belgium	JavaScript
5589	Tweet5589	User5589	702	2339	Luxembourg	Java
5590	Tweet5590	User5590	3644	3580	Ireland	Java
5591	Tweet5591	User5591	4491	1030	Croatia	C++
5592	Tweet5592	User5592	3823	548	Slovakia	C
5593	Tweet5593	User5593	1786	4010	Croatia	C#
5594	Tweet5594	User5594	1573	2341	France	PHP
5595	Tweet5595	User5595	2990	2014	Ireland	Python
5596	Tweet5596	User5596	1442	4824	Greece	C#
5597	Tweet5597	User5597	2941	2902	Bulgaria	C#
5598	Tweet5598	User5598	3043	3597	Bulgaria	Visual Basic
5599	Tweet5599	User5599	254	581	Spain	C#
5600	Tweet5600	User5600	4998	2796	Luxembourg	JavaScript
5601	Tweet5601	User5601	1983	2029	Poland	Scala
5602	Tweet5602	User5602	3654	4708	Latvia	Obj C
5603	Tweet5603	User5603	52	518	Finland	Ruby
5604	Tweet5604	User5604	1395	1047	Slovakia	C
5605	Tweet5605	User5605	3715	332	Malta	C
5606	Tweet5606	User5606	1529	3764	Belgium	Ruby
5607	Tweet5607	User5607	4550	3237	France	Visual Basic
5608	Tweet5608	User5608	1184	3311	Slovenia	C
5609	Tweet5609	User5609	159	3050	Czech Republic	C++
5610	Tweet5610	User5610	4927	17	Malta	PHP
5611	Tweet5611	User5611	408	4867	Portugal	Ruby
5612	Tweet5612	User5612	557	1026	Latvia	Scala
5613	Tweet5613	User5613	4859	2420	Estonia	PHP
5614	Tweet5614	User5614	42	300	Greece	Ruby
5615	Tweet5615	User5615	3572	426	Ireland	JavaScript
5616	Tweet5616	User5616	461	2031	Malta	C
5617	Tweet5617	User5617	1957	4522	Ireland	JavaScript
5618	Tweet5618	User5618	149	2992	Luxembourg	C
5619	Tweet5619	User5619	209	722	France	C
5620	Tweet5620	User5620	4568	4558	Estonia	Obj C
5621	Tweet5621	User5621	3533	1326	Bulgaria	PHP
5622	Tweet5622	User5622	298	4651	Denmark	PHP
5623	Tweet5623	User5623	4741	4205	Germany	C#
5624	Tweet5624	User5624	3640	3507	Malta	C#
5625	Tweet5625	User5625	4967	2943	Netherlands	Obj C
5626	Tweet5626	User5626	2080	2062	France	Visual Basic
5627	Tweet5627	User5627	3834	1160	Greece	JavaScript
5628	Tweet5628	User5628	4789	3184	Belgium	Obj C
5629	Tweet5629	User5629	4701	547	Denmark	Java
5630	Tweet5630	User5630	2336	3834	Austria	PHP
5631	Tweet5631	User5631	606	2083	Greece	Ruby
5632	Tweet5632	User5632	3224	3653	Poland	Java
5633	Tweet5633	User5633	68	2232	Croatia	Java
5634	Tweet5634	User5634	3878	4467	Slovenia	Obj C
5635	Tweet5635	User5635	370	4063	Slovakia	Scala
5636	Tweet5636	User5636	3325	915	Italy	C
5637	Tweet5637	User5637	4679	1639	Sweden	PHP
5638	Tweet5638	User5638	1379	430	Ireland	PHP
5639	Tweet5639	User5639	4582	3776	United Kingdom	PHP
5640	Tweet5640	User5640	3884	3090	Finland	Java
5641	Tweet5641	User5641	4648	643	United Kingdom	C
5642	Tweet5642	User5642	1177	4732	Latvia	C++
5643	Tweet5643	User5643	637	1049	Finland	C
5644	Tweet5644	User5644	2412	3491	Estonia	Obj C
5645	Tweet5645	User5645	4019	1787	Latvia	Visual Basic
5646	Tweet5646	User5646	3734	3349	Italy	Obj C
5647	Tweet5647	User5647	1663	0	Cyprus	Visual Basic
5648	Tweet5648	User5648	4269	2137	Greece	Scala
5649	Tweet5649	User5649	3474	3466	Malta	C++
5650	Tweet5650	User5650	1320	4365	Luxembourg	JavaScript
5651	Tweet5651	User5651	980	4833	Slovakia	Visual Basic
5652	Tweet5652	User5652	3155	970	Spain	Visual Basic
5653	Tweet5653	User5653	802	3950	Netherlands	Java
5654	Tweet5654	User5654	950	1680	Latvia	C#
5655	Tweet5655	User5655	4157	4928	Czech Republic	C#
5656	Tweet5656	User5656	4823	3208	Germany	PHP
5657	Tweet5657	User5657	181	1433	Cyprus	Visual Basic
5658	Tweet5658	User5658	3645	4477	Greece	C
5659	Tweet5659	User5659	4757	1261	Finland	C++
5660	Tweet5660	User5660	2396	2090	Greece	JavaScript
5661	Tweet5661	User5661	2739	3986	Germany	Visual Basic
5662	Tweet5662	User5662	987	3191	Ireland	Java
5663	Tweet5663	User5663	256	2662	Romania	Python
5664	Tweet5664	User5664	649	152	Cyprus	Ruby
5665	Tweet5665	User5665	3310	4499	Luxembourg	Obj C
5666	Tweet5666	User5666	4768	4326	Cyprus	Scala
5667	Tweet5667	User5667	3962	3540	Romania	JavaScript
5668	Tweet5668	User5668	260	1160	France	C++
5669	Tweet5669	User5669	4323	597	Slovakia	Ruby
5670	Tweet5670	User5670	3449	3765	Slovenia	PHP
5671	Tweet5671	User5671	4732	323	Germany	C
5672	Tweet5672	User5672	4736	1414	Italy	PHP
5673	Tweet5673	User5673	3488	1843	Czech Republic	Obj C
5674	Tweet5674	User5674	4076	312	Estonia	JavaScript
5675	Tweet5675	User5675	4412	939	Slovakia	C++
5676	Tweet5676	User5676	125	4957	Hungary	C++
5677	Tweet5677	User5677	4075	387	Denmark	JavaScript
5678	Tweet5678	User5678	236	2584	Latvia	Scala
5679	Tweet5679	User5679	4860	917	Belgium	C#
5680	Tweet5680	User5680	572	4337	Ireland	PHP
5681	Tweet5681	User5681	4526	2246	Latvia	Obj C
5682	Tweet5682	User5682	2905	2172	Germany	Java
5683	Tweet5683	User5683	3697	2753	Cyprus	C#
5684	Tweet5684	User5684	3030	3723	Denmark	C++
5685	Tweet5685	User5685	3452	1779	Luxembourg	Python
5686	Tweet5686	User5686	4681	3631	United Kingdom	JavaScript
5687	Tweet5687	User5687	1397	1290	Greece	Obj C
5688	Tweet5688	User5688	1579	151	Germany	Java
5689	Tweet5689	User5689	4539	3639	Bulgaria	JavaScript
5690	Tweet5690	User5690	1844	1594	Austria	JavaScript
5691	Tweet5691	User5691	496	4592	Slovakia	Scala
5692	Tweet5692	User5692	2358	1699	Estonia	C
5693	Tweet5693	User5693	4965	1932	Hungary	Scala
5694	Tweet5694	User5694	1876	4655	France	Scala
5695	Tweet5695	User5695	3125	1465	Poland	C
5696	Tweet5696	User5696	3853	735	Slovakia	Scala
5697	Tweet5697	User5697	3784	2571	Denmark	Java
5698	Tweet5698	User5698	191	3824	Italy	JavaScript
5699	Tweet5699	User5699	3440	571	Slovakia	Scala
5700	Tweet5700	User5700	3838	954	Spain	Scala
5701	Tweet5701	User5701	2865	3063	Spain	Java
5702	Tweet5702	User5702	2585	2779	Netherlands	Visual Basic
5703	Tweet5703	User5703	1762	251	Germany	Obj C
5704	Tweet5704	User5704	4398	722	Greece	Ruby
5705	Tweet5705	User5705	546	947	Netherlands	Scala
5706	Tweet5706	User5706	547	3284	Malta	Python
5707	Tweet5707	User5707	3957	4114	Slovakia	PHP
5708	Tweet5708	User5708	3189	634	Poland	C#
5709	Tweet5709	User5709	2646	1034	France	Java
5710	Tweet5710	User5710	1720	4509	Greece	PHP
5711	Tweet5711	User5711	2458	4111	Belgium	Visual Basic
5712	Tweet5712	User5712	218	1576	Estonia	C
5713	Tweet5713	User5713	2447	2870	Hungary	C++
5714	Tweet5714	User5714	1998	2426	Latvia	Scala
5715	Tweet5715	User5715	3153	2708	Netherlands	C#
5716	Tweet5716	User5716	4995	407	United Kingdom	C
5717	Tweet5717	User5717	3797	872	Denmark	Obj C
5718	Tweet5718	User5718	2197	3775	Netherlands	C#
5719	Tweet5719	User5719	4236	4939	Sweden	C#
5720	Tweet5720	User5720	3259	1919	Ireland	Obj C
5721	Tweet5721	User5721	4572	1232	Sweden	Visual Basic
5722	Tweet5722	User5722	3762	1125	Belgium	C
5723	Tweet5723	User5723	1850	3771	Estonia	Ruby
5724	Tweet5724	User5724	3922	3310	Czech Republic	Visual Basic
5725	Tweet5725	User5725	46	3542	United Kingdom	Python
5726	Tweet5726	User5726	3570	531	Sweden	C++
5727	Tweet5727	User5727	2176	3283	Belgium	C
5728	Tweet5728	User5728	1044	4218	Germany	C++
5729	Tweet5729	User5729	4911	4909	United Kingdom	C
5730	Tweet5730	User5730	917	4785	Slovenia	Scala
5731	Tweet5731	User5731	27	3935	Lithuania	JavaScript
5732	Tweet5732	User5732	2284	1957	Belgium	JavaScript
5733	Tweet5733	User5733	3007	4370	Bulgaria	C++
5734	Tweet5734	User5734	4657	4239	Lithuania	C
5735	Tweet5735	User5735	2507	1268	Italy	Python
5736	Tweet5736	User5736	285	4114	Luxembourg	Python
5737	Tweet5737	User5737	4040	4626	United Kingdom	Visual Basic
5738	Tweet5738	User5738	870	728	Sweden	C#
5739	Tweet5739	User5739	2611	4151	Netherlands	Python
5740	Tweet5740	User5740	4984	1000	Czech Republic	PHP
5741	Tweet5741	User5741	3370	4076	Romania	Ruby
5742	Tweet5742	User5742	1475	2272	Portugal	PHP
5743	Tweet5743	User5743	808	4474	Latvia	C++
5744	Tweet5744	User5744	2453	4200	Ireland	Scala
5745	Tweet5745	User5745	1602	1790	Hungary	Scala
5746	Tweet5746	User5746	4716	3399	Germany	C++
5747	Tweet5747	User5747	1984	371	Poland	Visual Basic
5748	Tweet5748	User5748	1975	873	Slovakia	JavaScript
5749	Tweet5749	User5749	622	3562	Netherlands	Python
5750	Tweet5750	User5750	4177	3412	Luxembourg	Java
5751	Tweet5751	User5751	73	2602	Malta	Python
5752	Tweet5752	User5752	1464	4319	Latvia	Obj C
5753	Tweet5753	User5753	1480	2654	Greece	C
5754	Tweet5754	User5754	3852	343	France	Java
5755	Tweet5755	User5755	2337	208	Cyprus	C#
5756	Tweet5756	User5756	2622	276	Latvia	Scala
5757	Tweet5757	User5757	648	3496	Germany	Visual Basic
5758	Tweet5758	User5758	3856	2020	Italy	Ruby
5759	Tweet5759	User5759	3601	3597	Sweden	C#
5760	Tweet5760	User5760	3055	590	Poland	Python
5761	Tweet5761	User5761	1063	3187	Finland	Scala
5762	Tweet5762	User5762	2913	993	Malta	Scala
5763	Tweet5763	User5763	1923	2707	Portugal	Scala
5764	Tweet5764	User5764	278	552	Cyprus	PHP
5765	Tweet5765	User5765	3452	805	Luxembourg	PHP
5766	Tweet5766	User5766	4428	2563	Lithuania	C++
5767	Tweet5767	User5767	669	2158	Denmark	JavaScript
5768	Tweet5768	User5768	4551	4625	Romania	Ruby
5769	Tweet5769	User5769	3138	2922	Poland	Scala
5770	Tweet5770	User5770	79	3644	Portugal	Ruby
5771	Tweet5771	User5771	4582	3250	Latvia	C#
5772	Tweet5772	User5772	809	3139	Malta	Java
5773	Tweet5773	User5773	4346	2992	Hungary	Ruby
5774	Tweet5774	User5774	225	3146	Denmark	Visual Basic
5775	Tweet5775	User5775	2402	2400	Finland	Visual Basic
5776	Tweet5776	User5776	2687	2454	Denmark	Java
5777	Tweet5777	User5777	1041	4173	Poland	C++
5778	Tweet5778	User5778	2751	4499	Romania	C
5779	Tweet5779	User5779	630	3369	Bulgaria	Scala
5780	Tweet5780	User5780	1366	200	Luxembourg	C#
5781	Tweet5781	User5781	4115	2560	Italy	Java
5782	Tweet5782	User5782	4026	4396	Croatia	Ruby
5783	Tweet5783	User5783	3244	2990	Netherlands	JavaScript
5784	Tweet5784	User5784	4606	3189	Bulgaria	Python
5785	Tweet5785	User5785	4787	2491	Ireland	Ruby
5786	Tweet5786	User5786	973	1135	Poland	JavaScript
5787	Tweet5787	User5787	2209	1084	Malta	C
5788	Tweet5788	User5788	1738	4338	Czech Republic	Visual Basic
5789	Tweet5789	User5789	2389	1370	Croatia	Obj C
5790	Tweet5790	User5790	4952	1599	Portugal	Scala
5791	Tweet5791	User5791	3352	528	Czech Republic	Scala
5792	Tweet5792	User5792	3417	2859	Lithuania	Java
5793	Tweet5793	User5793	1845	92	Greece	JavaScript
5794	Tweet5794	User5794	4562	4793	Italy	Obj C
5795	Tweet5795	User5795	3716	1810	Spain	Python
5796	Tweet5796	User5796	1358	666	Denmark	Scala
5797	Tweet5797	User5797	2599	1675	Finland	C++
5798	Tweet5798	User5798	1144	358	Latvia	Obj C
5799	Tweet5799	User5799	3824	4735	Luxembourg	JavaScript
5800	Tweet5800	User5800	3912	1087	Ireland	Obj C
5801	Tweet5801	User5801	2518	3105	Czech Republic	Python
5802	Tweet5802	User5802	4709	3007	Greece	C++
5803	Tweet5803	User5803	421	786	Lithuania	Scala
5804	Tweet5804	User5804	4140	258	Greece	Scala
5805	Tweet5805	User5805	2115	4787	Slovenia	Python
5806	Tweet5806	User5806	4470	4294	Estonia	Python
5807	Tweet5807	User5807	954	385	Malta	C
5808	Tweet5808	User5808	2405	957	Latvia	JavaScript
5809	Tweet5809	User5809	4538	890	Slovakia	PHP
5810	Tweet5810	User5810	3873	1654	Spain	JavaScript
5811	Tweet5811	User5811	2665	3643	Belgium	Scala
5812	Tweet5812	User5812	2948	3567	Italy	Visual Basic
5813	Tweet5813	User5813	5	1726	Hungary	Visual Basic
5814	Tweet5814	User5814	553	4966	Hungary	Java
5815	Tweet5815	User5815	272	4901	Estonia	Java
5816	Tweet5816	User5816	4977	1912	Hungary	C#
5817	Tweet5817	User5817	3970	3100	Lithuania	Scala
5818	Tweet5818	User5818	2375	3069	Romania	Python
5819	Tweet5819	User5819	3915	4308	Netherlands	C#
5820	Tweet5820	User5820	38	3291	Latvia	Python
5821	Tweet5821	User5821	1193	2085	Czech Republic	Ruby
5822	Tweet5822	User5822	2419	4147	Latvia	PHP
5823	Tweet5823	User5823	4946	510	Lithuania	Scala
5824	Tweet5824	User5824	360	3181	Denmark	C
5825	Tweet5825	User5825	2752	2342	Cyprus	JavaScript
5826	Tweet5826	User5826	2818	2252	France	Obj C
5827	Tweet5827	User5827	1810	349	Cyprus	Visual Basic
5828	Tweet5828	User5828	3461	1672	Denmark	Python
5829	Tweet5829	User5829	4218	4013	Slovakia	Visual Basic
5830	Tweet5830	User5830	790	3848	Romania	Ruby
5831	Tweet5831	User5831	4712	4374	Ireland	C++
5832	Tweet5832	User5832	2285	1018	Sweden	PHP
5833	Tweet5833	User5833	3464	246	Germany	JavaScript
5834	Tweet5834	User5834	4968	947	Germany	C#
5835	Tweet5835	User5835	2777	180	Hungary	JavaScript
5836	Tweet5836	User5836	324	4998	Ireland	Python
5837	Tweet5837	User5837	2695	160	Czech Republic	Scala
5838	Tweet5838	User5838	1579	1484	Netherlands	Python
5839	Tweet5839	User5839	3820	310	Greece	C#
5840	Tweet5840	User5840	4793	2934	United Kingdom	JavaScript
5841	Tweet5841	User5841	2343	2639	Portugal	PHP
5842	Tweet5842	User5842	4331	128	Finland	Scala
5843	Tweet5843	User5843	2458	3129	Germany	Ruby
5844	Tweet5844	User5844	1625	379	Luxembourg	PHP
5845	Tweet5845	User5845	1492	156	Spain	JavaScript
5846	Tweet5846	User5846	4843	643	Slovenia	Scala
5847	Tweet5847	User5847	3307	1135	Sweden	C
5848	Tweet5848	User5848	4406	2445	Portugal	C
5849	Tweet5849	User5849	1458	3099	Germany	Visual Basic
5850	Tweet5850	User5850	1647	479	Poland	Visual Basic
5851	Tweet5851	User5851	2353	3374	Cyprus	Visual Basic
5852	Tweet5852	User5852	1969	2755	Romania	Ruby
5853	Tweet5853	User5853	3906	2055	Ireland	Python
5854	Tweet5854	User5854	3454	352	Romania	Ruby
5855	Tweet5855	User5855	4069	1504	Latvia	C++
5856	Tweet5856	User5856	2711	1577	Estonia	Scala
5857	Tweet5857	User5857	1457	4226	Belgium	Ruby
5858	Tweet5858	User5858	1800	1104	Poland	C#
5859	Tweet5859	User5859	4101	3442	Malta	Ruby
5860	Tweet5860	User5860	1528	3711	Croatia	C++
5861	Tweet5861	User5861	1044	2694	Cyprus	Obj C
5862	Tweet5862	User5862	4638	412	Belgium	Python
5863	Tweet5863	User5863	2901	1733	Finland	Python
5864	Tweet5864	User5864	4687	1949	Czech Republic	C
5865	Tweet5865	User5865	1219	836	Slovakia	Python
5866	Tweet5866	User5866	481	2152	Malta	PHP
5867	Tweet5867	User5867	4754	3458	Lithuania	C#
5868	Tweet5868	User5868	890	4915	Slovenia	Scala
5869	Tweet5869	User5869	3060	3572	United Kingdom	Python
5870	Tweet5870	User5870	2141	3852	Germany	JavaScript
5871	Tweet5871	User5871	470	3597	Spain	Obj C
5872	Tweet5872	User5872	4076	1617	Germany	PHP
5873	Tweet5873	User5873	1125	670	Sweden	JavaScript
5874	Tweet5874	User5874	1200	599	Portugal	Visual Basic
5875	Tweet5875	User5875	4005	2691	Denmark	C#
5876	Tweet5876	User5876	26	3056	United Kingdom	Obj C
5877	Tweet5877	User5877	1742	3216	Denmark	Java
5878	Tweet5878	User5878	920	2754	Slovakia	Ruby
5879	Tweet5879	User5879	4131	3179	Belgium	Python
5880	Tweet5880	User5880	2839	2963	Bulgaria	Obj C
5881	Tweet5881	User5881	4737	4067	Netherlands	Visual Basic
5882	Tweet5882	User5882	3228	1828	Lithuania	C#
5883	Tweet5883	User5883	4522	454	Finland	Java
5884	Tweet5884	User5884	247	1760	Latvia	Python
5885	Tweet5885	User5885	944	3065	Hungary	Ruby
5886	Tweet5886	User5886	1984	607	Hungary	Java
5887	Tweet5887	User5887	4446	3176	Germany	JavaScript
5888	Tweet5888	User5888	4198	501	Denmark	Python
5889	Tweet5889	User5889	4170	2630	Denmark	Scala
5890	Tweet5890	User5890	1730	3132	Czech Republic	C#
5891	Tweet5891	User5891	3115	198	Netherlands	PHP
5892	Tweet5892	User5892	1640	2654	Italy	Java
5893	Tweet5893	User5893	4475	4199	Romania	Obj C
5894	Tweet5894	User5894	4873	4867	Netherlands	PHP
5895	Tweet5895	User5895	341	2813	Italy	Java
5896	Tweet5896	User5896	576	4991	Poland	Java
5897	Tweet5897	User5897	1331	3151	Poland	C++
5898	Tweet5898	User5898	2859	8	Romania	PHP
5899	Tweet5899	User5899	478	429	Ireland	Ruby
5900	Tweet5900	User5900	1877	3913	Italy	Java
5901	Tweet5901	User5901	734	3812	Austria	C#
5902	Tweet5902	User5902	2777	698	Croatia	C++
5903	Tweet5903	User5903	234	4597	Croatia	PHP
5904	Tweet5904	User5904	3352	4614	Slovenia	PHP
5905	Tweet5905	User5905	3041	4344	Hungary	Visual Basic
5906	Tweet5906	User5906	718	476	Hungary	Scala
5907	Tweet5907	User5907	4386	1049	Netherlands	C++
5908	Tweet5908	User5908	2076	768	France	C#
5909	Tweet5909	User5909	4484	1817	Romania	Java
5910	Tweet5910	User5910	3501	1749	Greece	Scala
5911	Tweet5911	User5911	3330	4508	Netherlands	Ruby
5912	Tweet5912	User5912	1572	1407	Lithuania	Ruby
5913	Tweet5913	User5913	4433	1592	Italy	C
5914	Tweet5914	User5914	3784	2349	Germany	JavaScript
5915	Tweet5915	User5915	986	1821	Germany	Java
5916	Tweet5916	User5916	2328	2384	Malta	Java
5917	Tweet5917	User5917	3475	3543	Latvia	C
5918	Tweet5918	User5918	4064	1146	Czech Republic	Java
5919	Tweet5919	User5919	4813	1802	Estonia	C#
5920	Tweet5920	User5920	886	341	Estonia	JavaScript
5921	Tweet5921	User5921	135	1949	Slovakia	C++
5922	Tweet5922	User5922	3389	3335	Spain	Java
5923	Tweet5923	User5923	3296	3975	Czech Republic	C
5924	Tweet5924	User5924	346	1365	Czech Republic	Python
5925	Tweet5925	User5925	2490	1087	Ireland	C#
5926	Tweet5926	User5926	959	3501	Denmark	Ruby
5927	Tweet5927	User5927	2615	2581	Estonia	Ruby
5928	Tweet5928	User5928	2402	2129	Denmark	Obj C
5929	Tweet5929	User5929	509	494	Germany	Python
5930	Tweet5930	User5930	2167	491	Germany	C++
5931	Tweet5931	User5931	4731	2449	Hungary	Python
5932	Tweet5932	User5932	797	1120	Luxembourg	Ruby
5933	Tweet5933	User5933	3213	205	Ireland	Ruby
5934	Tweet5934	User5934	3895	811	Greece	Ruby
5935	Tweet5935	User5935	240	1787	Lithuania	Obj C
5936	Tweet5936	User5936	1102	2976	Estonia	Ruby
5937	Tweet5937	User5937	2069	1396	Cyprus	C#
5938	Tweet5938	User5938	4011	3297	Italy	PHP
5939	Tweet5939	User5939	3920	221	Poland	Obj C
5940	Tweet5940	User5940	3333	1478	Portugal	Obj C
5941	Tweet5941	User5941	4770	3738	Ireland	C#
5942	Tweet5942	User5942	4476	2967	Greece	Java
5943	Tweet5943	User5943	3653	2326	Denmark	Obj C
5944	Tweet5944	User5944	1569	1676	Bulgaria	C
5945	Tweet5945	User5945	4282	1678	Italy	PHP
5946	Tweet5946	User5946	2168	4570	Italy	Ruby
5947	Tweet5947	User5947	1920	1323	Lithuania	JavaScript
5948	Tweet5948	User5948	2416	4930	Czech Republic	Python
5949	Tweet5949	User5949	4019	2486	France	C
5950	Tweet5950	User5950	1659	4994	Luxembourg	C++
5951	Tweet5951	User5951	1562	3061	Greece	PHP
5952	Tweet5952	User5952	4757	4963	Malta	Java
5953	Tweet5953	User5953	1265	2015	Austria	C
5954	Tweet5954	User5954	926	1736	Romania	C#
5955	Tweet5955	User5955	2802	3574	Lithuania	Java
5956	Tweet5956	User5956	553	300	Austria	C#
5957	Tweet5957	User5957	3678	3064	Malta	C#
5958	Tweet5958	User5958	2250	1490	Netherlands	JavaScript
5959	Tweet5959	User5959	881	3038	Latvia	Java
5960	Tweet5960	User5960	1516	4240	Netherlands	Obj C
5961	Tweet5961	User5961	381	230	Czech Republic	Python
5962	Tweet5962	User5962	850	2217	Latvia	Java
5963	Tweet5963	User5963	1802	848	Croatia	Scala
5964	Tweet5964	User5964	3585	1919	France	C
5965	Tweet5965	User5965	793	2399	Poland	Python
5966	Tweet5966	User5966	449	427	Poland	JavaScript
5967	Tweet5967	User5967	983	2587	Malta	Python
5968	Tweet5968	User5968	576	578	Finland	C++
5969	Tweet5969	User5969	500	747	Lithuania	C++
5970	Tweet5970	User5970	3126	1858	Lithuania	PHP
5971	Tweet5971	User5971	1691	1077	Austria	Scala
5972	Tweet5972	User5972	1337	4650	Italy	C++
5973	Tweet5973	User5973	2374	3650	Sweden	C++
5974	Tweet5974	User5974	4511	2598	Netherlands	Java
5975	Tweet5975	User5975	2212	2496	Lithuania	Python
5976	Tweet5976	User5976	461	1266	France	PHP
5977	Tweet5977	User5977	1066	1659	Denmark	C
5978	Tweet5978	User5978	2068	3977	Romania	Visual Basic
5979	Tweet5979	User5979	1338	4777	Finland	C
5980	Tweet5980	User5980	2956	4398	Sweden	C++
5981	Tweet5981	User5981	1766	2523	Spain	Ruby
5982	Tweet5982	User5982	4284	522	Malta	C
5983	Tweet5983	User5983	1393	2104	Spain	Python
5984	Tweet5984	User5984	2222	3143	Sweden	Python
5985	Tweet5985	User5985	1494	4179	United Kingdom	Visual Basic
5986	Tweet5986	User5986	1205	4383	United Kingdom	PHP
5987	Tweet5987	User5987	2441	1071	Czech Republic	Python
5988	Tweet5988	User5988	1	2228	Poland	Ruby
5989	Tweet5989	User5989	530	248	Bulgaria	Java
5990	Tweet5990	User5990	4774	4780	France	C#
5991	Tweet5991	User5991	3117	1227	Finland	Ruby
5992	Tweet5992	User5992	514	3160	United Kingdom	Ruby
5993	Tweet5993	User5993	963	1567	Italy	PHP
5994	Tweet5994	User5994	136	3992	Belgium	C
5995	Tweet5995	User5995	4201	3818	Lithuania	JavaScript
5996	Tweet5996	User5996	2714	3303	Belgium	C#
5997	Tweet5997	User5997	3673	656	Netherlands	Obj C
5998	Tweet5998	User5998	480	4303	Poland	Java
5999	Tweet5999	User5999	4105	4182	Bulgaria	Ruby
6000	Tweet6000	User6000	1634	1550	Cyprus	Visual Basic
6001	Tweet6001	User6001	1329	1450	Estonia	Ruby
6002	Tweet6002	User6002	4945	1348	Portugal	Obj C
6003	Tweet6003	User6003	2481	259	Czech Republic	Visual Basic
6004	Tweet6004	User6004	4462	66	Estonia	Scala
6005	Tweet6005	User6005	4352	2692	France	Scala
6006	Tweet6006	User6006	4715	1553	Latvia	Python
6007	Tweet6007	User6007	386	4957	Slovakia	Java
6008	Tweet6008	User6008	1301	2094	Hungary	Ruby
6009	Tweet6009	User6009	3235	1547	Slovakia	C++
6010	Tweet6010	User6010	667	31	Slovakia	PHP
6011	Tweet6011	User6011	4986	1344	Czech Republic	JavaScript
6012	Tweet6012	User6012	2200	1105	Poland	JavaScript
6013	Tweet6013	User6013	3693	1212	Denmark	Java
6014	Tweet6014	User6014	2787	593	Lithuania	Python
6015	Tweet6015	User6015	2306	3647	Netherlands	C++
6016	Tweet6016	User6016	2989	3632	Finland	Visual Basic
6017	Tweet6017	User6017	332	119	Latvia	Obj C
6018	Tweet6018	User6018	21	2276	Italy	PHP
6019	Tweet6019	User6019	3486	3529	Bulgaria	Python
6020	Tweet6020	User6020	723	4006	Belgium	C#
6021	Tweet6021	User6021	2557	3688	Hungary	Python
6022	Tweet6022	User6022	2248	1391	France	JavaScript
6023	Tweet6023	User6023	46	4177	Belgium	Visual Basic
6024	Tweet6024	User6024	2302	923	Luxembourg	Obj C
6025	Tweet6025	User6025	196	3397	Italy	JavaScript
6026	Tweet6026	User6026	3175	3210	Malta	Java
6027	Tweet6027	User6027	4374	4728	Ireland	C
6028	Tweet6028	User6028	3978	732	Luxembourg	Visual Basic
6029	Tweet6029	User6029	4253	2665	Poland	Java
6030	Tweet6030	User6030	142	690	Luxembourg	C++
6031	Tweet6031	User6031	4116	2761	Spain	Ruby
6032	Tweet6032	User6032	1034	2518	Croatia	Python
6033	Tweet6033	User6033	1341	3909	Cyprus	C
6034	Tweet6034	User6034	4600	2647	France	C#
6035	Tweet6035	User6035	927	1502	Croatia	PHP
6036	Tweet6036	User6036	2380	1845	Belgium	Scala
6037	Tweet6037	User6037	3503	2721	United Kingdom	JavaScript
6038	Tweet6038	User6038	1085	88	Cyprus	JavaScript
6039	Tweet6039	User6039	3446	2606	Spain	Java
6040	Tweet6040	User6040	1274	490	United Kingdom	PHP
6041	Tweet6041	User6041	2140	3280	Ireland	C++
6042	Tweet6042	User6042	2349	1272	Greece	Visual Basic
6043	Tweet6043	User6043	3106	2306	Germany	Ruby
6044	Tweet6044	User6044	2610	1933	Croatia	Scala
6045	Tweet6045	User6045	4501	3021	Germany	C++
6046	Tweet6046	User6046	630	1222	Malta	Scala
6047	Tweet6047	User6047	289	802	France	JavaScript
6048	Tweet6048	User6048	2813	4700	United Kingdom	C++
6049	Tweet6049	User6049	3695	568	France	JavaScript
6050	Tweet6050	User6050	2275	4489	Spain	Scala
6051	Tweet6051	User6051	3649	3782	France	C
6052	Tweet6052	User6052	4824	4651	Spain	Ruby
6053	Tweet6053	User6053	752	4357	Germany	C
6054	Tweet6054	User6054	198	2468	Bulgaria	Scala
6055	Tweet6055	User6055	3820	3425	Cyprus	Python
6056	Tweet6056	User6056	325	4168	France	JavaScript
6057	Tweet6057	User6057	4357	2870	Italy	Ruby
6058	Tweet6058	User6058	537	4032	Romania	Python
6059	Tweet6059	User6059	1123	1481	Cyprus	Obj C
6060	Tweet6060	User6060	2803	1916	Croatia	Scala
6061	Tweet6061	User6061	214	1558	Cyprus	C++
6062	Tweet6062	User6062	1865	3943	Austria	C
6063	Tweet6063	User6063	585	1715	Finland	Java
6064	Tweet6064	User6064	24	2352	Sweden	C#
6065	Tweet6065	User6065	1250	1638	Portugal	Java
6066	Tweet6066	User6066	34	1203	Czech Republic	C#
6067	Tweet6067	User6067	3331	2422	Sweden	JavaScript
6068	Tweet6068	User6068	4938	4158	United Kingdom	Ruby
6069	Tweet6069	User6069	1060	530	France	Obj C
6070	Tweet6070	User6070	1053	3610	Hungary	Python
6071	Tweet6071	User6071	922	1512	Italy	PHP
6072	Tweet6072	User6072	1069	1463	Denmark	Python
6073	Tweet6073	User6073	4657	1138	Lithuania	Visual Basic
6074	Tweet6074	User6074	3231	1364	United Kingdom	Obj C
6075	Tweet6075	User6075	564	3467	Hungary	C#
6076	Tweet6076	User6076	3404	1061	Sweden	C
6077	Tweet6077	User6077	597	1028	Italy	Scala
6078	Tweet6078	User6078	1098	3773	France	C#
6079	Tweet6079	User6079	3239	1025	Italy	Obj C
6080	Tweet6080	User6080	1208	3138	Czech Republic	C++
6081	Tweet6081	User6081	2650	1762	United Kingdom	Visual Basic
6082	Tweet6082	User6082	2997	4215	Luxembourg	Python
6083	Tweet6083	User6083	3289	1704	Romania	Python
6084	Tweet6084	User6084	1595	2542	Italy	Visual Basic
6085	Tweet6085	User6085	1728	3187	Latvia	JavaScript
6086	Tweet6086	User6086	3906	446	Portugal	C#
6087	Tweet6087	User6087	2037	4628	Cyprus	Ruby
6088	Tweet6088	User6088	4610	4452	Austria	Visual Basic
6089	Tweet6089	User6089	1355	1330	Greece	Visual Basic
6090	Tweet6090	User6090	2450	2718	Luxembourg	C#
6091	Tweet6091	User6091	3685	1646	Portugal	Ruby
6092	Tweet6092	User6092	4935	954	Bulgaria	Obj C
6093	Tweet6093	User6093	4165	1130	Hungary	Scala
6094	Tweet6094	User6094	3661	4401	Netherlands	Scala
6095	Tweet6095	User6095	3485	3280	Italy	Ruby
6096	Tweet6096	User6096	3949	650	Malta	Java
6097	Tweet6097	User6097	2186	3469	United Kingdom	Obj C
6098	Tweet6098	User6098	174	1064	Cyprus	Python
6099	Tweet6099	User6099	4857	2513	Cyprus	C++
6100	Tweet6100	User6100	666	2899	United Kingdom	Obj C
6101	Tweet6101	User6101	874	2378	Croatia	Python
6102	Tweet6102	User6102	3969	1954	Lithuania	Visual Basic
6103	Tweet6103	User6103	219	3951	Latvia	JavaScript
6104	Tweet6104	User6104	139	2959	Finland	JavaScript
6105	Tweet6105	User6105	2233	4847	Portugal	Java
6106	Tweet6106	User6106	4937	4095	Italy	C#
6107	Tweet6107	User6107	1705	3573	Italy	Python
6108	Tweet6108	User6108	1692	3223	Luxembourg	PHP
6109	Tweet6109	User6109	4695	4666	Germany	Scala
6110	Tweet6110	User6110	2302	1902	Croatia	Obj C
6111	Tweet6111	User6111	1859	4637	Netherlands	C
6112	Tweet6112	User6112	306	3141	Sweden	Python
6113	Tweet6113	User6113	2894	816	Cyprus	Ruby
6114	Tweet6114	User6114	3623	2081	Netherlands	Java
6115	Tweet6115	User6115	4972	1043	Lithuania	Obj C
6116	Tweet6116	User6116	2927	1598	Latvia	Python
6117	Tweet6117	User6117	1747	1611	Croatia	C#
6118	Tweet6118	User6118	1772	1105	Belgium	C++
6119	Tweet6119	User6119	2336	4233	Lithuania	Python
6120	Tweet6120	User6120	3620	2486	Bulgaria	PHP
6121	Tweet6121	User6121	257	2781	Romania	C++
6122	Tweet6122	User6122	2719	728	Denmark	Scala
6123	Tweet6123	User6123	4843	1551	Greece	Scala
6124	Tweet6124	User6124	379	4361	France	C
6125	Tweet6125	User6125	931	1151	Latvia	Obj C
6126	Tweet6126	User6126	1321	3138	Hungary	JavaScript
6127	Tweet6127	User6127	2714	1788	Poland	C
6128	Tweet6128	User6128	3754	1062	Austria	PHP
6129	Tweet6129	User6129	1868	1178	Hungary	Java
6130	Tweet6130	User6130	3957	2286	Luxembourg	Scala
6131	Tweet6131	User6131	2438	666	Ireland	C++
6132	Tweet6132	User6132	344	110	Portugal	JavaScript
6133	Tweet6133	User6133	1505	4344	Slovenia	C#
6134	Tweet6134	User6134	767	3670	Luxembourg	Python
6135	Tweet6135	User6135	4221	2582	Latvia	Obj C
6136	Tweet6136	User6136	1700	3865	Spain	Scala
6137	Tweet6137	User6137	3187	4465	Czech Republic	Ruby
6138	Tweet6138	User6138	4948	1686	Bulgaria	Ruby
6139	Tweet6139	User6139	2982	3704	Malta	Java
6140	Tweet6140	User6140	700	4699	Ireland	JavaScript
6141	Tweet6141	User6141	4967	4351	Luxembourg	Ruby
6142	Tweet6142	User6142	4367	2685	Malta	C#
6143	Tweet6143	User6143	665	3714	Germany	C#
6144	Tweet6144	User6144	4447	551	Slovakia	Obj C
6145	Tweet6145	User6145	2805	877	Germany	Python
6146	Tweet6146	User6146	2259	3044	Greece	Ruby
6147	Tweet6147	User6147	3739	2229	Cyprus	Scala
6148	Tweet6148	User6148	2432	2249	Italy	Java
6149	Tweet6149	User6149	2714	1907	Slovenia	C
6150	Tweet6150	User6150	1313	3586	Slovenia	PHP
6151	Tweet6151	User6151	3144	3471	Spain	C#
6152	Tweet6152	User6152	1864	488	Malta	PHP
6153	Tweet6153	User6153	323	1877	Lithuania	PHP
6154	Tweet6154	User6154	1402	2879	Malta	Visual Basic
6155	Tweet6155	User6155	624	1930	Belgium	Obj C
6156	Tweet6156	User6156	3382	1121	Romania	Scala
6157	Tweet6157	User6157	4828	2461	Estonia	C++
6158	Tweet6158	User6158	2905	561	Romania	JavaScript
6159	Tweet6159	User6159	334	2539	Sweden	Obj C
6160	Tweet6160	User6160	25	1549	Finland	C
6161	Tweet6161	User6161	3692	1950	Spain	C++
6162	Tweet6162	User6162	408	280	Slovenia	JavaScript
6163	Tweet6163	User6163	1765	4441	Greece	Java
6164	Tweet6164	User6164	4508	4042	Portugal	C
6165	Tweet6165	User6165	3998	2362	Ireland	Scala
6166	Tweet6166	User6166	1770	2402	Poland	Visual Basic
6167	Tweet6167	User6167	1725	2360	Malta	C++
6168	Tweet6168	User6168	455	4043	Hungary	Obj C
6169	Tweet6169	User6169	4653	4228	Poland	Scala
6170	Tweet6170	User6170	4782	3116	Belgium	Python
6171	Tweet6171	User6171	446	602	Czech Republic	Ruby
6172	Tweet6172	User6172	3871	2242	Hungary	C
6173	Tweet6173	User6173	1983	1558	Belgium	Scala
6174	Tweet6174	User6174	4299	4268	Czech Republic	Scala
6175	Tweet6175	User6175	2347	3109	Portugal	Ruby
6176	Tweet6176	User6176	2256	118	Malta	PHP
6177	Tweet6177	User6177	744	3334	Estonia	Scala
6178	Tweet6178	User6178	4427	3274	Croatia	Java
6179	Tweet6179	User6179	4134	3135	Romania	Ruby
6180	Tweet6180	User6180	4835	4171	United Kingdom	Visual Basic
6181	Tweet6181	User6181	3606	3988	Spain	JavaScript
6182	Tweet6182	User6182	1580	3408	Romania	Python
6183	Tweet6183	User6183	2372	3347	Italy	Obj C
6184	Tweet6184	User6184	134	1706	Greece	Python
6185	Tweet6185	User6185	1762	2073	Ireland	Obj C
6186	Tweet6186	User6186	2458	3082	Slovakia	C++
6187	Tweet6187	User6187	3707	74	Greece	Ruby
6188	Tweet6188	User6188	4999	1880	Lithuania	Python
6189	Tweet6189	User6189	571	3372	Belgium	Obj C
6190	Tweet6190	User6190	4261	4018	United Kingdom	C
6191	Tweet6191	User6191	3283	3061	Netherlands	PHP
6192	Tweet6192	User6192	2720	70	Portugal	Ruby
6193	Tweet6193	User6193	2990	3003	Estonia	Java
6194	Tweet6194	User6194	4513	8	Denmark	C#
6195	Tweet6195	User6195	2174	18	Estonia	Scala
6196	Tweet6196	User6196	4795	193	Bulgaria	Python
6197	Tweet6197	User6197	3451	3822	Bulgaria	Python
6198	Tweet6198	User6198	4139	4091	Finland	C
6199	Tweet6199	User6199	3861	3648	Sweden	Python
6200	Tweet6200	User6200	507	2879	Cyprus	C
6201	Tweet6201	User6201	1259	2702	Slovenia	Java
6202	Tweet6202	User6202	743	4770	Portugal	C++
6203	Tweet6203	User6203	2454	374	Denmark	Obj C
6204	Tweet6204	User6204	1658	969	Latvia	PHP
6205	Tweet6205	User6205	28	4228	Finland	JavaScript
6206	Tweet6206	User6206	1503	107	Slovenia	C
6207	Tweet6207	User6207	877	3583	Belgium	Obj C
6208	Tweet6208	User6208	4959	2662	Belgium	PHP
6209	Tweet6209	User6209	4811	3394	Finland	Visual Basic
6210	Tweet6210	User6210	2279	4854	Finland	Java
6211	Tweet6211	User6211	2847	2636	Poland	Java
6212	Tweet6212	User6212	2243	209	Austria	Python
6213	Tweet6213	User6213	4815	4091	Austria	Scala
6214	Tweet6214	User6214	2919	4070	United Kingdom	Obj C
6215	Tweet6215	User6215	4398	1017	Germany	Visual Basic
6216	Tweet6216	User6216	2757	2231	Hungary	C++
6217	Tweet6217	User6217	4034	2287	Hungary	Java
6218	Tweet6218	User6218	1685	4408	Sweden	C++
6219	Tweet6219	User6219	1770	1021	United Kingdom	Python
6220	Tweet6220	User6220	290	1739	Netherlands	Visual Basic
6221	Tweet6221	User6221	1163	200	Belgium	Java
6222	Tweet6222	User6222	1837	427	Austria	Obj C
6223	Tweet6223	User6223	3494	285	Netherlands	C#
6224	Tweet6224	User6224	3725	2076	Croatia	JavaScript
6225	Tweet6225	User6225	797	2295	Bulgaria	PHP
6226	Tweet6226	User6226	3449	2838	France	PHP
6227	Tweet6227	User6227	1514	2070	Belgium	Obj C
6228	Tweet6228	User6228	479	3942	Luxembourg	Ruby
6229	Tweet6229	User6229	159	2551	Netherlands	PHP
6230	Tweet6230	User6230	421	2090	Estonia	Python
6231	Tweet6231	User6231	203	1949	Spain	Python
6232	Tweet6232	User6232	2774	2866	France	C++
6233	Tweet6233	User6233	1605	3743	Portugal	Python
6234	Tweet6234	User6234	611	1396	Denmark	C++
6235	Tweet6235	User6235	2429	863	Hungary	PHP
6236	Tweet6236	User6236	242	412	Austria	Scala
6237	Tweet6237	User6237	4358	2129	Germany	Scala
6238	Tweet6238	User6238	817	3927	Estonia	C++
6239	Tweet6239	User6239	4389	767	Latvia	C
6240	Tweet6240	User6240	3154	3239	Poland	Ruby
6241	Tweet6241	User6241	288	4076	Portugal	Python
6242	Tweet6242	User6242	4332	36	Ireland	C
6243	Tweet6243	User6243	3753	1359	Ireland	Visual Basic
6244	Tweet6244	User6244	2956	4859	United Kingdom	JavaScript
6245	Tweet6245	User6245	1918	3686	Austria	JavaScript
6246	Tweet6246	User6246	123	2452	Italy	C++
6247	Tweet6247	User6247	1293	1912	Sweden	Scala
6248	Tweet6248	User6248	1124	3410	Belgium	Visual Basic
6249	Tweet6249	User6249	2989	2315	Hungary	Python
6250	Tweet6250	User6250	1290	885	Hungary	PHP
6251	Tweet6251	User6251	3388	3793	Sweden	PHP
6252	Tweet6252	User6252	2706	3247	Germany	Java
6253	Tweet6253	User6253	1368	4004	Hungary	C++
6254	Tweet6254	User6254	85	2705	Luxembourg	C
6255	Tweet6255	User6255	81	847	Portugal	Obj C
6256	Tweet6256	User6256	411	464	Austria	C#
6257	Tweet6257	User6257	467	4815	Luxembourg	Scala
6258	Tweet6258	User6258	3256	2822	Netherlands	C
6259	Tweet6259	User6259	3947	1929	Cyprus	PHP
6260	Tweet6260	User6260	3282	288	United Kingdom	Visual Basic
6261	Tweet6261	User6261	4892	1020	Malta	JavaScript
6262	Tweet6262	User6262	2248	3530	Netherlands	PHP
6263	Tweet6263	User6263	4043	2989	Sweden	PHP
6264	Tweet6264	User6264	2343	2018	Bulgaria	Visual Basic
6265	Tweet6265	User6265	1316	1918	Portugal	Java
6266	Tweet6266	User6266	4108	124	Spain	JavaScript
6267	Tweet6267	User6267	2401	1917	Slovakia	Scala
6268	Tweet6268	User6268	1156	2057	Bulgaria	C#
6269	Tweet6269	User6269	4322	3491	Romania	PHP
6270	Tweet6270	User6270	1659	3469	Hungary	PHP
6271	Tweet6271	User6271	2704	2972	Cyprus	Obj C
6272	Tweet6272	User6272	1373	1848	Netherlands	JavaScript
6273	Tweet6273	User6273	1725	3438	Ireland	Scala
6274	Tweet6274	User6274	4399	4758	Hungary	Visual Basic
6275	Tweet6275	User6275	2177	2385	Italy	Visual Basic
6276	Tweet6276	User6276	1635	1527	Romania	Java
6277	Tweet6277	User6277	1761	705	Belgium	Java
6278	Tweet6278	User6278	4439	3517	Spain	C++
6279	Tweet6279	User6279	1083	3348	Poland	Ruby
6280	Tweet6280	User6280	4644	3907	Belgium	Java
6281	Tweet6281	User6281	456	4674	Bulgaria	C
6282	Tweet6282	User6282	758	1448	United Kingdom	Ruby
6283	Tweet6283	User6283	2090	1324	Cyprus	Ruby
6284	Tweet6284	User6284	1753	4214	Cyprus	C
6285	Tweet6285	User6285	4896	4173	Slovenia	Scala
6286	Tweet6286	User6286	3184	2221	Ireland	Python
6287	Tweet6287	User6287	3829	3768	Slovakia	C
6288	Tweet6288	User6288	1528	2820	Lithuania	C
6289	Tweet6289	User6289	2896	2319	Malta	Scala
6290	Tweet6290	User6290	3056	526	Slovakia	Obj C
6291	Tweet6291	User6291	4615	1438	Bulgaria	C
6292	Tweet6292	User6292	4869	1820	Croatia	JavaScript
6293	Tweet6293	User6293	1312	3649	Latvia	Java
6294	Tweet6294	User6294	3793	2206	Hungary	Java
6295	Tweet6295	User6295	3610	3597	Estonia	PHP
6296	Tweet6296	User6296	4252	4184	Lithuania	JavaScript
6297	Tweet6297	User6297	2940	1707	Greece	C++
6298	Tweet6298	User6298	296	2900	Estonia	Scala
6299	Tweet6299	User6299	4513	2846	United Kingdom	C#
6300	Tweet6300	User6300	1541	2727	Slovenia	C#
6301	Tweet6301	User6301	198	1919	Hungary	C++
6302	Tweet6302	User6302	846	1040	Greece	C
6303	Tweet6303	User6303	3160	988	France	C++
6304	Tweet6304	User6304	1442	924	Lithuania	C
6305	Tweet6305	User6305	284	281	Austria	Scala
6306	Tweet6306	User6306	3293	3511	Slovakia	C
6307	Tweet6307	User6307	1338	2469	Romania	Java
6308	Tweet6308	User6308	2235	599	Malta	Obj C
6309	Tweet6309	User6309	620	4089	Latvia	Visual Basic
6310	Tweet6310	User6310	208	70	Luxembourg	PHP
6311	Tweet6311	User6311	4273	3023	Belgium	Python
6312	Tweet6312	User6312	578	623	Estonia	Java
6313	Tweet6313	User6313	1458	2567	France	Scala
6314	Tweet6314	User6314	4616	3536	Croatia	JavaScript
6315	Tweet6315	User6315	4005	1199	Latvia	C++
6316	Tweet6316	User6316	4987	4655	Croatia	C
6317	Tweet6317	User6317	879	4253	Romania	Scala
6318	Tweet6318	User6318	3983	2235	Luxembourg	Python
6319	Tweet6319	User6319	2987	274	Italy	Java
6320	Tweet6320	User6320	1131	2024	Greece	Scala
6321	Tweet6321	User6321	2481	2988	Estonia	Obj C
6322	Tweet6322	User6322	2563	743	Greece	Python
6323	Tweet6323	User6323	1576	389	Lithuania	Python
6324	Tweet6324	User6324	2041	2856	Estonia	Visual Basic
6325	Tweet6325	User6325	4595	1534	Czech Republic	C
6326	Tweet6326	User6326	2221	3250	Finland	Python
6327	Tweet6327	User6327	1793	532	Sweden	Obj C
6328	Tweet6328	User6328	2232	2404	Spain	Java
6329	Tweet6329	User6329	174	387	Portugal	C#
6330	Tweet6330	User6330	3684	4876	Luxembourg	JavaScript
6331	Tweet6331	User6331	3106	1002	Greece	JavaScript
6332	Tweet6332	User6332	4976	325	Malta	Python
6333	Tweet6333	User6333	1284	4254	Germany	C#
6334	Tweet6334	User6334	1698	4606	Denmark	C
6335	Tweet6335	User6335	4758	4663	Germany	JavaScript
6336	Tweet6336	User6336	3527	1571	Ireland	Java
6337	Tweet6337	User6337	3979	4176	France	Obj C
6338	Tweet6338	User6338	1364	2765	Romania	Ruby
6339	Tweet6339	User6339	3821	854	Slovenia	Obj C
6340	Tweet6340	User6340	418	2649	Czech Republic	Obj C
6341	Tweet6341	User6341	1139	3467	Greece	C#
6342	Tweet6342	User6342	4712	2365	Ireland	C
6343	Tweet6343	User6343	2155	775	Hungary	Scala
6344	Tweet6344	User6344	4381	3189	Finland	Ruby
6345	Tweet6345	User6345	482	732	Romania	Ruby
6346	Tweet6346	User6346	2667	2474	Spain	Python
6347	Tweet6347	User6347	3882	3619	Greece	Python
6348	Tweet6348	User6348	335	1656	Hungary	Obj C
6349	Tweet6349	User6349	1488	3643	Czech Republic	Scala
6350	Tweet6350	User6350	3226	4077	Bulgaria	Ruby
6351	Tweet6351	User6351	961	1049	Portugal	C#
6352	Tweet6352	User6352	214	4764	Luxembourg	C++
6353	Tweet6353	User6353	54	1749	Croatia	Python
6354	Tweet6354	User6354	3118	4066	Hungary	Java
6355	Tweet6355	User6355	3599	964	Czech Republic	C#
6356	Tweet6356	User6356	2929	4276	Italy	Scala
6357	Tweet6357	User6357	2354	1153	Luxembourg	C
6358	Tweet6358	User6358	4034	199	Croatia	C
6359	Tweet6359	User6359	4477	4953	Finland	PHP
6360	Tweet6360	User6360	2913	4148	Slovakia	C#
6361	Tweet6361	User6361	3098	813	Finland	Python
6362	Tweet6362	User6362	3965	2271	United Kingdom	Java
6363	Tweet6363	User6363	4773	4497	Malta	C++
6364	Tweet6364	User6364	3197	2219	Latvia	C++
6365	Tweet6365	User6365	2988	1306	Slovakia	C++
6366	Tweet6366	User6366	2931	3795	Austria	C++
6367	Tweet6367	User6367	2996	1546	Netherlands	PHP
6368	Tweet6368	User6368	4933	3097	Denmark	Python
6369	Tweet6369	User6369	2117	2849	Cyprus	Visual Basic
6370	Tweet6370	User6370	703	2314	Slovenia	JavaScript
6371	Tweet6371	User6371	4656	2651	Luxembourg	Java
6372	Tweet6372	User6372	2391	3758	Luxembourg	C#
6373	Tweet6373	User6373	1316	2162	Luxembourg	Obj C
6374	Tweet6374	User6374	520	4566	France	PHP
6375	Tweet6375	User6375	3979	3939	Ireland	C
6376	Tweet6376	User6376	432	1352	Latvia	C
6377	Tweet6377	User6377	290	3353	Croatia	Scala
6378	Tweet6378	User6378	2162	4511	Slovakia	C
6379	Tweet6379	User6379	753	4980	Lithuania	JavaScript
6380	Tweet6380	User6380	197	1217	United Kingdom	JavaScript
6381	Tweet6381	User6381	3268	4205	Czech Republic	Obj C
6382	Tweet6382	User6382	2751	652	Finland	C++
6383	Tweet6383	User6383	4504	3972	Latvia	Java
6384	Tweet6384	User6384	212	3953	Sweden	Obj C
6385	Tweet6385	User6385	639	2992	Austria	Scala
6386	Tweet6386	User6386	4069	4444	United Kingdom	C
6387	Tweet6387	User6387	1049	541	Netherlands	JavaScript
6388	Tweet6388	User6388	4276	610	Malta	PHP
6389	Tweet6389	User6389	1479	517	Czech Republic	C++
6390	Tweet6390	User6390	1804	735	Malta	PHP
6391	Tweet6391	User6391	2458	1606	Portugal	Python
6392	Tweet6392	User6392	362	4934	Belgium	Python
6393	Tweet6393	User6393	3728	3865	Spain	PHP
6394	Tweet6394	User6394	3248	401	Spain	Java
6395	Tweet6395	User6395	1075	597	Czech Republic	PHP
6396	Tweet6396	User6396	2594	4423	Greece	C++
6397	Tweet6397	User6397	4136	3325	Cyprus	PHP
6398	Tweet6398	User6398	550	550	Slovakia	Scala
6399	Tweet6399	User6399	2503	2637	France	Java
6400	Tweet6400	User6400	4910	1378	United Kingdom	JavaScript
6401	Tweet6401	User6401	4595	148	Hungary	Obj C
6402	Tweet6402	User6402	3488	1697	Germany	C#
6403	Tweet6403	User6403	2742	3501	Bulgaria	Scala
6404	Tweet6404	User6404	3300	2125	Lithuania	Ruby
6405	Tweet6405	User6405	503	2979	Greece	PHP
6406	Tweet6406	User6406	887	4881	Slovakia	PHP
6407	Tweet6407	User6407	1094	1582	Netherlands	C
6408	Tweet6408	User6408	499	866	Slovenia	Visual Basic
6409	Tweet6409	User6409	353	1045	Italy	Java
6410	Tweet6410	User6410	3351	2063	Finland	Java
6411	Tweet6411	User6411	181	2474	Austria	Java
6412	Tweet6412	User6412	3978	4049	Bulgaria	JavaScript
6413	Tweet6413	User6413	987	2533	Netherlands	C
6414	Tweet6414	User6414	4011	260	Netherlands	C#
6415	Tweet6415	User6415	4541	4536	Italy	Java
6416	Tweet6416	User6416	1585	3475	Sweden	Visual Basic
6417	Tweet6417	User6417	346	278	Germany	Java
6418	Tweet6418	User6418	2758	3233	Croatia	Visual Basic
6419	Tweet6419	User6419	2199	3811	Bulgaria	Ruby
6420	Tweet6420	User6420	3783	3442	Italy	C++
6421	Tweet6421	User6421	4748	3741	Netherlands	Java
6422	Tweet6422	User6422	3971	2184	Italy	Scala
6423	Tweet6423	User6423	3226	665	Austria	Visual Basic
6424	Tweet6424	User6424	3566	537	Greece	PHP
6425	Tweet6425	User6425	4608	702	Cyprus	Java
6426	Tweet6426	User6426	1556	3244	Germany	PHP
6427	Tweet6427	User6427	477	93	Ireland	JavaScript
6428	Tweet6428	User6428	4191	3561	Latvia	JavaScript
6429	Tweet6429	User6429	1018	3104	Lithuania	PHP
6430	Tweet6430	User6430	3166	4515	Spain	Ruby
6431	Tweet6431	User6431	532	3376	Estonia	Visual Basic
6432	Tweet6432	User6432	3107	1058	Sweden	C#
6433	Tweet6433	User6433	2412	1780	Austria	Obj C
6434	Tweet6434	User6434	1688	1391	United Kingdom	Visual Basic
6435	Tweet6435	User6435	1541	1111	Germany	Visual Basic
6436	Tweet6436	User6436	4192	2558	Netherlands	C
6437	Tweet6437	User6437	1152	909	Poland	Obj C
6438	Tweet6438	User6438	192	635	Lithuania	C#
6439	Tweet6439	User6439	4371	4351	Hungary	JavaScript
6440	Tweet6440	User6440	3321	2188	Finland	Ruby
6441	Tweet6441	User6441	1261	440	Lithuania	Visual Basic
6442	Tweet6442	User6442	1575	2072	Slovakia	C
6443	Tweet6443	User6443	1188	3471	Croatia	Python
6444	Tweet6444	User6444	1924	3266	Bulgaria	Ruby
6445	Tweet6445	User6445	216	3501	Slovenia	Visual Basic
6446	Tweet6446	User6446	90	1377	Latvia	C
6447	Tweet6447	User6447	2706	1094	Germany	Scala
6448	Tweet6448	User6448	197	4859	Denmark	Java
6449	Tweet6449	User6449	1867	3606	Hungary	C
6450	Tweet6450	User6450	3517	4173	France	C#
6451	Tweet6451	User6451	848	771	Italy	Python
6452	Tweet6452	User6452	3302	808	United Kingdom	C++
6453	Tweet6453	User6453	3942	1724	Belgium	Ruby
6454	Tweet6454	User6454	3431	828	Slovakia	Visual Basic
6455	Tweet6455	User6455	3037	3040	France	Visual Basic
6456	Tweet6456	User6456	455	253	Denmark	Visual Basic
6457	Tweet6457	User6457	3575	2603	Slovenia	Scala
6458	Tweet6458	User6458	1433	1588	Belgium	Scala
6459	Tweet6459	User6459	1313	4268	Ireland	C#
6460	Tweet6460	User6460	2834	4962	Netherlands	PHP
6461	Tweet6461	User6461	4922	630	France	PHP
6462	Tweet6462	User6462	4330	1511	Italy	Scala
6463	Tweet6463	User6463	147	4817	France	C++
6464	Tweet6464	User6464	3551	4754	Slovakia	Ruby
6465	Tweet6465	User6465	2776	2054	Germany	Ruby
6466	Tweet6466	User6466	2467	394	Netherlands	C#
6467	Tweet6467	User6467	2682	1990	Italy	Visual Basic
6468	Tweet6468	User6468	1993	1297	Bulgaria	PHP
6469	Tweet6469	User6469	2001	62	Bulgaria	Scala
6470	Tweet6470	User6470	3253	616	Portugal	Java
6471	Tweet6471	User6471	4377	1797	Austria	Java
6472	Tweet6472	User6472	1470	3772	United Kingdom	Obj C
6473	Tweet6473	User6473	3006	4106	Denmark	C#
6474	Tweet6474	User6474	1448	4776	Croatia	Obj C
6475	Tweet6475	User6475	1077	1758	Ireland	Java
6476	Tweet6476	User6476	381	4625	Romania	C#
6477	Tweet6477	User6477	4504	97	Estonia	C++
6478	Tweet6478	User6478	2039	4262	Croatia	C#
6479	Tweet6479	User6479	1197	3774	Greece	Visual Basic
6480	Tweet6480	User6480	41	1850	Cyprus	Obj C
6481	Tweet6481	User6481	1731	3555	Slovenia	C
6482	Tweet6482	User6482	80	4394	Spain	C#
6483	Tweet6483	User6483	2805	1992	Belgium	C++
6484	Tweet6484	User6484	800	382	Denmark	Scala
6485	Tweet6485	User6485	1544	2608	Poland	JavaScript
6486	Tweet6486	User6486	3489	4561	Austria	Ruby
6487	Tweet6487	User6487	2763	3926	Finland	PHP
6488	Tweet6488	User6488	3411	3341	Lithuania	C#
6489	Tweet6489	User6489	4970	2469	Malta	Ruby
6490	Tweet6490	User6490	2498	4887	Czech Republic	Obj C
6491	Tweet6491	User6491	2703	4336	Belgium	Java
6492	Tweet6492	User6492	997	3363	Romania	Visual Basic
6493	Tweet6493	User6493	2564	145	Austria	Ruby
6494	Tweet6494	User6494	1055	644	Denmark	Scala
6495	Tweet6495	User6495	1544	4637	Belgium	PHP
6496	Tweet6496	User6496	154	30	Denmark	C
6497	Tweet6497	User6497	2004	1050	Lithuania	Obj C
6498	Tweet6498	User6498	3339	1681	Estonia	JavaScript
6499	Tweet6499	User6499	196	4360	Cyprus	Visual Basic
6500	Tweet6500	User6500	2886	850	Hungary	Visual Basic
6501	Tweet6501	User6501	2258	295	Slovenia	Visual Basic
6502	Tweet6502	User6502	945	1888	Bulgaria	C
6503	Tweet6503	User6503	399	497	Luxembourg	JavaScript
6504	Tweet6504	User6504	4997	136	Ireland	Java
6505	Tweet6505	User6505	2512	1521	Croatia	Obj C
6506	Tweet6506	User6506	2935	956	Austria	PHP
6507	Tweet6507	User6507	4683	4871	Finland	Obj C
6508	Tweet6508	User6508	4367	896	Austria	Python
6509	Tweet6509	User6509	4337	3195	United Kingdom	Java
6510	Tweet6510	User6510	3679	2641	Croatia	Python
6511	Tweet6511	User6511	2163	1656	Bulgaria	JavaScript
6512	Tweet6512	User6512	460	4103	Malta	Scala
6513	Tweet6513	User6513	3312	4293	Czech Republic	Ruby
6514	Tweet6514	User6514	2374	3446	Ireland	Scala
6515	Tweet6515	User6515	3377	2577	Austria	Scala
6516	Tweet6516	User6516	4855	1813	Slovenia	Ruby
6517	Tweet6517	User6517	229	2125	France	C++
6518	Tweet6518	User6518	868	738	Sweden	Obj C
6519	Tweet6519	User6519	4105	1123	Poland	C++
6520	Tweet6520	User6520	4157	2766	Poland	Scala
6521	Tweet6521	User6521	121	4061	Cyprus	C++
6522	Tweet6522	User6522	2810	889	Spain	Scala
6523	Tweet6523	User6523	4519	4487	Luxembourg	JavaScript
6524	Tweet6524	User6524	3492	4155	Germany	PHP
6525	Tweet6525	User6525	282	3497	Romania	JavaScript
6526	Tweet6526	User6526	314	4839	Malta	Scala
6527	Tweet6527	User6527	4668	1664	Lithuania	Visual Basic
6528	Tweet6528	User6528	1447	1831	Slovakia	PHP
6529	Tweet6529	User6529	4290	4350	Finland	PHP
6530	Tweet6530	User6530	4510	1394	Sweden	C#
6531	Tweet6531	User6531	368	4288	Germany	C++
6532	Tweet6532	User6532	133	2022	Ireland	Java
6533	Tweet6533	User6533	1945	4028	Portugal	JavaScript
6534	Tweet6534	User6534	2102	3513	Croatia	Visual Basic
6535	Tweet6535	User6535	2775	1495	Czech Republic	C++
6536	Tweet6536	User6536	4076	2259	United Kingdom	JavaScript
6537	Tweet6537	User6537	75	1923	Croatia	C
6538	Tweet6538	User6538	4611	4979	Romania	JavaScript
6539	Tweet6539	User6539	1504	4724	France	Java
6540	Tweet6540	User6540	3294	3258	Belgium	C++
6541	Tweet6541	User6541	1567	2976	Malta	C#
6542	Tweet6542	User6542	2792	3775	Austria	Visual Basic
6543	Tweet6543	User6543	3011	1247	Czech Republic	C#
6544	Tweet6544	User6544	4901	593	Lithuania	C#
6545	Tweet6545	User6545	4010	2699	Romania	Obj C
6546	Tweet6546	User6546	3016	4442	Spain	Visual Basic
6547	Tweet6547	User6547	393	3795	Finland	C#
6548	Tweet6548	User6548	1279	4023	Ireland	Scala
6549	Tweet6549	User6549	4919	729	Italy	Ruby
6550	Tweet6550	User6550	82	173	Malta	Java
6551	Tweet6551	User6551	497	803	Czech Republic	C++
6552	Tweet6552	User6552	1302	3332	Lithuania	C++
6553	Tweet6553	User6553	4831	143	Belgium	JavaScript
6554	Tweet6554	User6554	2587	1792	Spain	PHP
6555	Tweet6555	User6555	1856	2207	United Kingdom	Visual Basic
6556	Tweet6556	User6556	3616	3723	Slovakia	PHP
6557	Tweet6557	User6557	2545	3655	Spain	Ruby
6558	Tweet6558	User6558	4316	1437	Latvia	Scala
6559	Tweet6559	User6559	3957	208	Cyprus	Obj C
6560	Tweet6560	User6560	3280	501	Romania	Python
6561	Tweet6561	User6561	249	3294	Lithuania	Ruby
6562	Tweet6562	User6562	4432	3918	Latvia	C++
6563	Tweet6563	User6563	3667	3427	Italy	C++
6564	Tweet6564	User6564	2850	4721	Greece	Ruby
6565	Tweet6565	User6565	3665	4662	Spain	JavaScript
6566	Tweet6566	User6566	3343	53	Belgium	Ruby
6567	Tweet6567	User6567	3585	4110	Austria	Scala
6568	Tweet6568	User6568	4889	4124	Austria	Java
6569	Tweet6569	User6569	939	4835	Estonia	C++
6570	Tweet6570	User6570	2130	3929	Germany	C#
6571	Tweet6571	User6571	2068	2835	Latvia	JavaScript
6572	Tweet6572	User6572	2631	4501	Netherlands	Ruby
6573	Tweet6573	User6573	1774	4870	Finland	C
6574	Tweet6574	User6574	1813	1861	Italy	Ruby
6575	Tweet6575	User6575	2508	4278	Croatia	Scala
6576	Tweet6576	User6576	755	4221	Hungary	PHP
6577	Tweet6577	User6577	1033	3825	Romania	Ruby
6578	Tweet6578	User6578	515	2973	Cyprus	JavaScript
6579	Tweet6579	User6579	4992	1356	Spain	PHP
6580	Tweet6580	User6580	3140	3560	Spain	Python
6581	Tweet6581	User6581	1552	4548	Netherlands	JavaScript
6582	Tweet6582	User6582	1489	2721	Denmark	Obj C
6583	Tweet6583	User6583	1279	4903	Portugal	Ruby
6584	Tweet6584	User6584	4273	1361	Luxembourg	C
6585	Tweet6585	User6585	4052	1120	Finland	Python
6586	Tweet6586	User6586	2418	3556	Poland	Java
6587	Tweet6587	User6587	4374	450	Slovakia	C
6588	Tweet6588	User6588	3900	3728	Austria	Java
6589	Tweet6589	User6589	1196	1708	Romania	Ruby
6590	Tweet6590	User6590	2090	4361	Romania	Scala
6591	Tweet6591	User6591	2150	841	Belgium	Python
6592	Tweet6592	User6592	47	197	Malta	Visual Basic
6593	Tweet6593	User6593	1658	4528	Hungary	JavaScript
6594	Tweet6594	User6594	3971	4845	Greece	JavaScript
6595	Tweet6595	User6595	3243	1874	Germany	Scala
6596	Tweet6596	User6596	424	3838	Denmark	JavaScript
6597	Tweet6597	User6597	108	4094	Cyprus	C
6598	Tweet6598	User6598	686	4431	United Kingdom	JavaScript
6599	Tweet6599	User6599	1663	2215	Greece	Visual Basic
6600	Tweet6600	User6600	4832	2552	United Kingdom	Python
6601	Tweet6601	User6601	671	2593	Czech Republic	Visual Basic
6602	Tweet6602	User6602	4947	4735	Italy	JavaScript
6603	Tweet6603	User6603	2344	554	Spain	C#
6604	Tweet6604	User6604	4263	861	Denmark	JavaScript
6605	Tweet6605	User6605	3906	3248	Romania	PHP
6606	Tweet6606	User6606	3977	2938	Lithuania	Obj C
6607	Tweet6607	User6607	4714	3672	Slovakia	C#
6608	Tweet6608	User6608	1490	1677	Cyprus	Obj C
6609	Tweet6609	User6609	4922	64	Malta	Visual Basic
6610	Tweet6610	User6610	3505	711	Poland	Visual Basic
6611	Tweet6611	User6611	4812	540	Belgium	Python
6612	Tweet6612	User6612	2589	962	Spain	C
6613	Tweet6613	User6613	3434	1514	Spain	JavaScript
6614	Tweet6614	User6614	1335	196	Slovenia	C
6615	Tweet6615	User6615	4621	1100	Italy	Visual Basic
6616	Tweet6616	User6616	4672	4881	Luxembourg	Ruby
6617	Tweet6617	User6617	2131	246	Greece	Java
6618	Tweet6618	User6618	2014	1222	Malta	PHP
6619	Tweet6619	User6619	27	4308	France	Python
6620	Tweet6620	User6620	1180	2978	Cyprus	Python
6621	Tweet6621	User6621	3805	1823	France	JavaScript
6622	Tweet6622	User6622	97	2828	Belgium	C
6623	Tweet6623	User6623	1464	2896	Greece	C++
6624	Tweet6624	User6624	3148	1941	Greece	C++
6625	Tweet6625	User6625	638	2112	Italy	C#
6626	Tweet6626	User6626	1093	3904	Spain	Obj C
6627	Tweet6627	User6627	4897	293	Netherlands	C++
6628	Tweet6628	User6628	4897	4598	Italy	Ruby
6629	Tweet6629	User6629	1221	645	Malta	Python
6630	Tweet6630	User6630	438	4968	Latvia	Scala
6631	Tweet6631	User6631	1439	198	Portugal	Python
6632	Tweet6632	User6632	4820	3395	Denmark	Scala
6633	Tweet6633	User6633	3132	2430	Cyprus	Python
6634	Tweet6634	User6634	3320	2234	Slovenia	Visual Basic
6635	Tweet6635	User6635	3546	240	Denmark	Visual Basic
6636	Tweet6636	User6636	530	3057	United Kingdom	JavaScript
6637	Tweet6637	User6637	2990	382	Spain	C#
6638	Tweet6638	User6638	183	2318	Germany	Python
6639	Tweet6639	User6639	1245	3521	Slovakia	Obj C
6640	Tweet6640	User6640	2068	515	Cyprus	C
6641	Tweet6641	User6641	2495	1065	United Kingdom	Obj C
6642	Tweet6642	User6642	541	3222	Germany	Visual Basic
6643	Tweet6643	User6643	2228	2474	Poland	Ruby
6644	Tweet6644	User6644	3994	3811	Germany	C#
6645	Tweet6645	User6645	140	1293	Bulgaria	JavaScript
6646	Tweet6646	User6646	1288	2127	Finland	Obj C
6647	Tweet6647	User6647	3177	3328	Slovenia	Ruby
6648	Tweet6648	User6648	2413	3498	Netherlands	Visual Basic
6649	Tweet6649	User6649	898	3016	Greece	Visual Basic
6650	Tweet6650	User6650	912	175	Slovakia	PHP
6651	Tweet6651	User6651	4074	3175	Sweden	Scala
6652	Tweet6652	User6652	841	1893	France	PHP
6653	Tweet6653	User6653	1817	973	Poland	C
6654	Tweet6654	User6654	2135	2699	Slovenia	Ruby
6655	Tweet6655	User6655	4841	2709	Estonia	Visual Basic
6656	Tweet6656	User6656	1484	23	Belgium	Scala
6657	Tweet6657	User6657	4120	4213	Spain	Obj C
6658	Tweet6658	User6658	3089	311	Cyprus	PHP
6659	Tweet6659	User6659	1605	326	Sweden	C
6660	Tweet6660	User6660	2958	1187	Belgium	Visual Basic
6661	Tweet6661	User6661	3914	3244	Lithuania	C
6662	Tweet6662	User6662	2326	602	Croatia	PHP
6663	Tweet6663	User6663	1298	2932	Ireland	Visual Basic
6664	Tweet6664	User6664	3923	586	Cyprus	Python
6665	Tweet6665	User6665	60	1563	Bulgaria	C#
6666	Tweet6666	User6666	4956	2969	Spain	Java
6667	Tweet6667	User6667	943	225	Finland	Visual Basic
6668	Tweet6668	User6668	4745	1291	United Kingdom	Scala
6669	Tweet6669	User6669	4626	2925	Estonia	Ruby
6670	Tweet6670	User6670	51	1386	Ireland	Python
6671	Tweet6671	User6671	1641	3963	Austria	C
6672	Tweet6672	User6672	2046	1487	Poland	Java
6673	Tweet6673	User6673	278	3509	Romania	Java
6674	Tweet6674	User6674	3972	4458	Luxembourg	PHP
6675	Tweet6675	User6675	4800	3236	Netherlands	Obj C
6676	Tweet6676	User6676	1854	1257	Finland	Visual Basic
6677	Tweet6677	User6677	3531	991	Slovenia	JavaScript
6678	Tweet6678	User6678	2738	2688	Malta	PHP
6679	Tweet6679	User6679	2790	1001	Belgium	PHP
6680	Tweet6680	User6680	3706	2792	Italy	PHP
6681	Tweet6681	User6681	4059	1271	Denmark	Python
6682	Tweet6682	User6682	304	4866	Lithuania	C#
6683	Tweet6683	User6683	4156	2974	Estonia	Visual Basic
6684	Tweet6684	User6684	4571	4586	Ireland	C++
6685	Tweet6685	User6685	3771	1360	United Kingdom	Scala
6686	Tweet6686	User6686	291	3274	Sweden	C
6687	Tweet6687	User6687	2198	4719	Lithuania	Python
6688	Tweet6688	User6688	3312	3072	Bulgaria	C
6689	Tweet6689	User6689	3415	4811	Cyprus	Visual Basic
6690	Tweet6690	User6690	1526	4396	Slovenia	PHP
6691	Tweet6691	User6691	1193	2258	Cyprus	Scala
6692	Tweet6692	User6692	3662	3094	Greece	Visual Basic
6693	Tweet6693	User6693	3834	4954	Bulgaria	Visual Basic
6694	Tweet6694	User6694	3379	2003	Bulgaria	Obj C
6695	Tweet6695	User6695	1314	1763	Cyprus	Ruby
6696	Tweet6696	User6696	2083	3430	Germany	JavaScript
6697	Tweet6697	User6697	4139	207	Slovenia	Obj C
6698	Tweet6698	User6698	2310	9	Latvia	Python
6699	Tweet6699	User6699	3909	220	Portugal	Python
6700	Tweet6700	User6700	3943	2769	France	Scala
6701	Tweet6701	User6701	2540	3075	Malta	C#
6702	Tweet6702	User6702	782	1534	Slovakia	PHP
6703	Tweet6703	User6703	3735	1912	Greece	JavaScript
6704	Tweet6704	User6704	2061	1903	France	Ruby
6705	Tweet6705	User6705	2720	4085	Latvia	JavaScript
6706	Tweet6706	User6706	1746	1519	Slovakia	PHP
6707	Tweet6707	User6707	1837	3595	Sweden	Java
6708	Tweet6708	User6708	1341	4149	Greece	Visual Basic
6709	Tweet6709	User6709	1940	3140	Spain	Java
6710	Tweet6710	User6710	492	3755	United Kingdom	C#
6711	Tweet6711	User6711	892	3033	Romania	C++
6712	Tweet6712	User6712	3397	3625	Lithuania	Java
6713	Tweet6713	User6713	958	3747	Greece	Ruby
6714	Tweet6714	User6714	4538	779	Greece	C++
6715	Tweet6715	User6715	817	4350	Lithuania	Python
6716	Tweet6716	User6716	4653	3257	Hungary	C
6717	Tweet6717	User6717	4473	3092	Italy	Scala
6718	Tweet6718	User6718	2407	3272	Finland	JavaScript
6719	Tweet6719	User6719	3294	139	Bulgaria	Scala
6720	Tweet6720	User6720	4134	1509	Italy	Obj C
6721	Tweet6721	User6721	3670	1903	Hungary	JavaScript
6722	Tweet6722	User6722	2995	559	Estonia	Visual Basic
6723	Tweet6723	User6723	2885	2444	Lithuania	Obj C
6724	Tweet6724	User6724	2128	4577	Slovenia	Scala
6725	Tweet6725	User6725	2334	4331	Germany	Obj C
6726	Tweet6726	User6726	3016	77	Belgium	C++
6727	Tweet6727	User6727	424	3990	Estonia	C#
6728	Tweet6728	User6728	2262	474	France	Visual Basic
6729	Tweet6729	User6729	3112	4097	Finland	Python
6730	Tweet6730	User6730	2560	1529	Italy	PHP
6731	Tweet6731	User6731	4936	4182	Denmark	Python
6732	Tweet6732	User6732	1346	1023	Spain	JavaScript
6733	Tweet6733	User6733	2419	3162	Hungary	C
6734	Tweet6734	User6734	566	3483	United Kingdom	Visual Basic
6735	Tweet6735	User6735	3106	1023	Belgium	Scala
6736	Tweet6736	User6736	3396	4402	Bulgaria	PHP
6737	Tweet6737	User6737	4029	1689	Denmark	Obj C
6738	Tweet6738	User6738	3262	2464	Ireland	Scala
6739	Tweet6739	User6739	4336	3692	Germany	Python
6740	Tweet6740	User6740	738	3481	Cyprus	Python
6741	Tweet6741	User6741	2614	4223	Romania	PHP
6742	Tweet6742	User6742	1785	1283	Finland	C++
6743	Tweet6743	User6743	2710	1804	Belgium	JavaScript
6744	Tweet6744	User6744	3968	100	United Kingdom	PHP
6745	Tweet6745	User6745	298	726	Cyprus	Java
6746	Tweet6746	User6746	449	1304	Netherlands	Scala
6747	Tweet6747	User6747	567	2194	Luxembourg	Java
6748	Tweet6748	User6748	1009	3508	Bulgaria	PHP
6749	Tweet6749	User6749	594	3557	Romania	Ruby
6750	Tweet6750	User6750	1715	1150	Greece	Python
6751	Tweet6751	User6751	3794	4846	Sweden	Ruby
6752	Tweet6752	User6752	665	650	Romania	C
6753	Tweet6753	User6753	4560	1655	Belgium	Ruby
6754	Tweet6754	User6754	2679	346	Netherlands	JavaScript
6755	Tweet6755	User6755	925	2481	Lithuania	PHP
6756	Tweet6756	User6756	607	3946	Bulgaria	Python
6757	Tweet6757	User6757	3197	2783	Belgium	Python
6758	Tweet6758	User6758	4678	4573	Bulgaria	C
6759	Tweet6759	User6759	3217	271	Finland	Python
6760	Tweet6760	User6760	2546	3625	Netherlands	C++
6761	Tweet6761	User6761	1098	4249	Latvia	Ruby
6762	Tweet6762	User6762	919	2771	United Kingdom	Ruby
6763	Tweet6763	User6763	4878	2089	Germany	JavaScript
6764	Tweet6764	User6764	3764	4369	Italy	C#
6765	Tweet6765	User6765	3010	3772	Germany	Java
6766	Tweet6766	User6766	1381	2067	Slovakia	C
6767	Tweet6767	User6767	912	3567	Slovakia	C#
6768	Tweet6768	User6768	1834	2811	Latvia	C#
6769	Tweet6769	User6769	994	4638	Latvia	Python
6770	Tweet6770	User6770	3491	2944	Latvia	JavaScript
6771	Tweet6771	User6771	141	397	Bulgaria	Visual Basic
6772	Tweet6772	User6772	76	4419	Finland	PHP
6773	Tweet6773	User6773	670	2332	Portugal	PHP
6774	Tweet6774	User6774	2908	3409	Austria	C++
6775	Tweet6775	User6775	362	635	France	C
6776	Tweet6776	User6776	2811	3988	Italy	Java
6777	Tweet6777	User6777	4965	3580	Bulgaria	Ruby
6778	Tweet6778	User6778	1542	2679	Austria	C
6779	Tweet6779	User6779	2571	1843	Croatia	JavaScript
6780	Tweet6780	User6780	2113	2062	United Kingdom	Ruby
6781	Tweet6781	User6781	2256	914	Cyprus	C
6782	Tweet6782	User6782	4515	1420	Germany	C#
6783	Tweet6783	User6783	4685	4646	Finland	Visual Basic
6784	Tweet6784	User6784	2707	2410	France	Visual Basic
6785	Tweet6785	User6785	110	1399	Greece	C#
6786	Tweet6786	User6786	2522	2412	Luxembourg	JavaScript
6787	Tweet6787	User6787	4464	1625	Sweden	Visual Basic
6788	Tweet6788	User6788	4569	1453	Czech Republic	Java
6789	Tweet6789	User6789	4624	1670	Cyprus	PHP
6790	Tweet6790	User6790	521	2128	Cyprus	PHP
6791	Tweet6791	User6791	3158	2813	Sweden	PHP
6792	Tweet6792	User6792	3854	155	Italy	Ruby
6793	Tweet6793	User6793	2207	3679	Slovenia	JavaScript
6794	Tweet6794	User6794	1127	2427	Cyprus	Visual Basic
6795	Tweet6795	User6795	3632	48	Romania	Obj C
6796	Tweet6796	User6796	1322	233	Luxembourg	C++
6797	Tweet6797	User6797	2773	3424	Ireland	Python
6798	Tweet6798	User6798	249	1616	Luxembourg	Python
6799	Tweet6799	User6799	870	1263	Czech Republic	Obj C
6800	Tweet6800	User6800	1295	302	Netherlands	Java
6801	Tweet6801	User6801	1677	582	Finland	Visual Basic
6802	Tweet6802	User6802	1620	3850	Denmark	Java
6803	Tweet6803	User6803	3120	3371	Denmark	C
6804	Tweet6804	User6804	4161	4886	Hungary	Ruby
6805	Tweet6805	User6805	1843	3513	Croatia	C++
6806	Tweet6806	User6806	3012	1568	United Kingdom	C#
6807	Tweet6807	User6807	171	2060	Bulgaria	Scala
6808	Tweet6808	User6808	4375	783	Bulgaria	Obj C
6809	Tweet6809	User6809	2212	3365	Czech Republic	C
6810	Tweet6810	User6810	1328	4388	Slovakia	Obj C
6811	Tweet6811	User6811	2550	3151	Estonia	Obj C
6812	Tweet6812	User6812	371	4902	Belgium	Ruby
6813	Tweet6813	User6813	1627	2894	Ireland	Scala
6814	Tweet6814	User6814	1177	4902	Poland	JavaScript
6815	Tweet6815	User6815	3977	2364	Netherlands	Scala
6816	Tweet6816	User6816	1499	2879	Estonia	Scala
6817	Tweet6817	User6817	110	1861	Luxembourg	Visual Basic
6818	Tweet6818	User6818	2772	145	Germany	PHP
6819	Tweet6819	User6819	3069	2428	Netherlands	Ruby
6820	Tweet6820	User6820	418	1776	Romania	C
6821	Tweet6821	User6821	1126	309	Italy	JavaScript
6822	Tweet6822	User6822	4147	3005	Netherlands	Visual Basic
6823	Tweet6823	User6823	4304	2943	Belgium	Java
6824	Tweet6824	User6824	2542	2981	Romania	Java
6825	Tweet6825	User6825	4066	3706	Belgium	C
6826	Tweet6826	User6826	2452	4649	Latvia	Python
6827	Tweet6827	User6827	1163	2965	Portugal	Python
6828	Tweet6828	User6828	4404	1403	Bulgaria	Visual Basic
6829	Tweet6829	User6829	1984	3071	Spain	Scala
6830	Tweet6830	User6830	917	3260	Romania	C#
6831	Tweet6831	User6831	681	1061	Estonia	Java
6832	Tweet6832	User6832	4979	2468	Slovenia	Scala
6833	Tweet6833	User6833	3012	4031	Denmark	C#
6834	Tweet6834	User6834	3053	1480	France	C++
6835	Tweet6835	User6835	4721	3029	Belgium	Ruby
6836	Tweet6836	User6836	2124	4565	United Kingdom	Python
6837	Tweet6837	User6837	4299	2487	Hungary	PHP
6838	Tweet6838	User6838	3089	3820	Latvia	C++
6839	Tweet6839	User6839	4314	2863	Germany	Java
6840	Tweet6840	User6840	3688	4667	Portugal	Ruby
6841	Tweet6841	User6841	3840	216	Greece	C#
6842	Tweet6842	User6842	2664	4880	Austria	C
6843	Tweet6843	User6843	446	4093	Estonia	Obj C
6844	Tweet6844	User6844	1476	4969	Latvia	C++
6845	Tweet6845	User6845	4971	2882	Slovenia	C#
6846	Tweet6846	User6846	2971	3473	Romania	Ruby
6847	Tweet6847	User6847	1392	1230	Czech Republic	C#
6848	Tweet6848	User6848	75	3736	Poland	C
6849	Tweet6849	User6849	295	3491	Estonia	Scala
6850	Tweet6850	User6850	816	3953	Luxembourg	Scala
6851	Tweet6851	User6851	1220	789	Greece	C#
6852	Tweet6852	User6852	1852	145	Cyprus	Ruby
6853	Tweet6853	User6853	976	2718	Ireland	PHP
6854	Tweet6854	User6854	1899	4980	Estonia	Python
6855	Tweet6855	User6855	2623	2683	Latvia	Scala
6856	Tweet6856	User6856	4159	3638	Austria	PHP
6857	Tweet6857	User6857	2238	232	France	Scala
6858	Tweet6858	User6858	3086	1734	Portugal	Java
6859	Tweet6859	User6859	2915	3003	Lithuania	Python
6860	Tweet6860	User6860	4041	949	Denmark	Visual Basic
6861	Tweet6861	User6861	4309	3481	Latvia	C++
6862	Tweet6862	User6862	1898	3905	Spain	Ruby
6863	Tweet6863	User6863	4065	2394	Germany	C#
6864	Tweet6864	User6864	952	1337	Luxembourg	Ruby
6865	Tweet6865	User6865	4411	345	Sweden	Visual Basic
6866	Tweet6866	User6866	4737	3364	Croatia	C++
6867	Tweet6867	User6867	2813	1018	Lithuania	Java
6868	Tweet6868	User6868	2835	338	Sweden	Java
6869	Tweet6869	User6869	285	3881	Cyprus	PHP
6870	Tweet6870	User6870	1097	4394	Bulgaria	Scala
6871	Tweet6871	User6871	1020	3675	Luxembourg	Python
6872	Tweet6872	User6872	4951	731	Sweden	Ruby
6873	Tweet6873	User6873	3595	4213	Netherlands	JavaScript
6874	Tweet6874	User6874	3737	1791	Denmark	Obj C
6875	Tweet6875	User6875	1847	1569	Netherlands	Ruby
6876	Tweet6876	User6876	4507	1718	Germany	C#
6877	Tweet6877	User6877	2314	3028	Spain	Python
6878	Tweet6878	User6878	240	162	Cyprus	JavaScript
6879	Tweet6879	User6879	4340	924	Ireland	C++
6880	Tweet6880	User6880	358	3345	Croatia	Visual Basic
6881	Tweet6881	User6881	2220	3951	Austria	C#
6882	Tweet6882	User6882	4432	2676	Greece	C
6883	Tweet6883	User6883	2996	3544	Denmark	Ruby
6884	Tweet6884	User6884	1871	381	Austria	Java
6885	Tweet6885	User6885	2360	2179	United Kingdom	PHP
6886	Tweet6886	User6886	367	3551	Malta	Visual Basic
6887	Tweet6887	User6887	4543	4448	Hungary	JavaScript
6888	Tweet6888	User6888	3111	3027	Netherlands	Visual Basic
6889	Tweet6889	User6889	1311	1298	Denmark	C
6890	Tweet6890	User6890	110	4650	Portugal	Visual Basic
6891	Tweet6891	User6891	1884	2600	Bulgaria	C++
6892	Tweet6892	User6892	3246	4008	Finland	C++
6893	Tweet6893	User6893	3259	3392	Poland	PHP
6894	Tweet6894	User6894	4017	3579	Bulgaria	Visual Basic
6895	Tweet6895	User6895	2928	4849	Sweden	C#
6896	Tweet6896	User6896	3137	2201	Greece	Python
6897	Tweet6897	User6897	3270	443	Luxembourg	Ruby
6898	Tweet6898	User6898	4223	4963	Hungary	Visual Basic
6899	Tweet6899	User6899	664	1301	France	Obj C
6900	Tweet6900	User6900	3263	1648	Finland	C
6901	Tweet6901	User6901	1163	1375	Slovakia	C#
6902	Tweet6902	User6902	192	3233	Belgium	Visual Basic
6903	Tweet6903	User6903	2644	3846	Cyprus	C++
6904	Tweet6904	User6904	1031	1121	France	Scala
6905	Tweet6905	User6905	394	4421	Italy	Scala
6906	Tweet6906	User6906	4526	2483	Cyprus	Visual Basic
6907	Tweet6907	User6907	4389	2856	Croatia	Python
6908	Tweet6908	User6908	2440	97	Slovenia	Java
6909	Tweet6909	User6909	4330	2809	Hungary	PHP
6910	Tweet6910	User6910	114	3669	France	C#
6911	Tweet6911	User6911	2447	248	Austria	Visual Basic
6912	Tweet6912	User6912	4360	2681	Latvia	C#
6913	Tweet6913	User6913	2733	1386	Germany	Ruby
6914	Tweet6914	User6914	4204	4155	Croatia	C++
6915	Tweet6915	User6915	2305	4529	France	Visual Basic
6916	Tweet6916	User6916	1988	3849	Denmark	Scala
6917	Tweet6917	User6917	96	1431	Cyprus	Python
6918	Tweet6918	User6918	2418	1107	Croatia	PHP
6919	Tweet6919	User6919	4668	559	Bulgaria	C#
6920	Tweet6920	User6920	4828	3765	Romania	C
6921	Tweet6921	User6921	759	983	Denmark	C++
6922	Tweet6922	User6922	2544	2608	Netherlands	Python
6923	Tweet6923	User6923	568	1168	Italy	Java
6924	Tweet6924	User6924	1259	1020	Italy	Python
6925	Tweet6925	User6925	1837	1195	Belgium	Ruby
6926	Tweet6926	User6926	3207	4677	Portugal	C++
6927	Tweet6927	User6927	2401	391	Austria	C#
6928	Tweet6928	User6928	4848	314	Finland	C#
6929	Tweet6929	User6929	235	1186	Romania	C#
6930	Tweet6930	User6930	995	45	Germany	C++
6931	Tweet6931	User6931	2917	306	Italy	C++
6932	Tweet6932	User6932	4098	343	Belgium	Obj C
6933	Tweet6933	User6933	951	1222	Cyprus	C#
6934	Tweet6934	User6934	1556	1896	Portugal	Ruby
6935	Tweet6935	User6935	2169	3787	Portugal	Visual Basic
6936	Tweet6936	User6936	1437	4121	Ireland	Visual Basic
6937	Tweet6937	User6937	2449	3761	Slovakia	JavaScript
6938	Tweet6938	User6938	14	35	Portugal	Obj C
6939	Tweet6939	User6939	535	2508	Luxembourg	Scala
6940	Tweet6940	User6940	772	2186	Estonia	Visual Basic
6941	Tweet6941	User6941	545	2899	Slovakia	Ruby
6942	Tweet6942	User6942	3190	3710	Czech Republic	JavaScript
6943	Tweet6943	User6943	19	956	Austria	C++
6944	Tweet6944	User6944	2729	3179	Spain	Ruby
6945	Tweet6945	User6945	4377	1871	France	Scala
6946	Tweet6946	User6946	2575	2435	Slovenia	C
6947	Tweet6947	User6947	2942	2726	Luxembourg	C#
6948	Tweet6948	User6948	29	4718	Bulgaria	Python
6949	Tweet6949	User6949	3056	1325	Poland	Java
6950	Tweet6950	User6950	2136	1486	Latvia	C#
6951	Tweet6951	User6951	962	2276	Belgium	Ruby
6952	Tweet6952	User6952	2030	3234	Croatia	Python
6953	Tweet6953	User6953	2169	4927	France	Java
6954	Tweet6954	User6954	4661	2412	Poland	PHP
6955	Tweet6955	User6955	2034	2110	Ireland	Ruby
6956	Tweet6956	User6956	410	4117	Italy	C++
6957	Tweet6957	User6957	1258	4282	Germany	Scala
6958	Tweet6958	User6958	4879	3386	Luxembourg	PHP
6959	Tweet6959	User6959	2074	150	Latvia	Python
6960	Tweet6960	User6960	3598	1824	Luxembourg	C
6961	Tweet6961	User6961	4273	4458	United Kingdom	C
6962	Tweet6962	User6962	904	1218	Poland	Java
6963	Tweet6963	User6963	3272	2272	Spain	C++
6964	Tweet6964	User6964	560	1059	Latvia	C
6965	Tweet6965	User6965	1864	2074	Bulgaria	Visual Basic
6966	Tweet6966	User6966	4776	1212	Ireland	Python
6967	Tweet6967	User6967	2208	2454	Latvia	C
6968	Tweet6968	User6968	3434	2806	Romania	C
6969	Tweet6969	User6969	168	899	Czech Republic	Python
6970	Tweet6970	User6970	1125	1497	Italy	Ruby
6971	Tweet6971	User6971	4566	4442	Estonia	Visual Basic
6972	Tweet6972	User6972	3119	4533	Bulgaria	C
6973	Tweet6973	User6973	3686	4020	Spain	Java
6974	Tweet6974	User6974	1037	1614	Netherlands	Python
6975	Tweet6975	User6975	2277	404	Czech Republic	Scala
6976	Tweet6976	User6976	4724	3041	Latvia	Scala
6977	Tweet6977	User6977	3552	632	Romania	Visual Basic
6978	Tweet6978	User6978	2463	2597	Hungary	Python
6979	Tweet6979	User6979	474	894	Denmark	PHP
6980	Tweet6980	User6980	3901	1984	Ireland	JavaScript
6981	Tweet6981	User6981	4484	3310	Bulgaria	Obj C
6982	Tweet6982	User6982	4836	1836	Spain	C#
6983	Tweet6983	User6983	750	3311	Czech Republic	Obj C
6984	Tweet6984	User6984	4152	4065	Bulgaria	PHP
6985	Tweet6985	User6985	1324	2578	Slovakia	JavaScript
6986	Tweet6986	User6986	1598	4932	Lithuania	C
6987	Tweet6987	User6987	139	3811	Ireland	Java
6988	Tweet6988	User6988	4338	962	United Kingdom	Java
6989	Tweet6989	User6989	441	493	Denmark	PHP
6990	Tweet6990	User6990	813	4093	United Kingdom	Scala
6991	Tweet6991	User6991	2014	529	Netherlands	Python
6992	Tweet6992	User6992	3176	60	Romania	JavaScript
6993	Tweet6993	User6993	1412	4087	Slovakia	C++
6994	Tweet6994	User6994	2880	2752	Portugal	Python
6995	Tweet6995	User6995	4037	2085	Hungary	Obj C
6996	Tweet6996	User6996	2258	4574	Italy	JavaScript
6997	Tweet6997	User6997	3784	2660	Croatia	Ruby
6998	Tweet6998	User6998	3302	2719	Croatia	C
6999	Tweet6999	User6999	36	4131	Hungary	C
7000	Tweet7000	User7000	1016	1871	Slovakia	C++
7001	Tweet7001	User7001	3799	945	Germany	C#
7002	Tweet7002	User7002	3194	618	Romania	Java
7003	Tweet7003	User7003	1399	2646	Estonia	C
7004	Tweet7004	User7004	1828	3424	Czech Republic	JavaScript
7005	Tweet7005	User7005	3062	90	France	C#
7006	Tweet7006	User7006	1789	999	France	C
7007	Tweet7007	User7007	3026	3644	Denmark	Scala
7008	Tweet7008	User7008	4125	4768	Bulgaria	PHP
7009	Tweet7009	User7009	1952	1148	Poland	Ruby
7010	Tweet7010	User7010	4051	138	Poland	Visual Basic
7011	Tweet7011	User7011	668	543	Poland	PHP
7012	Tweet7012	User7012	3231	2961	Croatia	C
7013	Tweet7013	User7013	693	1996	Luxembourg	C
7014	Tweet7014	User7014	844	3020	Ireland	Visual Basic
7015	Tweet7015	User7015	106	2645	Hungary	C#
7016	Tweet7016	User7016	3042	3055	Croatia	Scala
7017	Tweet7017	User7017	3176	447	Romania	Java
7018	Tweet7018	User7018	2123	2417	Bulgaria	JavaScript
7019	Tweet7019	User7019	605	2977	Hungary	PHP
7020	Tweet7020	User7020	2056	2772	Slovakia	Ruby
7021	Tweet7021	User7021	3934	4211	Czech Republic	PHP
7022	Tweet7022	User7022	1350	1115	Luxembourg	JavaScript
7023	Tweet7023	User7023	1358	2927	Malta	Ruby
7024	Tweet7024	User7024	4786	3429	Hungary	C++
7025	Tweet7025	User7025	3446	4164	Latvia	Obj C
7026	Tweet7026	User7026	329	814	Slovenia	Python
7027	Tweet7027	User7027	2657	3205	Greece	JavaScript
7028	Tweet7028	User7028	1279	1738	Spain	JavaScript
7029	Tweet7029	User7029	2827	3923	Sweden	C
7030	Tweet7030	User7030	4906	274	Greece	Visual Basic
7031	Tweet7031	User7031	2013	4538	Greece	Python
7032	Tweet7032	User7032	1942	290	United Kingdom	C++
7033	Tweet7033	User7033	717	4033	Germany	PHP
7034	Tweet7034	User7034	1701	3344	United Kingdom	Python
7035	Tweet7035	User7035	294	2386	Greece	Python
7036	Tweet7036	User7036	377	934	Netherlands	C
7037	Tweet7037	User7037	2417	718	Czech Republic	C#
7038	Tweet7038	User7038	2283	2165	Lithuania	C#
7039	Tweet7039	User7039	3377	1173	Slovakia	C++
7040	Tweet7040	User7040	2531	3753	Estonia	PHP
7041	Tweet7041	User7041	589	4757	Luxembourg	Java
7042	Tweet7042	User7042	2855	1045	Ireland	Java
7043	Tweet7043	User7043	4059	911	Sweden	Python
7044	Tweet7044	User7044	3211	2694	Czech Republic	JavaScript
7045	Tweet7045	User7045	1901	1282	Italy	Ruby
7046	Tweet7046	User7046	98	3423	Spain	Python
7047	Tweet7047	User7047	4386	1712	United Kingdom	Obj C
7048	Tweet7048	User7048	1822	1836	Hungary	PHP
7049	Tweet7049	User7049	4204	815	United Kingdom	Obj C
7050	Tweet7050	User7050	833	3589	Cyprus	Scala
7051	Tweet7051	User7051	4781	3966	Denmark	C++
7052	Tweet7052	User7052	995	606	Luxembourg	PHP
7053	Tweet7053	User7053	4403	2080	Estonia	PHP
7054	Tweet7054	User7054	281	3939	Croatia	C#
7055	Tweet7055	User7055	287	3586	Denmark	Visual Basic
7056	Tweet7056	User7056	2801	162	Spain	Visual Basic
7057	Tweet7057	User7057	3041	3626	Spain	Python
7058	Tweet7058	User7058	2785	4351	Luxembourg	Ruby
7059	Tweet7059	User7059	1968	1417	Netherlands	C
7060	Tweet7060	User7060	2220	618	Slovenia	C
7061	Tweet7061	User7061	715	2250	Poland	Ruby
7062	Tweet7062	User7062	3490	3527	Czech Republic	PHP
7063	Tweet7063	User7063	97	3055	Poland	Java
7064	Tweet7064	User7064	1589	1725	Ireland	Java
7065	Tweet7065	User7065	1977	3870	Austria	C++
7066	Tweet7066	User7066	156	3915	Sweden	Visual Basic
7067	Tweet7067	User7067	576	1226	Cyprus	C++
7068	Tweet7068	User7068	2724	4986	France	Scala
7069	Tweet7069	User7069	4899	2221	Cyprus	JavaScript
7070	Tweet7070	User7070	769	149	Austria	C
7071	Tweet7071	User7071	2660	4198	Denmark	C#
7072	Tweet7072	User7072	3765	4596	Bulgaria	PHP
7073	Tweet7073	User7073	2626	1473	Austria	C++
7074	Tweet7074	User7074	1098	4935	France	Obj C
7075	Tweet7075	User7075	3322	2887	United Kingdom	Java
7076	Tweet7076	User7076	4377	3149	Cyprus	PHP
7077	Tweet7077	User7077	1269	987	Spain	Scala
7078	Tweet7078	User7078	763	4407	Belgium	Java
7079	Tweet7079	User7079	3285	3763	Ireland	Ruby
7080	Tweet7080	User7080	2677	337	Czech Republic	C++
7081	Tweet7081	User7081	3553	2377	Croatia	C#
7082	Tweet7082	User7082	1501	1444	Malta	Python
7083	Tweet7083	User7083	4735	3938	Spain	C++
7084	Tweet7084	User7084	1382	3079	Germany	C
7085	Tweet7085	User7085	3793	4810	Denmark	JavaScript
7086	Tweet7086	User7086	2530	1177	Romania	Java
7087	Tweet7087	User7087	3380	1576	Denmark	Java
7088	Tweet7088	User7088	1247	2460	Germany	PHP
7089	Tweet7089	User7089	2257	2956	Hungary	Scala
7090	Tweet7090	User7090	669	4163	Malta	C#
7091	Tweet7091	User7091	4886	1554	Austria	JavaScript
7092	Tweet7092	User7092	83	3901	Denmark	Visual Basic
7093	Tweet7093	User7093	3024	4577	Sweden	C#
7094	Tweet7094	User7094	3849	2061	Austria	JavaScript
7095	Tweet7095	User7095	3583	2841	Finland	C#
7096	Tweet7096	User7096	4281	696	Austria	Visual Basic
7097	Tweet7097	User7097	3466	843	Finland	Python
7098	Tweet7098	User7098	1436	275	Spain	JavaScript
7099	Tweet7099	User7099	4974	560	Finland	C#
7100	Tweet7100	User7100	439	314	Netherlands	Ruby
7101	Tweet7101	User7101	3488	3967	Lithuania	Ruby
7102	Tweet7102	User7102	1209	2476	Belgium	Visual Basic
7103	Tweet7103	User7103	3384	3580	Luxembourg	Ruby
7104	Tweet7104	User7104	1275	512	Bulgaria	Java
7105	Tweet7105	User7105	4298	4903	Luxembourg	Obj C
7106	Tweet7106	User7106	1130	4760	Romania	Visual Basic
7107	Tweet7107	User7107	2190	4435	Spain	C
7108	Tweet7108	User7108	833	1453	Italy	Scala
7109	Tweet7109	User7109	1941	716	Greece	Java
7110	Tweet7110	User7110	2347	1104	France	Visual Basic
7111	Tweet7111	User7111	1381	1885	Slovenia	C
7112	Tweet7112	User7112	2847	1230	United Kingdom	C++
7113	Tweet7113	User7113	154	927	Romania	C++
7114	Tweet7114	User7114	1076	2305	Portugal	PHP
7115	Tweet7115	User7115	1466	3111	Sweden	Scala
7116	Tweet7116	User7116	3496	4887	Luxembourg	PHP
7117	Tweet7117	User7117	2313	714	Czech Republic	JavaScript
7118	Tweet7118	User7118	4150	2390	Hungary	C
7119	Tweet7119	User7119	148	3000	United Kingdom	Python
7120	Tweet7120	User7120	3284	3364	Denmark	PHP
7121	Tweet7121	User7121	2999	2066	Greece	Obj C
7122	Tweet7122	User7122	115	3141	Poland	PHP
7123	Tweet7123	User7123	2899	224	Romania	Java
7124	Tweet7124	User7124	420	37	Finland	C
7125	Tweet7125	User7125	16	1064	France	Obj C
7126	Tweet7126	User7126	3033	2195	Malta	Obj C
7127	Tweet7127	User7127	412	4710	Slovenia	Scala
7128	Tweet7128	User7128	208	3639	Croatia	PHP
7129	Tweet7129	User7129	4815	2754	Czech Republic	Visual Basic
7130	Tweet7130	User7130	2224	4969	Slovenia	C
7131	Tweet7131	User7131	3726	2086	Bulgaria	C
7132	Tweet7132	User7132	646	4913	Portugal	Visual Basic
7133	Tweet7133	User7133	3912	2926	Slovakia	C++
7134	Tweet7134	User7134	115	4878	Poland	Ruby
7135	Tweet7135	User7135	1958	331	Romania	C++
7136	Tweet7136	User7136	4628	2780	Ireland	Python
7137	Tweet7137	User7137	4761	1705	Estonia	C
7138	Tweet7138	User7138	1650	3145	Hungary	PHP
7139	Tweet7139	User7139	2547	904	United Kingdom	Scala
7140	Tweet7140	User7140	2805	2755	Hungary	PHP
7141	Tweet7141	User7141	3919	26	Netherlands	PHP
7142	Tweet7142	User7142	2646	1039	Latvia	C++
7143	Tweet7143	User7143	848	1896	France	PHP
7144	Tweet7144	User7144	2090	436	Luxembourg	C++
7145	Tweet7145	User7145	4272	1846	Estonia	C++
7146	Tweet7146	User7146	1724	375	Lithuania	C
7147	Tweet7147	User7147	2739	2834	Sweden	C
7148	Tweet7148	User7148	2941	2648	Poland	Ruby
7149	Tweet7149	User7149	623	2403	Croatia	Scala
7150	Tweet7150	User7150	807	4676	Ireland	Java
7151	Tweet7151	User7151	670	3911	Croatia	C#
7152	Tweet7152	User7152	4215	1697	Czech Republic	Scala
7153	Tweet7153	User7153	1066	4554	Greece	Visual Basic
7154	Tweet7154	User7154	563	4724	Italy	C++
7155	Tweet7155	User7155	4186	4204	Poland	C++
7156	Tweet7156	User7156	1113	3340	Belgium	Python
7157	Tweet7157	User7157	1076	4651	Austria	Scala
7158	Tweet7158	User7158	574	3774	France	PHP
7159	Tweet7159	User7159	552	3375	Poland	Java
7160	Tweet7160	User7160	4692	1013	Croatia	C++
7161	Tweet7161	User7161	4393	2073	Slovenia	Python
7162	Tweet7162	User7162	867	3540	Portugal	Java
7163	Tweet7163	User7163	3807	2666	Netherlands	C
7164	Tweet7164	User7164	3111	143	Lithuania	Obj C
7165	Tweet7165	User7165	3109	640	Spain	Python
7166	Tweet7166	User7166	615	3306	Austria	Obj C
7167	Tweet7167	User7167	267	4177	Romania	C++
7168	Tweet7168	User7168	1641	1472	Cyprus	Obj C
7169	Tweet7169	User7169	2085	3238	Slovakia	Ruby
7170	Tweet7170	User7170	1031	1876	Greece	JavaScript
7171	Tweet7171	User7171	3598	3658	Slovakia	C++
7172	Tweet7172	User7172	2929	4066	Italy	Java
7173	Tweet7173	User7173	3735	3110	Bulgaria	Scala
7174	Tweet7174	User7174	3966	1911	Malta	Scala
7175	Tweet7175	User7175	4657	4310	United Kingdom	Visual Basic
7176	Tweet7176	User7176	3465	1295	Italy	PHP
7177	Tweet7177	User7177	3934	1621	Sweden	Ruby
7178	Tweet7178	User7178	3998	3767	Luxembourg	Visual Basic
7179	Tweet7179	User7179	3350	4151	Netherlands	Scala
7180	Tweet7180	User7180	3332	1097	Estonia	Java
7181	Tweet7181	User7181	139	808	Ireland	C++
7182	Tweet7182	User7182	4419	3051	Denmark	PHP
7183	Tweet7183	User7183	4050	1816	Finland	JavaScript
7184	Tweet7184	User7184	418	4474	Germany	PHP
7185	Tweet7185	User7185	4200	2343	Portugal	JavaScript
7186	Tweet7186	User7186	1298	4531	Sweden	Obj C
7187	Tweet7187	User7187	3906	3401	Ireland	C#
7188	Tweet7188	User7188	131	2637	Finland	C#
7189	Tweet7189	User7189	3540	2219	Croatia	Java
7190	Tweet7190	User7190	3367	1253	Latvia	Python
7191	Tweet7191	User7191	4941	3167	Latvia	C
7192	Tweet7192	User7192	1186	3680	United Kingdom	Scala
7193	Tweet7193	User7193	2173	2983	Latvia	PHP
7194	Tweet7194	User7194	2023	1076	Belgium	PHP
7195	Tweet7195	User7195	947	1788	Belgium	Python
7196	Tweet7196	User7196	2926	2619	Malta	Python
7197	Tweet7197	User7197	3726	1258	Belgium	Java
7198	Tweet7198	User7198	3041	35	Netherlands	C
7199	Tweet7199	User7199	3177	4614	Greece	Visual Basic
7200	Tweet7200	User7200	3714	3723	Czech Republic	Visual Basic
7201	Tweet7201	User7201	2452	3540	Slovakia	Java
7202	Tweet7202	User7202	1236	2085	United Kingdom	Visual Basic
7203	Tweet7203	User7203	4298	1887	Romania	C
7204	Tweet7204	User7204	378	330	United Kingdom	C++
7205	Tweet7205	User7205	66	3714	Hungary	C
7206	Tweet7206	User7206	3212	4996	Austria	C
7207	Tweet7207	User7207	3478	3185	Luxembourg	Obj C
7208	Tweet7208	User7208	348	2489	Luxembourg	PHP
7209	Tweet7209	User7209	3286	109	United Kingdom	Visual Basic
7210	Tweet7210	User7210	4355	4801	Bulgaria	JavaScript
7211	Tweet7211	User7211	3699	1213	Slovakia	Java
7212	Tweet7212	User7212	417	2829	Ireland	JavaScript
7213	Tweet7213	User7213	3831	1888	Malta	Python
7214	Tweet7214	User7214	2966	158	Hungary	Python
7215	Tweet7215	User7215	1661	4066	Italy	Python
7216	Tweet7216	User7216	2719	629	Czech Republic	Python
7217	Tweet7217	User7217	4996	663	Germany	Java
7218	Tweet7218	User7218	2030	3412	Malta	Scala
7219	Tweet7219	User7219	4253	2238	United Kingdom	Visual Basic
7220	Tweet7220	User7220	1675	3175	Czech Republic	Python
7221	Tweet7221	User7221	81	4893	Ireland	Ruby
7222	Tweet7222	User7222	2250	3378	Italy	Java
7223	Tweet7223	User7223	3741	275	Estonia	Scala
7224	Tweet7224	User7224	4396	2149	Germany	C
7225	Tweet7225	User7225	3529	3548	Portugal	Visual Basic
7226	Tweet7226	User7226	902	780	Sweden	Obj C
7227	Tweet7227	User7227	2474	3651	Latvia	Visual Basic
7228	Tweet7228	User7228	2265	4128	Malta	C
7229	Tweet7229	User7229	2899	4282	Portugal	Visual Basic
7230	Tweet7230	User7230	1240	852	Slovakia	Python
7231	Tweet7231	User7231	3014	285	France	C++
7232	Tweet7232	User7232	4087	4453	Belgium	Ruby
7233	Tweet7233	User7233	2377	2708	Greece	PHP
7234	Tweet7234	User7234	1293	4950	Malta	Java
7235	Tweet7235	User7235	1021	49	Spain	C
7236	Tweet7236	User7236	2451	1168	Denmark	Obj C
7237	Tweet7237	User7237	3821	4362	Romania	Java
7238	Tweet7238	User7238	1690	2876	Cyprus	C#
7239	Tweet7239	User7239	358	3663	Czech Republic	Obj C
7240	Tweet7240	User7240	3324	4877	Croatia	Obj C
7241	Tweet7241	User7241	907	3368	Luxembourg	PHP
7242	Tweet7242	User7242	4030	4889	Slovakia	C
7243	Tweet7243	User7243	3795	1316	Germany	JavaScript
7244	Tweet7244	User7244	4242	1259	Slovenia	Python
7245	Tweet7245	User7245	3171	3933	Denmark	Java
7246	Tweet7246	User7246	1925	385	Slovenia	JavaScript
7247	Tweet7247	User7247	1712	4132	Slovakia	PHP
7248	Tweet7248	User7248	345	1404	Slovenia	C
7249	Tweet7249	User7249	1630	153	Bulgaria	PHP
7250	Tweet7250	User7250	4516	1166	Latvia	Java
7251	Tweet7251	User7251	4371	766	United Kingdom	JavaScript
7252	Tweet7252	User7252	2623	266	Malta	PHP
7253	Tweet7253	User7253	3936	2966	United Kingdom	PHP
7254	Tweet7254	User7254	116	1451	Denmark	Obj C
7255	Tweet7255	User7255	1757	340	Bulgaria	Obj C
7256	Tweet7256	User7256	2445	3604	Greece	JavaScript
7257	Tweet7257	User7257	3609	4986	Poland	Scala
7258	Tweet7258	User7258	1303	2396	France	Java
7259	Tweet7259	User7259	2379	1966	Luxembourg	Ruby
7260	Tweet7260	User7260	2622	4785	France	C#
7261	Tweet7261	User7261	656	1712	Luxembourg	Python
7262	Tweet7262	User7262	195	3369	Portugal	Visual Basic
7263	Tweet7263	User7263	2982	1552	Austria	Python
7264	Tweet7264	User7264	4679	4947	Austria	Python
7265	Tweet7265	User7265	1438	4837	Spain	C++
7266	Tweet7266	User7266	764	2833	Greece	C#
7267	Tweet7267	User7267	2955	2335	Netherlands	Obj C
7268	Tweet7268	User7268	2356	4816	Ireland	Java
7269	Tweet7269	User7269	3708	163	France	Ruby
7270	Tweet7270	User7270	1245	2647	Slovenia	Visual Basic
7271	Tweet7271	User7271	4568	4765	Lithuania	C
7272	Tweet7272	User7272	724	164	Estonia	C++
7273	Tweet7273	User7273	1715	4239	Finland	C#
7274	Tweet7274	User7274	2922	1747	Hungary	Java
7275	Tweet7275	User7275	3196	3589	Greece	C++
7276	Tweet7276	User7276	3416	1989	Bulgaria	Python
7277	Tweet7277	User7277	3361	1666	Romania	PHP
7278	Tweet7278	User7278	3378	2959	Greece	Visual Basic
7279	Tweet7279	User7279	2239	4759	Malta	PHP
7280	Tweet7280	User7280	4259	2923	Romania	C++
7281	Tweet7281	User7281	2411	2360	Belgium	C
7282	Tweet7282	User7282	2258	572	Italy	Scala
7283	Tweet7283	User7283	929	4504	Spain	C#
7284	Tweet7284	User7284	3953	4434	Greece	Scala
7285	Tweet7285	User7285	874	661	Cyprus	Java
7286	Tweet7286	User7286	2904	880	Spain	PHP
7287	Tweet7287	User7287	4729	1723	Germany	JavaScript
7288	Tweet7288	User7288	1862	4520	Spain	C++
7289	Tweet7289	User7289	4351	1957	Denmark	C++
7290	Tweet7290	User7290	1596	4910	United Kingdom	PHP
7291	Tweet7291	User7291	2796	1885	Netherlands	Java
7292	Tweet7292	User7292	3745	1828	Spain	Ruby
7293	Tweet7293	User7293	2562	2322	Czech Republic	Obj C
7294	Tweet7294	User7294	2069	2659	Austria	Visual Basic
7295	Tweet7295	User7295	4824	1724	France	PHP
7296	Tweet7296	User7296	1401	4417	United Kingdom	C++
7297	Tweet7297	User7297	2608	3032	Netherlands	Python
7298	Tweet7298	User7298	3532	1042	Slovakia	C++
7299	Tweet7299	User7299	2858	2902	Belgium	C#
7300	Tweet7300	User7300	2487	1047	Slovenia	Visual Basic
7301	Tweet7301	User7301	3139	4307	Austria	Python
7302	Tweet7302	User7302	170	4347	Malta	C++
7303	Tweet7303	User7303	4232	3692	Portugal	Visual Basic
7304	Tweet7304	User7304	3947	1142	Croatia	Ruby
7305	Tweet7305	User7305	3578	3936	Cyprus	Ruby
7306	Tweet7306	User7306	292	569	Latvia	PHP
7307	Tweet7307	User7307	4854	4589	Spain	Visual Basic
7308	Tweet7308	User7308	3995	3747	Sweden	Ruby
7309	Tweet7309	User7309	4018	2530	Luxembourg	PHP
7310	Tweet7310	User7310	351	4639	Finland	Java
7311	Tweet7311	User7311	56	4444	Luxembourg	Java
7312	Tweet7312	User7312	1431	668	Belgium	Obj C
7313	Tweet7313	User7313	3787	1786	Belgium	C++
7314	Tweet7314	User7314	4431	475	Belgium	Obj C
7315	Tweet7315	User7315	4647	903	United Kingdom	Ruby
7316	Tweet7316	User7316	3510	2922	Denmark	C
7317	Tweet7317	User7317	29	4565	Denmark	JavaScript
7318	Tweet7318	User7318	4462	4269	Netherlands	JavaScript
7319	Tweet7319	User7319	568	4629	Belgium	Python
7320	Tweet7320	User7320	760	2537	United Kingdom	PHP
7321	Tweet7321	User7321	4034	785	Austria	Scala
7322	Tweet7322	User7322	860	4695	United Kingdom	Python
7323	Tweet7323	User7323	1103	2412	Austria	C++
7324	Tweet7324	User7324	4312	166	Romania	Obj C
7325	Tweet7325	User7325	3301	1421	Bulgaria	JavaScript
7326	Tweet7326	User7326	4619	8	Belgium	Obj C
7327	Tweet7327	User7327	1065	2443	United Kingdom	C#
7328	Tweet7328	User7328	1889	3823	Italy	Visual Basic
7329	Tweet7329	User7329	4974	2030	Sweden	Java
7330	Tweet7330	User7330	3136	3406	Italy	C++
7331	Tweet7331	User7331	4186	4820	Luxembourg	Java
7332	Tweet7332	User7332	4410	201	Bulgaria	C
7333	Tweet7333	User7333	2020	1392	United Kingdom	Scala
7334	Tweet7334	User7334	2936	2339	Estonia	Python
7335	Tweet7335	User7335	1564	4108	France	JavaScript
7336	Tweet7336	User7336	41	4643	Latvia	PHP
7337	Tweet7337	User7337	1512	1560	Ireland	JavaScript
7338	Tweet7338	User7338	3447	1009	Germany	PHP
7339	Tweet7339	User7339	3402	3011	Greece	Scala
7340	Tweet7340	User7340	594	4743	Cyprus	JavaScript
7341	Tweet7341	User7341	1376	326	Spain	C++
7342	Tweet7342	User7342	2280	4510	Hungary	Visual Basic
7343	Tweet7343	User7343	1560	1729	Lithuania	Python
7344	Tweet7344	User7344	3350	1883	Czech Republic	C#
7345	Tweet7345	User7345	1193	818	Germany	Python
7346	Tweet7346	User7346	2926	3466	Latvia	JavaScript
7347	Tweet7347	User7347	4342	351	Lithuania	JavaScript
7348	Tweet7348	User7348	4409	3370	Bulgaria	JavaScript
7349	Tweet7349	User7349	2291	2733	Cyprus	C#
7350	Tweet7350	User7350	2583	3921	United Kingdom	Visual Basic
7351	Tweet7351	User7351	579	2982	Poland	Python
7352	Tweet7352	User7352	4175	206	Netherlands	C#
7353	Tweet7353	User7353	1826	2343	Latvia	Obj C
7354	Tweet7354	User7354	4786	2051	Malta	Ruby
7355	Tweet7355	User7355	2660	2804	Slovenia	Scala
7356	Tweet7356	User7356	2116	3710	Cyprus	Scala
7357	Tweet7357	User7357	690	2775	Sweden	C
7358	Tweet7358	User7358	4741	3206	Czech Republic	JavaScript
7359	Tweet7359	User7359	426	2554	Lithuania	PHP
7360	Tweet7360	User7360	630	2087	Croatia	Python
7361	Tweet7361	User7361	1376	2998	Estonia	Scala
7362	Tweet7362	User7362	3920	68	Hungary	Ruby
7363	Tweet7363	User7363	4905	238	Ireland	Python
7364	Tweet7364	User7364	712	1832	France	Python
7365	Tweet7365	User7365	3667	807	United Kingdom	C
7366	Tweet7366	User7366	75	923	Estonia	Python
7367	Tweet7367	User7367	2173	1034	Denmark	C#
7368	Tweet7368	User7368	3968	4411	Portugal	Scala
7369	Tweet7369	User7369	3518	3778	Croatia	Visual Basic
7370	Tweet7370	User7370	1194	4616	Italy	C
7371	Tweet7371	User7371	515	489	Portugal	Visual Basic
7372	Tweet7372	User7372	3409	485	Belgium	C#
7373	Tweet7373	User7373	2258	424	Portugal	Python
7374	Tweet7374	User7374	2844	3502	Ireland	JavaScript
7375	Tweet7375	User7375	3715	4494	Greece	Ruby
7376	Tweet7376	User7376	1267	2532	Poland	C#
7377	Tweet7377	User7377	2668	1269	Cyprus	PHP
7378	Tweet7378	User7378	4325	1977	Romania	Java
7379	Tweet7379	User7379	853	2001	Croatia	Python
7380	Tweet7380	User7380	2284	1650	Poland	JavaScript
7381	Tweet7381	User7381	854	2815	Italy	Ruby
7382	Tweet7382	User7382	3738	1301	Estonia	C#
7383	Tweet7383	User7383	4399	861	Belgium	Ruby
7384	Tweet7384	User7384	3863	2707	Belgium	C#
7385	Tweet7385	User7385	2118	1428	Hungary	PHP
7386	Tweet7386	User7386	4563	4199	Ireland	C++
7387	Tweet7387	User7387	3884	1710	France	JavaScript
7388	Tweet7388	User7388	4411	4583	Bulgaria	Python
7389	Tweet7389	User7389	185	3916	Portugal	C#
7390	Tweet7390	User7390	1455	4567	France	C
7391	Tweet7391	User7391	3720	986	Luxembourg	Obj C
7392	Tweet7392	User7392	4675	1975	Finland	Ruby
7393	Tweet7393	User7393	996	717	Estonia	C#
7394	Tweet7394	User7394	2231	3836	Portugal	Ruby
7395	Tweet7395	User7395	2615	1924	Estonia	C
7396	Tweet7396	User7396	1134	4134	Germany	C++
7397	Tweet7397	User7397	2043	1908	Spain	Obj C
7398	Tweet7398	User7398	1419	2037	Portugal	C++
7399	Tweet7399	User7399	966	3009	Romania	Scala
7400	Tweet7400	User7400	4750	3208	Ireland	Ruby
7401	Tweet7401	User7401	2898	2697	Bulgaria	Scala
7402	Tweet7402	User7402	2393	4050	Austria	Visual Basic
7403	Tweet7403	User7403	2178	3972	Latvia	C++
7404	Tweet7404	User7404	1672	3177	Portugal	Java
7405	Tweet7405	User7405	4763	904	Ireland	Java
7406	Tweet7406	User7406	1727	4558	Denmark	Scala
7407	Tweet7407	User7407	4020	3168	Slovakia	Scala
7408	Tweet7408	User7408	3349	464	Austria	PHP
7409	Tweet7409	User7409	2780	1928	Austria	PHP
7410	Tweet7410	User7410	4532	4777	Ireland	JavaScript
7411	Tweet7411	User7411	2001	4312	Slovakia	Python
7412	Tweet7412	User7412	614	789	Cyprus	Visual Basic
7413	Tweet7413	User7413	579	3955	Germany	Scala
7414	Tweet7414	User7414	2565	4596	Ireland	Visual Basic
7415	Tweet7415	User7415	193	2856	Finland	C++
7416	Tweet7416	User7416	3873	2262	Belgium	Python
7417	Tweet7417	User7417	804	2965	Denmark	Visual Basic
7418	Tweet7418	User7418	1620	1096	United Kingdom	Obj C
7419	Tweet7419	User7419	4698	1712	Latvia	Scala
7420	Tweet7420	User7420	1942	4137	Estonia	C++
7421	Tweet7421	User7421	3540	765	Estonia	Java
7422	Tweet7422	User7422	215	984	Slovenia	Ruby
7423	Tweet7423	User7423	1374	4787	Czech Republic	Ruby
7424	Tweet7424	User7424	1038	3401	Luxembourg	C++
7425	Tweet7425	User7425	1556	2859	Germany	Java
7426	Tweet7426	User7426	1201	855	Spain	PHP
7427	Tweet7427	User7427	4713	2116	Romania	Java
7428	Tweet7428	User7428	1451	62	Ireland	C#
7429	Tweet7429	User7429	988	4062	Slovenia	Ruby
7430	Tweet7430	User7430	4578	3447	Denmark	C
7431	Tweet7431	User7431	239	3381	Croatia	Java
7432	Tweet7432	User7432	4237	1155	Luxembourg	Ruby
7433	Tweet7433	User7433	196	3638	Ireland	C#
7434	Tweet7434	User7434	859	4527	Croatia	Scala
7435	Tweet7435	User7435	159	4021	Slovakia	Obj C
7436	Tweet7436	User7436	2957	4502	Croatia	Scala
7437	Tweet7437	User7437	2381	459	Croatia	Ruby
7438	Tweet7438	User7438	453	328	Estonia	C
7439	Tweet7439	User7439	172	2785	Slovakia	Ruby
7440	Tweet7440	User7440	2277	444	Netherlands	Java
7441	Tweet7441	User7441	2456	2525	Latvia	C++
7442	Tweet7442	User7442	1149	674	Greece	Scala
7443	Tweet7443	User7443	2761	296	Italy	Ruby
7444	Tweet7444	User7444	3323	377	Cyprus	Ruby
7445	Tweet7445	User7445	2585	4498	Greece	Java
7446	Tweet7446	User7446	942	232	Finland	Scala
7447	Tweet7447	User7447	509	3234	Finland	Obj C
7448	Tweet7448	User7448	3809	2923	Spain	PHP
7449	Tweet7449	User7449	4003	806	Romania	C#
7450	Tweet7450	User7450	352	3882	Luxembourg	Python
7451	Tweet7451	User7451	4375	3683	Greece	C#
7452	Tweet7452	User7452	4519	1724	Bulgaria	Scala
7453	Tweet7453	User7453	584	1246	Greece	Obj C
7454	Tweet7454	User7454	374	4933	Denmark	Visual Basic
7455	Tweet7455	User7455	2292	1487	France	Ruby
7456	Tweet7456	User7456	1669	3685	Italy	Obj C
7457	Tweet7457	User7457	1323	1787	Sweden	Python
7458	Tweet7458	User7458	1203	4110	Denmark	C++
7459	Tweet7459	User7459	3214	4872	Portugal	C#
7460	Tweet7460	User7460	2055	4015	Slovakia	Java
7461	Tweet7461	User7461	103	1791	France	C#
7462	Tweet7462	User7462	416	3143	Netherlands	Obj C
7463	Tweet7463	User7463	848	2568	United Kingdom	Java
7464	Tweet7464	User7464	858	864	Belgium	C#
7465	Tweet7465	User7465	2135	963	Denmark	Obj C
7466	Tweet7466	User7466	4130	3769	France	Obj C
7467	Tweet7467	User7467	1504	4999	Sweden	Java
7468	Tweet7468	User7468	731	4243	Germany	C
7469	Tweet7469	User7469	3698	2102	Finland	C
7470	Tweet7470	User7470	3373	3716	Croatia	Java
7471	Tweet7471	User7471	609	915	Finland	Visual Basic
7472	Tweet7472	User7472	2908	2670	Slovenia	Ruby
7473	Tweet7473	User7473	1703	2287	France	Visual Basic
7474	Tweet7474	User7474	1341	742	Ireland	C
7475	Tweet7475	User7475	4130	4763	Latvia	Visual Basic
7476	Tweet7476	User7476	2143	1051	Spain	Visual Basic
7477	Tweet7477	User7477	2748	1884	Greece	C
7478	Tweet7478	User7478	297	2303	Poland	Java
7479	Tweet7479	User7479	4618	3394	Estonia	C++
7480	Tweet7480	User7480	251	3859	Poland	PHP
7481	Tweet7481	User7481	2900	2666	Netherlands	Scala
7482	Tweet7482	User7482	2040	590	Czech Republic	Java
7483	Tweet7483	User7483	2599	978	Ireland	C
7484	Tweet7484	User7484	2918	683	Netherlands	C#
7485	Tweet7485	User7485	186	223	Spain	Obj C
7486	Tweet7486	User7486	76	4603	Bulgaria	C#
7487	Tweet7487	User7487	4332	2264	Hungary	C
7488	Tweet7488	User7488	3914	1577	Belgium	Scala
7489	Tweet7489	User7489	206	3110	Sweden	C
7490	Tweet7490	User7490	1069	1705	Latvia	C
7491	Tweet7491	User7491	1168	2486	United Kingdom	Java
7492	Tweet7492	User7492	347	1882	Ireland	Java
7493	Tweet7493	User7493	2572	3303	Romania	PHP
7494	Tweet7494	User7494	4214	2927	Austria	PHP
7495	Tweet7495	User7495	1286	2979	Malta	C#
7496	Tweet7496	User7496	2545	442	Austria	Obj C
7497	Tweet7497	User7497	4477	3475	Belgium	Obj C
7498	Tweet7498	User7498	1005	2904	France	JavaScript
7499	Tweet7499	User7499	3035	1342	Spain	Java
7500	Tweet7500	User7500	294	1581	United Kingdom	C++
7501	Tweet7501	User7501	3685	4448	Greece	C
7502	Tweet7502	User7502	958	2920	Slovakia	Java
7503	Tweet7503	User7503	2804	4296	Cyprus	Obj C
7504	Tweet7504	User7504	1151	314	Ireland	C
7505	Tweet7505	User7505	1568	1426	Spain	Java
7506	Tweet7506	User7506	2001	4385	Netherlands	Obj C
7507	Tweet7507	User7507	2883	165	Bulgaria	PHP
7508	Tweet7508	User7508	4637	2102	Slovakia	C++
7509	Tweet7509	User7509	4455	4993	Poland	C++
7510	Tweet7510	User7510	1686	2694	Croatia	Obj C
7511	Tweet7511	User7511	3730	2219	Malta	PHP
7512	Tweet7512	User7512	3706	2508	France	C
7513	Tweet7513	User7513	3036	2942	Bulgaria	Python
7514	Tweet7514	User7514	2196	1405	Greece	PHP
7515	Tweet7515	User7515	3348	707	Romania	C
7516	Tweet7516	User7516	37	1834	Finland	Python
7517	Tweet7517	User7517	2077	952	Slovakia	JavaScript
7518	Tweet7518	User7518	2235	2739	Ireland	PHP
7519	Tweet7519	User7519	3023	4239	Slovakia	JavaScript
7520	Tweet7520	User7520	4423	2662	Austria	Ruby
7521	Tweet7521	User7521	4103	3334	Luxembourg	Python
7522	Tweet7522	User7522	4866	1930	France	Java
7523	Tweet7523	User7523	1074	1361	Romania	Python
7524	Tweet7524	User7524	1834	4105	Austria	Python
7525	Tweet7525	User7525	1100	3079	Portugal	PHP
7526	Tweet7526	User7526	819	3092	Slovakia	C++
7527	Tweet7527	User7527	3285	535	Ireland	Obj C
7528	Tweet7528	User7528	1209	3560	Denmark	C++
7529	Tweet7529	User7529	3261	524	Germany	Scala
7530	Tweet7530	User7530	1764	1668	Bulgaria	Ruby
7531	Tweet7531	User7531	2106	2409	Germany	Obj C
7532	Tweet7532	User7532	488	1248	Slovenia	Scala
7533	Tweet7533	User7533	3663	163	Hungary	Visual Basic
7534	Tweet7534	User7534	1322	387	Austria	PHP
7535	Tweet7535	User7535	3018	2140	Latvia	Ruby
7536	Tweet7536	User7536	1093	326	Bulgaria	Visual Basic
7537	Tweet7537	User7537	1736	2969	Hungary	JavaScript
7538	Tweet7538	User7538	1099	3337	Netherlands	Scala
7539	Tweet7539	User7539	2943	3760	Spain	Obj C
7540	Tweet7540	User7540	3821	375	Bulgaria	C
7541	Tweet7541	User7541	4578	4124	Spain	C#
7542	Tweet7542	User7542	4436	4120	Slovenia	PHP
7543	Tweet7543	User7543	3345	1254	Latvia	Java
7544	Tweet7544	User7544	425	4202	Finland	PHP
7545	Tweet7545	User7545	4609	4299	Luxembourg	Python
7546	Tweet7546	User7546	3357	2781	Belgium	C#
7547	Tweet7547	User7547	129	4970	Poland	Java
7548	Tweet7548	User7548	4821	4258	Belgium	Python
7549	Tweet7549	User7549	391	3893	Romania	C#
7550	Tweet7550	User7550	2734	965	Poland	Visual Basic
7551	Tweet7551	User7551	3430	2886	Romania	C++
7552	Tweet7552	User7552	625	4189	Estonia	JavaScript
7553	Tweet7553	User7553	2655	3826	Cyprus	Visual Basic
7554	Tweet7554	User7554	4354	187	Hungary	Scala
7555	Tweet7555	User7555	3204	3444	Czech Republic	C
7556	Tweet7556	User7556	1948	1233	Slovakia	JavaScript
7557	Tweet7557	User7557	1089	2234	Romania	Obj C
7558	Tweet7558	User7558	1671	3097	Belgium	Visual Basic
7559	Tweet7559	User7559	630	1871	Denmark	C
7560	Tweet7560	User7560	4540	3123	Estonia	C
7561	Tweet7561	User7561	4069	2777	France	C
7562	Tweet7562	User7562	4348	713	Estonia	Java
7563	Tweet7563	User7563	3435	2369	United Kingdom	Python
7564	Tweet7564	User7564	3307	2132	Slovakia	Java
7565	Tweet7565	User7565	2828	3974	Ireland	Python
7566	Tweet7566	User7566	1195	400	Malta	C
7567	Tweet7567	User7567	714	4301	Malta	Visual Basic
7568	Tweet7568	User7568	4109	806	Bulgaria	Python
7569	Tweet7569	User7569	714	4561	Denmark	PHP
7570	Tweet7570	User7570	4362	1883	Finland	C++
7571	Tweet7571	User7571	2005	1570	United Kingdom	C#
7572	Tweet7572	User7572	1361	1919	Sweden	C#
7573	Tweet7573	User7573	4290	219	Germany	Obj C
7574	Tweet7574	User7574	1853	2706	Austria	JavaScript
7575	Tweet7575	User7575	2357	2386	Poland	Obj C
7576	Tweet7576	User7576	3214	4147	Slovenia	C
7577	Tweet7577	User7577	3994	3991	France	Obj C
7578	Tweet7578	User7578	3655	2499	Slovakia	Python
7579	Tweet7579	User7579	2311	3676	Spain	Obj C
7580	Tweet7580	User7580	2636	1761	United Kingdom	C
7581	Tweet7581	User7581	2489	4068	Belgium	Obj C
7582	Tweet7582	User7582	2010	1804	Belgium	Java
7583	Tweet7583	User7583	3945	1161	Germany	PHP
7584	Tweet7584	User7584	3008	2844	Finland	Java
7585	Tweet7585	User7585	25	4617	Malta	Ruby
7586	Tweet7586	User7586	594	958	Slovakia	Java
7587	Tweet7587	User7587	3276	1693	Hungary	Java
7588	Tweet7588	User7588	4408	147	Croatia	PHP
7589	Tweet7589	User7589	2391	1152	Czech Republic	C
7590	Tweet7590	User7590	4685	120	Cyprus	C++
7591	Tweet7591	User7591	2366	3898	Luxembourg	JavaScript
7592	Tweet7592	User7592	965	4609	Netherlands	Python
7593	Tweet7593	User7593	4562	334	Estonia	JavaScript
7594	Tweet7594	User7594	1453	1314	Luxembourg	C++
7595	Tweet7595	User7595	1568	3737	Netherlands	Scala
7596	Tweet7596	User7596	2916	3079	Bulgaria	C
7597	Tweet7597	User7597	4449	1409	Greece	C#
7598	Tweet7598	User7598	2715	1806	Sweden	PHP
7599	Tweet7599	User7599	4463	1191	Spain	C#
7600	Tweet7600	User7600	3724	3707	Netherlands	Java
7601	Tweet7601	User7601	1542	1984	Finland	Python
7602	Tweet7602	User7602	4399	4	Belgium	C#
7603	Tweet7603	User7603	3124	3167	France	C#
7604	Tweet7604	User7604	2941	2688	Czech Republic	Scala
7605	Tweet7605	User7605	2598	3508	Czech Republic	C
7606	Tweet7606	User7606	851	3469	Netherlands	Scala
7607	Tweet7607	User7607	4002	634	Denmark	Java
7608	Tweet7608	User7608	2579	3221	Germany	Ruby
7609	Tweet7609	User7609	3473	2319	Latvia	Obj C
7610	Tweet7610	User7610	1297	970	Italy	C++
7611	Tweet7611	User7611	47	1200	Greece	Java
7612	Tweet7612	User7612	2211	3470	Spain	Scala
7613	Tweet7613	User7613	1793	1992	Poland	Obj C
7614	Tweet7614	User7614	922	3020	Estonia	C
7615	Tweet7615	User7615	1494	1591	Spain	JavaScript
7616	Tweet7616	User7616	3965	4934	Sweden	Obj C
7617	Tweet7617	User7617	2304	973	Denmark	Scala
7618	Tweet7618	User7618	975	4575	Portugal	Obj C
7619	Tweet7619	User7619	3710	1	Estonia	Java
7620	Tweet7620	User7620	3006	3007	Germany	C#
7621	Tweet7621	User7621	723	4425	Latvia	Python
7622	Tweet7622	User7622	507	4027	France	JavaScript
7623	Tweet7623	User7623	3145	2596	Lithuania	JavaScript
7624	Tweet7624	User7624	3271	2518	Bulgaria	Ruby
7625	Tweet7625	User7625	1005	4113	Lithuania	Scala
7626	Tweet7626	User7626	3469	4740	Austria	Python
7627	Tweet7627	User7627	3256	1535	Estonia	Obj C
7628	Tweet7628	User7628	3492	3298	Slovenia	C++
7629	Tweet7629	User7629	3540	784	United Kingdom	JavaScript
7630	Tweet7630	User7630	396	1608	Greece	PHP
7631	Tweet7631	User7631	580	3053	Sweden	PHP
7632	Tweet7632	User7632	3898	3245	Portugal	Ruby
7633	Tweet7633	User7633	4378	215	Spain	JavaScript
7634	Tweet7634	User7634	3256	443	Italy	Python
7635	Tweet7635	User7635	4285	411	Poland	PHP
7636	Tweet7636	User7636	1914	1690	Poland	Java
7637	Tweet7637	User7637	854	1584	Italy	Obj C
7638	Tweet7638	User7638	4629	4248	Cyprus	C#
7639	Tweet7639	User7639	4263	3284	Denmark	C#
7640	Tweet7640	User7640	4482	4230	Lithuania	Obj C
7641	Tweet7641	User7641	3397	3648	Hungary	Visual Basic
7642	Tweet7642	User7642	3114	3522	Denmark	C#
7643	Tweet7643	User7643	1315	3262	Lithuania	PHP
7644	Tweet7644	User7644	4338	4862	Hungary	Visual Basic
7645	Tweet7645	User7645	434	4770	Greece	Python
7646	Tweet7646	User7646	3161	1216	Germany	C#
7647	Tweet7647	User7647	1586	2602	Germany	Ruby
7648	Tweet7648	User7648	4641	3462	Portugal	Visual Basic
7649	Tweet7649	User7649	3457	2344	Poland	PHP
7650	Tweet7650	User7650	3148	3134	Italy	C++
7651	Tweet7651	User7651	146	2826	Romania	Obj C
7652	Tweet7652	User7652	4072	211	Latvia	Obj C
7653	Tweet7653	User7653	961	2622	United Kingdom	Obj C
7654	Tweet7654	User7654	3849	3432	Italy	Scala
7655	Tweet7655	User7655	124	4104	Finland	C++
7656	Tweet7656	User7656	1146	2383	Czech Republic	JavaScript
7657	Tweet7657	User7657	750	3634	Cyprus	Scala
7658	Tweet7658	User7658	2471	898	Romania	C++
7659	Tweet7659	User7659	3329	4266	United Kingdom	Obj C
7660	Tweet7660	User7660	4484	3842	Latvia	Scala
7661	Tweet7661	User7661	1307	15	Lithuania	C++
7662	Tweet7662	User7662	1864	4163	Bulgaria	Ruby
7663	Tweet7663	User7663	1525	2376	Finland	C++
7664	Tweet7664	User7664	4793	4001	Poland	C
7665	Tweet7665	User7665	4849	2161	Italy	C
7666	Tweet7666	User7666	177	86	Greece	Scala
7667	Tweet7667	User7667	3681	1023	Netherlands	Java
7668	Tweet7668	User7668	1976	1098	Belgium	C
7669	Tweet7669	User7669	4805	3269	France	Obj C
7670	Tweet7670	User7670	2038	1477	Spain	Ruby
7671	Tweet7671	User7671	4975	4976	Portugal	C
7672	Tweet7672	User7672	176	1538	Cyprus	Scala
7673	Tweet7673	User7673	4588	4891	Czech Republic	C#
7674	Tweet7674	User7674	3151	820	Spain	PHP
7675	Tweet7675	User7675	1906	372	United Kingdom	Java
7676	Tweet7676	User7676	1886	515	Latvia	PHP
7677	Tweet7677	User7677	3040	210	Cyprus	C
7678	Tweet7678	User7678	3902	101	Italy	C#
7679	Tweet7679	User7679	2487	4593	Finland	C
7680	Tweet7680	User7680	2004	4370	Ireland	Ruby
7681	Tweet7681	User7681	2378	3444	Lithuania	Visual Basic
7682	Tweet7682	User7682	3489	1649	Netherlands	C
7683	Tweet7683	User7683	1170	1472	Croatia	Ruby
7684	Tweet7684	User7684	2795	4232	Croatia	Scala
7685	Tweet7685	User7685	3216	598	Germany	Visual Basic
7686	Tweet7686	User7686	2183	2930	Portugal	Java
7687	Tweet7687	User7687	2499	3668	United Kingdom	C#
7688	Tweet7688	User7688	1124	3459	Estonia	C#
7689	Tweet7689	User7689	4875	883	Slovenia	C
7690	Tweet7690	User7690	2956	4350	Denmark	Python
7691	Tweet7691	User7691	2156	3932	Germany	Scala
7692	Tweet7692	User7692	4017	4871	Germany	PHP
7693	Tweet7693	User7693	403	1992	Denmark	C++
7694	Tweet7694	User7694	1034	133	Ireland	PHP
7695	Tweet7695	User7695	3265	4802	Slovakia	PHP
7696	Tweet7696	User7696	223	4187	Ireland	PHP
7697	Tweet7697	User7697	3327	194	Spain	Python
7698	Tweet7698	User7698	4381	1697	Portugal	C
7699	Tweet7699	User7699	2470	4152	Sweden	Scala
7700	Tweet7700	User7700	3827	2286	United Kingdom	Ruby
7701	Tweet7701	User7701	49	2625	Estonia	PHP
7702	Tweet7702	User7702	2912	1256	Austria	C
7703	Tweet7703	User7703	3134	3204	Greece	C++
7704	Tweet7704	User7704	3015	2765	Belgium	C++
7705	Tweet7705	User7705	2282	438	Czech Republic	C#
7706	Tweet7706	User7706	889	482	Ireland	Obj C
7707	Tweet7707	User7707	1907	2580	Poland	PHP
7708	Tweet7708	User7708	3386	3392	Poland	C
7709	Tweet7709	User7709	1249	4525	Poland	PHP
7710	Tweet7710	User7710	4825	3759	Belgium	Scala
7711	Tweet7711	User7711	4115	867	Spain	Obj C
7712	Tweet7712	User7712	4869	1205	Czech Republic	JavaScript
7713	Tweet7713	User7713	1175	1165	Spain	Scala
7714	Tweet7714	User7714	3828	1269	Poland	Scala
7715	Tweet7715	User7715	3915	2624	Poland	Obj C
7716	Tweet7716	User7716	4106	2269	Latvia	JavaScript
7717	Tweet7717	User7717	870	3508	Czech Republic	C++
7718	Tweet7718	User7718	2649	1058	Bulgaria	C++
7719	Tweet7719	User7719	1746	3311	Portugal	Java
7720	Tweet7720	User7720	3066	3299	Netherlands	Ruby
7721	Tweet7721	User7721	3676	1445	Croatia	Visual Basic
7722	Tweet7722	User7722	402	1523	Belgium	Python
7723	Tweet7723	User7723	1844	2989	Sweden	C++
7724	Tweet7724	User7724	1598	135	Latvia	PHP
7725	Tweet7725	User7725	2128	3746	Poland	JavaScript
7726	Tweet7726	User7726	4079	859	Austria	Scala
7727	Tweet7727	User7727	2799	3244	Malta	C#
7728	Tweet7728	User7728	3525	1440	Romania	Scala
7729	Tweet7729	User7729	899	1043	Belgium	Obj C
7730	Tweet7730	User7730	2058	1285	Netherlands	JavaScript
7731	Tweet7731	User7731	3203	3334	Estonia	PHP
7732	Tweet7732	User7732	3929	2323	Denmark	PHP
7733	Tweet7733	User7733	844	1665	Belgium	C
7734	Tweet7734	User7734	4472	4975	Malta	PHP
7735	Tweet7735	User7735	4026	127	Slovenia	Visual Basic
7736	Tweet7736	User7736	4289	3155	Denmark	C
7737	Tweet7737	User7737	1361	2002	Spain	C
7738	Tweet7738	User7738	4950	1064	Spain	Ruby
7739	Tweet7739	User7739	4314	1789	Slovakia	JavaScript
7740	Tweet7740	User7740	3361	4699	Ireland	Scala
7741	Tweet7741	User7741	2238	2303	Slovenia	Python
7742	Tweet7742	User7742	4629	2414	Latvia	JavaScript
7743	Tweet7743	User7743	3202	2801	Denmark	PHP
7744	Tweet7744	User7744	932	1701	Latvia	C
7745	Tweet7745	User7745	4725	1481	Latvia	Scala
7746	Tweet7746	User7746	1824	4644	Denmark	Python
7747	Tweet7747	User7747	4132	4895	Spain	Python
7748	Tweet7748	User7748	1616	4217	Cyprus	Java
7749	Tweet7749	User7749	2999	1972	Denmark	C#
7750	Tweet7750	User7750	1101	3051	Czech Republic	PHP
7751	Tweet7751	User7751	4875	31	Spain	C
7752	Tweet7752	User7752	2230	2992	Croatia	PHP
7753	Tweet7753	User7753	3950	3254	Poland	Java
7754	Tweet7754	User7754	558	943	France	Obj C
7755	Tweet7755	User7755	1999	4449	Lithuania	Scala
7756	Tweet7756	User7756	4909	2969	Austria	Python
7757	Tweet7757	User7757	4639	3941	Italy	C++
7758	Tweet7758	User7758	3241	4652	Poland	C#
7759	Tweet7759	User7759	4768	163	Estonia	C
7760	Tweet7760	User7760	4767	837	Cyprus	C
7761	Tweet7761	User7761	2885	1625	Malta	Java
7762	Tweet7762	User7762	4874	2787	Ireland	Java
7763	Tweet7763	User7763	1936	282	Denmark	C++
7764	Tweet7764	User7764	678	1543	Finland	Visual Basic
7765	Tweet7765	User7765	1633	3621	Spain	C++
7766	Tweet7766	User7766	2158	4354	Sweden	C#
7767	Tweet7767	User7767	3604	4544	Poland	C
7768	Tweet7768	User7768	2442	3679	Romania	Ruby
7769	Tweet7769	User7769	1386	4361	Hungary	C++
7770	Tweet7770	User7770	3884	621	Germany	Scala
7771	Tweet7771	User7771	4208	287	Poland	Obj C
7772	Tweet7772	User7772	2664	4717	Denmark	Java
7773	Tweet7773	User7773	2732	771	Romania	Java
7774	Tweet7774	User7774	2182	2789	Slovenia	Obj C
7775	Tweet7775	User7775	1333	232	Italy	Visual Basic
7776	Tweet7776	User7776	4473	4523	Austria	C++
7777	Tweet7777	User7777	528	3268	Bulgaria	C
7778	Tweet7778	User7778	641	619	Netherlands	Python
7779	Tweet7779	User7779	3416	628	Slovakia	C
7780	Tweet7780	User7780	4623	3265	Croatia	Python
7781	Tweet7781	User7781	1790	2706	Lithuania	Ruby
7782	Tweet7782	User7782	799	591	Slovenia	JavaScript
7783	Tweet7783	User7783	2139	2901	Ireland	PHP
7784	Tweet7784	User7784	863	3357	Poland	Python
7785	Tweet7785	User7785	642	2386	Latvia	Visual Basic
7786	Tweet7786	User7786	3506	311	Lithuania	Java
7787	Tweet7787	User7787	305	2042	Spain	C++
7788	Tweet7788	User7788	4557	3390	Czech Republic	C
7789	Tweet7789	User7789	4035	1728	Netherlands	Obj C
7790	Tweet7790	User7790	3799	4646	United Kingdom	Python
7791	Tweet7791	User7791	4582	628	Slovenia	PHP
7792	Tweet7792	User7792	3753	4174	Luxembourg	C
7793	Tweet7793	User7793	3821	1014	Poland	C#
7794	Tweet7794	User7794	996	4926	Germany	C
7795	Tweet7795	User7795	3392	1562	Lithuania	Scala
7796	Tweet7796	User7796	4895	2202	Slovakia	Visual Basic
7797	Tweet7797	User7797	2356	672	Germany	JavaScript
7798	Tweet7798	User7798	4048	771	Slovenia	Java
7799	Tweet7799	User7799	1818	1261	Malta	JavaScript
7800	Tweet7800	User7800	1418	3682	Slovakia	C
7801	Tweet7801	User7801	2832	587	Austria	C
7802	Tweet7802	User7802	4480	3453	Slovakia	Java
7803	Tweet7803	User7803	1494	1314	Estonia	Ruby
7804	Tweet7804	User7804	332	3733	France	Visual Basic
7805	Tweet7805	User7805	89	393	Belgium	C#
7806	Tweet7806	User7806	3595	3248	France	C
7807	Tweet7807	User7807	656	3066	Cyprus	Ruby
7808	Tweet7808	User7808	82	245	Bulgaria	Java
7809	Tweet7809	User7809	1088	840	Ireland	PHP
7810	Tweet7810	User7810	2870	866	Malta	Visual Basic
7811	Tweet7811	User7811	1216	1365	Cyprus	C++
7812	Tweet7812	User7812	3468	3904	Cyprus	Ruby
7813	Tweet7813	User7813	4038	2820	Spain	PHP
7814	Tweet7814	User7814	1898	2972	Bulgaria	PHP
7815	Tweet7815	User7815	3649	1119	Spain	Ruby
7816	Tweet7816	User7816	3880	2917	Cyprus	Python
7817	Tweet7817	User7817	3282	583	Finland	Ruby
7818	Tweet7818	User7818	2210	396	Slovenia	Java
7819	Tweet7819	User7819	4341	3013	Slovenia	Visual Basic
7820	Tweet7820	User7820	1308	1180	Greece	C++
7821	Tweet7821	User7821	19	216	Finland	PHP
7822	Tweet7822	User7822	4519	4525	Lithuania	JavaScript
7823	Tweet7823	User7823	1008	4002	Finland	JavaScript
7824	Tweet7824	User7824	3910	199	United Kingdom	C#
7825	Tweet7825	User7825	3361	2078	United Kingdom	Scala
7826	Tweet7826	User7826	1204	4199	Ireland	JavaScript
7827	Tweet7827	User7827	1308	3878	Slovakia	Python
7828	Tweet7828	User7828	733	444	Germany	Ruby
7829	Tweet7829	User7829	3120	2031	Slovenia	Python
7830	Tweet7830	User7830	3734	426	Belgium	Visual Basic
7831	Tweet7831	User7831	3651	397	Malta	Obj C
7832	Tweet7832	User7832	1241	1244	Malta	JavaScript
7833	Tweet7833	User7833	1051	3448	Estonia	C
7834	Tweet7834	User7834	3771	1220	Poland	Scala
7835	Tweet7835	User7835	2196	580	Belgium	Obj C
7836	Tweet7836	User7836	1165	3518	Luxembourg	PHP
7837	Tweet7837	User7837	1350	2634	France	C
7838	Tweet7838	User7838	2691	1149	Luxembourg	C++
7839	Tweet7839	User7839	2439	226	Czech Republic	C
7840	Tweet7840	User7840	3800	1895	Greece	C
7841	Tweet7841	User7841	1909	1313	Malta	PHP
7842	Tweet7842	User7842	3493	2277	Estonia	JavaScript
7843	Tweet7843	User7843	3377	1183	Greece	C#
7844	Tweet7844	User7844	4024	4201	Luxembourg	C++
7845	Tweet7845	User7845	3442	4915	Finland	Visual Basic
7846	Tweet7846	User7846	3446	3662	Sweden	C
7847	Tweet7847	User7847	4514	3999	Lithuania	Java
7848	Tweet7848	User7848	4981	3982	Malta	Python
7849	Tweet7849	User7849	3295	2769	Germany	Obj C
7850	Tweet7850	User7850	2237	4093	Ireland	JavaScript
7851	Tweet7851	User7851	807	2520	Sweden	C#
7852	Tweet7852	User7852	3581	939	Lithuania	Ruby
7853	Tweet7853	User7853	2842	2847	Romania	Visual Basic
7854	Tweet7854	User7854	2254	3744	Luxembourg	Visual Basic
7855	Tweet7855	User7855	4220	122	Ireland	C
7856	Tweet7856	User7856	3029	1000	Italy	Java
7857	Tweet7857	User7857	1528	1490	Luxembourg	Ruby
7858	Tweet7858	User7858	1621	1788	Croatia	Python
7859	Tweet7859	User7859	2505	4257	Lithuania	Python
7860	Tweet7860	User7860	76	1138	Luxembourg	JavaScript
7861	Tweet7861	User7861	1464	3911	Romania	PHP
7862	Tweet7862	User7862	336	720	Finland	Ruby
7863	Tweet7863	User7863	2996	1647	Romania	C
7864	Tweet7864	User7864	2932	4894	Romania	Scala
7865	Tweet7865	User7865	3175	1064	Estonia	Java
7866	Tweet7866	User7866	357	2342	Estonia	Ruby
7867	Tweet7867	User7867	4667	3804	Luxembourg	Scala
7868	Tweet7868	User7868	4030	2948	Belgium	JavaScript
7869	Tweet7869	User7869	127	1275	Czech Republic	Obj C
7870	Tweet7870	User7870	2442	2105	France	C#
7871	Tweet7871	User7871	4286	2316	Spain	Ruby
7872	Tweet7872	User7872	150	2145	Malta	PHP
7873	Tweet7873	User7873	4258	786	Croatia	JavaScript
7874	Tweet7874	User7874	1009	1001	Germany	C
7875	Tweet7875	User7875	1708	4023	Slovenia	C++
7876	Tweet7876	User7876	3330	4752	Belgium	Visual Basic
7877	Tweet7877	User7877	4132	2865	Luxembourg	Ruby
7878	Tweet7878	User7878	1697	2049	France	Python
7879	Tweet7879	User7879	521	1720	Slovakia	Visual Basic
7880	Tweet7880	User7880	1739	2550	Netherlands	Visual Basic
7881	Tweet7881	User7881	4095	429	Greece	C#
7882	Tweet7882	User7882	1835	2336	Greece	PHP
7883	Tweet7883	User7883	1138	4559	Luxembourg	C++
7884	Tweet7884	User7884	3782	428	Hungary	C#
7885	Tweet7885	User7885	784	3071	France	JavaScript
7886	Tweet7886	User7886	2429	1698	Romania	C++
7887	Tweet7887	User7887	2929	3749	Bulgaria	Obj C
7888	Tweet7888	User7888	4729	4495	Luxembourg	PHP
7889	Tweet7889	User7889	3708	4907	Cyprus	C++
7890	Tweet7890	User7890	2640	1642	Italy	C
7891	Tweet7891	User7891	2398	4915	Netherlands	Obj C
7892	Tweet7892	User7892	4370	4141	Greece	Obj C
7893	Tweet7893	User7893	1795	3417	Luxembourg	Visual Basic
7894	Tweet7894	User7894	2217	2144	Lithuania	PHP
7895	Tweet7895	User7895	4812	567	Estonia	C#
7896	Tweet7896	User7896	3328	601	Netherlands	C++
7897	Tweet7897	User7897	2733	3446	Croatia	Obj C
7898	Tweet7898	User7898	4308	857	United Kingdom	Visual Basic
7899	Tweet7899	User7899	489	240	Malta	PHP
7900	Tweet7900	User7900	1146	920	Portugal	Scala
7901	Tweet7901	User7901	96	2559	Bulgaria	Scala
7902	Tweet7902	User7902	3396	3034	Hungary	Scala
7903	Tweet7903	User7903	1189	1052	Finland	Scala
7904	Tweet7904	User7904	3152	3528	Lithuania	PHP
7905	Tweet7905	User7905	769	4978	Slovenia	Python
7906	Tweet7906	User7906	2527	2434	Spain	JavaScript
7907	Tweet7907	User7907	1907	402	Slovakia	C#
7908	Tweet7908	User7908	606	1301	Hungary	Visual Basic
7909	Tweet7909	User7909	2968	1755	Estonia	Java
7910	Tweet7910	User7910	195	637	Bulgaria	Scala
7911	Tweet7911	User7911	3120	2632	Croatia	Ruby
7912	Tweet7912	User7912	2507	59	Denmark	C#
7913	Tweet7913	User7913	1714	2322	Hungary	Java
7914	Tweet7914	User7914	1046	1375	Hungary	JavaScript
7915	Tweet7915	User7915	956	198	Latvia	JavaScript
7916	Tweet7916	User7916	3061	2216	Denmark	JavaScript
7917	Tweet7917	User7917	3728	4017	Slovakia	C
7918	Tweet7918	User7918	943	4183	Spain	JavaScript
7919	Tweet7919	User7919	2709	3810	Finland	Python
7920	Tweet7920	User7920	4032	4836	United Kingdom	C
7921	Tweet7921	User7921	54	3464	Sweden	C
7922	Tweet7922	User7922	4453	1452	Bulgaria	Ruby
7923	Tweet7923	User7923	983	1972	Finland	C++
7924	Tweet7924	User7924	4035	80	Belgium	JavaScript
7925	Tweet7925	User7925	2933	646	Greece	JavaScript
7926	Tweet7926	User7926	1816	2259	Estonia	C
7927	Tweet7927	User7927	4505	3232	Luxembourg	Ruby
7928	Tweet7928	User7928	4794	2766	Greece	Scala
7929	Tweet7929	User7929	1964	1637	Romania	Scala
7930	Tweet7930	User7930	4016	273	Czech Republic	Ruby
7931	Tweet7931	User7931	462	1104	Malta	JavaScript
7932	Tweet7932	User7932	517	2895	Hungary	Ruby
7933	Tweet7933	User7933	3734	250	Hungary	Visual Basic
7934	Tweet7934	User7934	145	1477	Finland	Scala
7935	Tweet7935	User7935	506	4317	Croatia	Scala
7936	Tweet7936	User7936	2171	1515	Czech Republic	Scala
7937	Tweet7937	User7937	3750	2632	Belgium	C
7938	Tweet7938	User7938	2105	4399	Luxembourg	Python
7939	Tweet7939	User7939	2470	4689	Luxembourg	Scala
7940	Tweet7940	User7940	815	540	Malta	Python
7941	Tweet7941	User7941	2196	3600	Netherlands	C
7942	Tweet7942	User7942	4970	2968	Greece	Java
7943	Tweet7943	User7943	4991	1544	Croatia	PHP
7944	Tweet7944	User7944	2992	3473	Greece	C
7945	Tweet7945	User7945	4628	1486	Bulgaria	Visual Basic
7946	Tweet7946	User7946	2965	752	Cyprus	C
7947	Tweet7947	User7947	981	2865	Germany	Python
7948	Tweet7948	User7948	4482	4254	Luxembourg	Ruby
7949	Tweet7949	User7949	2118	1041	Cyprus	C
7950	Tweet7950	User7950	1947	2725	Finland	C++
7951	Tweet7951	User7951	4011	1683	Hungary	C#
7952	Tweet7952	User7952	1387	2202	Hungary	C#
7953	Tweet7953	User7953	3921	2791	Germany	Ruby
7954	Tweet7954	User7954	1341	221	Croatia	Obj C
7955	Tweet7955	User7955	84	2350	Austria	Ruby
7956	Tweet7956	User7956	1894	4508	Belgium	C++
7957	Tweet7957	User7957	2559	2909	Netherlands	Java
7958	Tweet7958	User7958	2828	1338	United Kingdom	Java
7959	Tweet7959	User7959	4260	4638	Lithuania	Ruby
7960	Tweet7960	User7960	2827	4413	Slovakia	Scala
7961	Tweet7961	User7961	1928	4617	France	Scala
7962	Tweet7962	User7962	1900	4473	Slovenia	JavaScript
7963	Tweet7963	User7963	3060	1505	Luxembourg	Obj C
7964	Tweet7964	User7964	3427	2423	Spain	Java
7965	Tweet7965	User7965	4612	1169	Spain	PHP
7966	Tweet7966	User7966	617	2848	Finland	PHP
7967	Tweet7967	User7967	372	1341	Croatia	Scala
7968	Tweet7968	User7968	1313	2244	Belgium	C++
7969	Tweet7969	User7969	1795	4697	Hungary	Ruby
7970	Tweet7970	User7970	2073	813	Austria	Visual Basic
7971	Tweet7971	User7971	4660	1529	Poland	Obj C
7972	Tweet7972	User7972	3118	1185	Estonia	JavaScript
7973	Tweet7973	User7973	1165	2630	Denmark	Visual Basic
7974	Tweet7974	User7974	4162	3297	United Kingdom	C
7975	Tweet7975	User7975	840	2190	Malta	Obj C
7976	Tweet7976	User7976	3126	4786	Portugal	Python
7977	Tweet7977	User7977	3469	3577	Netherlands	Scala
7978	Tweet7978	User7978	1234	2496	Croatia	C++
7979	Tweet7979	User7979	2769	1943	Netherlands	Java
7980	Tweet7980	User7980	3094	4860	Poland	PHP
7981	Tweet7981	User7981	379	2678	United Kingdom	Visual Basic
7982	Tweet7982	User7982	3119	478	Belgium	Scala
7983	Tweet7983	User7983	1989	1891	France	Scala
7984	Tweet7984	User7984	1366	525	Malta	Java
7985	Tweet7985	User7985	261	2737	Romania	PHP
7986	Tweet7986	User7986	3463	3323	France	Java
7987	Tweet7987	User7987	1667	1818	United Kingdom	PHP
7988	Tweet7988	User7988	4103	677	Lithuania	Ruby
7989	Tweet7989	User7989	4539	3777	Slovakia	C
7990	Tweet7990	User7990	4685	4604	Croatia	Ruby
7991	Tweet7991	User7991	2938	1824	Portugal	Python
7992	Tweet7992	User7992	3611	878	Estonia	Scala
7993	Tweet7993	User7993	3757	2000	France	C++
7994	Tweet7994	User7994	187	3524	Bulgaria	JavaScript
7995	Tweet7995	User7995	2688	1953	Romania	Ruby
7996	Tweet7996	User7996	3220	2881	Lithuania	Ruby
7997	Tweet7997	User7997	2599	905	Sweden	C++
7998	Tweet7998	User7998	4340	1640	Luxembourg	C#
7999	Tweet7999	User7999	162	4244	Poland	Python
8000	Tweet8000	User8000	1380	4667	Luxembourg	PHP
8001	Tweet8001	User8001	690	4611	Sweden	C
8002	Tweet8002	User8002	585	3126	Croatia	Scala
8003	Tweet8003	User8003	4028	2004	Netherlands	C++
8004	Tweet8004	User8004	2634	760	Latvia	JavaScript
8005	Tweet8005	User8005	1106	4282	Sweden	Scala
8006	Tweet8006	User8006	4131	2594	Croatia	Scala
8007	Tweet8007	User8007	2847	1184	Finland	JavaScript
8008	Tweet8008	User8008	4450	2134	Italy	Obj C
8009	Tweet8009	User8009	3885	3689	Bulgaria	Java
8010	Tweet8010	User8010	110	3026	Latvia	Obj C
8011	Tweet8011	User8011	1654	4094	Hungary	Obj C
8012	Tweet8012	User8012	3191	300	Italy	Ruby
8013	Tweet8013	User8013	1208	3625	Austria	C#
8014	Tweet8014	User8014	3529	2251	Germany	C#
8015	Tweet8015	User8015	3207	2689	Italy	Java
8016	Tweet8016	User8016	3930	48	United Kingdom	Scala
8017	Tweet8017	User8017	3763	4566	Latvia	C++
8018	Tweet8018	User8018	4321	2839	Poland	Visual Basic
8019	Tweet8019	User8019	2546	2222	Croatia	C#
8020	Tweet8020	User8020	664	3488	Slovakia	PHP
8021	Tweet8021	User8021	1154	2255	Slovenia	C
8022	Tweet8022	User8022	654	2707	United Kingdom	Scala
8023	Tweet8023	User8023	3675	4689	Malta	Python
8024	Tweet8024	User8024	1044	1941	Bulgaria	C++
8025	Tweet8025	User8025	4506	4999	Italy	C
8026	Tweet8026	User8026	2537	813	Czech Republic	C#
8027	Tweet8027	User8027	990	2403	Lithuania	Visual Basic
8028	Tweet8028	User8028	3216	1391	Greece	C++
8029	Tweet8029	User8029	4314	2174	Croatia	Ruby
8030	Tweet8030	User8030	932	4450	Greece	Scala
8031	Tweet8031	User8031	901	2023	Greece	Python
8032	Tweet8032	User8032	1869	1230	Spain	Visual Basic
8033	Tweet8033	User8033	1657	4838	Italy	Python
8034	Tweet8034	User8034	4524	3781	Slovakia	C++
8035	Tweet8035	User8035	1830	1549	Germany	Python
8036	Tweet8036	User8036	1714	1839	Sweden	Obj C
8037	Tweet8037	User8037	3993	2704	Luxembourg	Visual Basic
8038	Tweet8038	User8038	1014	2330	Spain	Ruby
8039	Tweet8039	User8039	4613	4733	Italy	Obj C
8040	Tweet8040	User8040	2518	2182	Finland	Obj C
8041	Tweet8041	User8041	3330	1041	Hungary	Ruby
8042	Tweet8042	User8042	3914	3850	Netherlands	Obj C
8043	Tweet8043	User8043	4376	3357	Romania	C#
8044	Tweet8044	User8044	3092	3894	United Kingdom	Java
8045	Tweet8045	User8045	3266	2209	Romania	Python
8046	Tweet8046	User8046	3207	791	Finland	Java
8047	Tweet8047	User8047	4821	2144	Germany	Python
8048	Tweet8048	User8048	3096	790	Austria	C++
8049	Tweet8049	User8049	1850	1226	Belgium	JavaScript
8050	Tweet8050	User8050	633	4999	Czech Republic	Ruby
8051	Tweet8051	User8051	2994	673	Denmark	Java
8052	Tweet8052	User8052	2510	1525	Romania	Java
8053	Tweet8053	User8053	441	905	Spain	PHP
8054	Tweet8054	User8054	4079	4170	France	JavaScript
8055	Tweet8055	User8055	4413	3436	Lithuania	Python
8056	Tweet8056	User8056	4568	617	Portugal	JavaScript
8057	Tweet8057	User8057	4187	2031	Croatia	PHP
8058	Tweet8058	User8058	3776	1420	Germany	Scala
8059	Tweet8059	User8059	3636	3169	Romania	Obj C
8060	Tweet8060	User8060	1336	4461	Slovenia	Visual Basic
8061	Tweet8061	User8061	2002	3524	Luxembourg	Visual Basic
8062	Tweet8062	User8062	4071	2695	Finland	Obj C
8063	Tweet8063	User8063	45	785	Belgium	JavaScript
8064	Tweet8064	User8064	4307	3158	Belgium	PHP
8065	Tweet8065	User8065	2877	4442	Belgium	Java
8066	Tweet8066	User8066	687	3869	Netherlands	C++
8067	Tweet8067	User8067	2432	1664	Denmark	C++
8068	Tweet8068	User8068	4037	4701	United Kingdom	Obj C
8069	Tweet8069	User8069	1684	3781	Sweden	PHP
8070	Tweet8070	User8070	3424	2698	France	Visual Basic
8071	Tweet8071	User8071	1427	973	Belgium	JavaScript
8072	Tweet8072	User8072	143	4918	France	JavaScript
8073	Tweet8073	User8073	4365	3377	Luxembourg	Ruby
8074	Tweet8074	User8074	3677	1202	Romania	C++
8075	Tweet8075	User8075	4126	1594	Cyprus	Java
8076	Tweet8076	User8076	3038	1125	Hungary	C++
8077	Tweet8077	User8077	4976	3484	Croatia	Obj C
8078	Tweet8078	User8078	230	2467	Luxembourg	C++
8079	Tweet8079	User8079	1979	3183	Netherlands	JavaScript
8080	Tweet8080	User8080	1573	4305	United Kingdom	Visual Basic
8081	Tweet8081	User8081	3728	4555	Estonia	JavaScript
8082	Tweet8082	User8082	469	1901	Malta	JavaScript
8083	Tweet8083	User8083	4304	2607	France	Visual Basic
8084	Tweet8084	User8084	2065	11	Latvia	PHP
8085	Tweet8085	User8085	2291	1665	Luxembourg	C++
8086	Tweet8086	User8086	3292	4093	Slovakia	Scala
8087	Tweet8087	User8087	7	1545	Belgium	Scala
8088	Tweet8088	User8088	158	89	Slovenia	Ruby
8089	Tweet8089	User8089	976	3091	Czech Republic	Obj C
8090	Tweet8090	User8090	1991	4468	Netherlands	Scala
8091	Tweet8091	User8091	2153	818	Finland	PHP
8092	Tweet8092	User8092	1167	4365	Italy	C++
8093	Tweet8093	User8093	4957	1582	Lithuania	JavaScript
8094	Tweet8094	User8094	2990	2416	Malta	Visual Basic
8095	Tweet8095	User8095	3789	268	Cyprus	Obj C
8096	Tweet8096	User8096	3786	536	Bulgaria	Python
8097	Tweet8097	User8097	4716	1929	Latvia	C#
8098	Tweet8098	User8098	4918	1157	Denmark	Python
8099	Tweet8099	User8099	3668	1369	Greece	Scala
8100	Tweet8100	User8100	2305	1361	Luxembourg	Visual Basic
8101	Tweet8101	User8101	1021	2632	Belgium	JavaScript
8102	Tweet8102	User8102	4560	653	Cyprus	PHP
8103	Tweet8103	User8103	3581	4492	Denmark	Scala
8104	Tweet8104	User8104	3819	4515	United Kingdom	C++
8105	Tweet8105	User8105	1766	787	Hungary	C#
8106	Tweet8106	User8106	2469	539	Lithuania	Obj C
8107	Tweet8107	User8107	2335	1548	Greece	Scala
8108	Tweet8108	User8108	1932	45	Portugal	C
8109	Tweet8109	User8109	3029	2208	France	PHP
8110	Tweet8110	User8110	4776	208	Poland	Visual Basic
8111	Tweet8111	User8111	4502	4780	France	Obj C
8112	Tweet8112	User8112	4762	9	Germany	Java
8113	Tweet8113	User8113	1734	1208	Italy	Ruby
8114	Tweet8114	User8114	3565	4880	Denmark	C
8115	Tweet8115	User8115	2684	1341	Luxembourg	Scala
8116	Tweet8116	User8116	312	1134	United Kingdom	Java
8117	Tweet8117	User8117	2067	583	France	C
8118	Tweet8118	User8118	3790	623	Austria	Ruby
8119	Tweet8119	User8119	2440	3465	Slovenia	C
8120	Tweet8120	User8120	1572	2553	Denmark	Python
8121	Tweet8121	User8121	3756	4231	Bulgaria	Ruby
8122	Tweet8122	User8122	2777	4424	Spain	C
8123	Tweet8123	User8123	751	560	Czech Republic	Java
8124	Tweet8124	User8124	1647	3099	Spain	Visual Basic
8125	Tweet8125	User8125	4521	725	Spain	PHP
8126	Tweet8126	User8126	4373	2382	Romania	JavaScript
8127	Tweet8127	User8127	726	691	Netherlands	Java
8128	Tweet8128	User8128	1636	4994	Finland	Visual Basic
8129	Tweet8129	User8129	1581	4637	France	Java
8130	Tweet8130	User8130	1959	3439	Greece	C
8131	Tweet8131	User8131	2560	3120	Italy	C++
8132	Tweet8132	User8132	1798	1392	France	Obj C
8133	Tweet8133	User8133	2157	3816	Lithuania	C++
8134	Tweet8134	User8134	2230	4045	Netherlands	Python
8135	Tweet8135	User8135	2416	3217	Lithuania	Python
8136	Tweet8136	User8136	3499	1797	Hungary	C#
8137	Tweet8137	User8137	3519	2637	Greece	C#
8138	Tweet8138	User8138	2753	2619	Lithuania	C
8139	Tweet8139	User8139	4619	2771	United Kingdom	Ruby
8140	Tweet8140	User8140	2202	3196	Finland	Scala
8141	Tweet8141	User8141	3276	2368	Denmark	C++
8142	Tweet8142	User8142	4083	2220	Czech Republic	Scala
8143	Tweet8143	User8143	3333	4757	Germany	PHP
8144	Tweet8144	User8144	4994	2134	Slovakia	C#
8145	Tweet8145	User8145	2840	1328	Slovakia	C
8146	Tweet8146	User8146	4329	3013	United Kingdom	Obj C
8147	Tweet8147	User8147	4640	2714	Hungary	JavaScript
8148	Tweet8148	User8148	4566	4056	Latvia	PHP
8149	Tweet8149	User8149	2600	2464	United Kingdom	Scala
8150	Tweet8150	User8150	1572	414	Spain	C
8151	Tweet8151	User8151	879	1139	Netherlands	PHP
8152	Tweet8152	User8152	2278	1646	Malta	PHP
8153	Tweet8153	User8153	3000	2469	Estonia	C++
8154	Tweet8154	User8154	4218	4674	Poland	C
8155	Tweet8155	User8155	2883	4469	Austria	Visual Basic
8156	Tweet8156	User8156	317	1069	Ireland	C++
8157	Tweet8157	User8157	3323	514	Cyprus	JavaScript
8158	Tweet8158	User8158	1945	513	Austria	JavaScript
8159	Tweet8159	User8159	4909	823	Netherlands	JavaScript
8160	Tweet8160	User8160	3902	1928	Portugal	Scala
8161	Tweet8161	User8161	4371	3355	Estonia	PHP
8162	Tweet8162	User8162	3563	4391	Estonia	C
8163	Tweet8163	User8163	1102	94	Slovenia	Obj C
8164	Tweet8164	User8164	4599	1321	Cyprus	C
8165	Tweet8165	User8165	1644	168	Luxembourg	Java
8166	Tweet8166	User8166	56	4749	United Kingdom	Ruby
8167	Tweet8167	User8167	4459	1275	Netherlands	C++
8168	Tweet8168	User8168	4967	171	Bulgaria	JavaScript
8169	Tweet8169	User8169	1176	3434	Malta	C
8170	Tweet8170	User8170	887	996	Germany	C++
8171	Tweet8171	User8171	533	2482	Lithuania	JavaScript
8172	Tweet8172	User8172	2098	2736	Portugal	Scala
8173	Tweet8173	User8173	2982	2732	United Kingdom	Visual Basic
8174	Tweet8174	User8174	1557	1453	Slovenia	JavaScript
8175	Tweet8175	User8175	922	3992	Cyprus	JavaScript
8176	Tweet8176	User8176	4162	4255	Sweden	Scala
8177	Tweet8177	User8177	4812	4983	Lithuania	C++
8178	Tweet8178	User8178	3067	3998	United Kingdom	C++
8179	Tweet8179	User8179	2972	1962	Portugal	Ruby
8180	Tweet8180	User8180	4031	2341	Czech Republic	Ruby
8181	Tweet8181	User8181	1903	496	Cyprus	PHP
8182	Tweet8182	User8182	3734	664	Ireland	C#
8183	Tweet8183	User8183	2341	2414	Slovenia	PHP
8184	Tweet8184	User8184	99	2666	Finland	Ruby
8185	Tweet8185	User8185	2473	461	United Kingdom	C#
8186	Tweet8186	User8186	144	4602	Netherlands	Java
8187	Tweet8187	User8187	706	4509	United Kingdom	Obj C
8188	Tweet8188	User8188	1849	1321	United Kingdom	Ruby
8189	Tweet8189	User8189	3386	1059	Ireland	PHP
8190	Tweet8190	User8190	1253	4194	Malta	C
8191	Tweet8191	User8191	585	1050	Belgium	Visual Basic
8192	Tweet8192	User8192	3243	1428	Hungary	Python
8193	Tweet8193	User8193	4010	4517	Cyprus	C++
8194	Tweet8194	User8194	4009	493	Portugal	Obj C
8195	Tweet8195	User8195	1258	77	Austria	Obj C
8196	Tweet8196	User8196	1183	953	Slovenia	Obj C
8197	Tweet8197	User8197	2123	3419	Denmark	Ruby
8198	Tweet8198	User8198	4598	1148	Cyprus	Scala
8199	Tweet8199	User8199	2793	3177	Lithuania	Scala
8200	Tweet8200	User8200	4019	3401	Finland	Python
8201	Tweet8201	User8201	1575	3650	Sweden	C
8202	Tweet8202	User8202	0	458	Spain	C#
8203	Tweet8203	User8203	3991	1163	Estonia	Python
8204	Tweet8204	User8204	139	3307	Austria	C#
8205	Tweet8205	User8205	959	971	Latvia	Python
8206	Tweet8206	User8206	791	2260	Lithuania	C#
8207	Tweet8207	User8207	2141	2191	Ireland	Python
8208	Tweet8208	User8208	3147	1625	Belgium	PHP
8209	Tweet8209	User8209	962	1689	Belgium	C#
8210	Tweet8210	User8210	3077	3857	Netherlands	Python
8211	Tweet8211	User8211	3080	3032	Denmark	Scala
8212	Tweet8212	User8212	4931	1070	Estonia	PHP
8213	Tweet8213	User8213	4104	4149	Ireland	JavaScript
8214	Tweet8214	User8214	2545	4894	Slovakia	Visual Basic
8215	Tweet8215	User8215	3799	637	France	PHP
8216	Tweet8216	User8216	3047	3394	Portugal	C++
8217	Tweet8217	User8217	146	1970	Hungary	Scala
8218	Tweet8218	User8218	2087	614	Poland	PHP
8219	Tweet8219	User8219	3542	2381	Malta	Python
8220	Tweet8220	User8220	1228	962	Portugal	Java
8221	Tweet8221	User8221	765	1058	Greece	Obj C
8222	Tweet8222	User8222	3402	3897	Portugal	Visual Basic
8223	Tweet8223	User8223	3972	107	United Kingdom	Scala
8224	Tweet8224	User8224	591	2404	Netherlands	C#
8225	Tweet8225	User8225	1485	4816	Greece	Visual Basic
8226	Tweet8226	User8226	1973	3716	Italy	C
8227	Tweet8227	User8227	327	2611	Luxembourg	Visual Basic
8228	Tweet8228	User8228	790	1225	Finland	Java
8229	Tweet8229	User8229	4929	3738	Sweden	Scala
8230	Tweet8230	User8230	3493	2217	Lithuania	Java
8231	Tweet8231	User8231	2193	4234	Spain	Java
8232	Tweet8232	User8232	4964	3157	Portugal	Python
8233	Tweet8233	User8233	627	1867	Austria	Java
8234	Tweet8234	User8234	2596	2124	Bulgaria	PHP
8235	Tweet8235	User8235	1309	2292	Poland	C#
8236	Tweet8236	User8236	2821	1361	Cyprus	Python
8237	Tweet8237	User8237	3460	2357	Portugal	Ruby
8238	Tweet8238	User8238	2796	2626	Hungary	Python
8239	Tweet8239	User8239	4645	1857	Czech Republic	PHP
8240	Tweet8240	User8240	1838	4197	Portugal	C
8241	Tweet8241	User8241	2730	4495	Romania	Scala
8242	Tweet8242	User8242	797	1869	France	Obj C
8243	Tweet8243	User8243	1281	3497	France	Obj C
8244	Tweet8244	User8244	3351	1571	Ireland	C#
8245	Tweet8245	User8245	3983	2203	Italy	Java
8246	Tweet8246	User8246	3025	4825	Croatia	Java
8247	Tweet8247	User8247	176	1918	Finland	C#
8248	Tweet8248	User8248	3264	302	Romania	PHP
8249	Tweet8249	User8249	2904	3687	Austria	Java
8250	Tweet8250	User8250	1095	2786	Estonia	Obj C
8251	Tweet8251	User8251	3950	3265	Slovenia	C#
8252	Tweet8252	User8252	2219	1657	Hungary	C
8253	Tweet8253	User8253	4179	2383	Finland	Java
8254	Tweet8254	User8254	4464	3864	Cyprus	C#
8255	Tweet8255	User8255	1569	2778	Slovakia	C#
8256	Tweet8256	User8256	537	3136	France	C++
8257	Tweet8257	User8257	3144	4779	France	C
8258	Tweet8258	User8258	3433	2894	Malta	Python
8259	Tweet8259	User8259	4691	1181	Portugal	C#
8260	Tweet8260	User8260	4163	3733	Germany	PHP
8261	Tweet8261	User8261	2014	3490	Slovakia	C#
8262	Tweet8262	User8262	2784	2077	Sweden	JavaScript
8263	Tweet8263	User8263	1875	561	Austria	Visual Basic
8264	Tweet8264	User8264	3432	1046	Poland	C
8265	Tweet8265	User8265	631	627	Belgium	Obj C
8266	Tweet8266	User8266	3871	3657	Netherlands	Java
8267	Tweet8267	User8267	3003	2431	Spain	Python
8268	Tweet8268	User8268	408	4805	Croatia	Visual Basic
8269	Tweet8269	User8269	1921	1336	Austria	C
8270	Tweet8270	User8270	2638	2266	Slovenia	Visual Basic
8271	Tweet8271	User8271	2375	3166	Finland	Scala
8272	Tweet8272	User8272	2629	45	United Kingdom	PHP
8273	Tweet8273	User8273	1802	812	Finland	Python
8274	Tweet8274	User8274	465	4940	Finland	PHP
8275	Tweet8275	User8275	953	1389	Netherlands	Obj C
8276	Tweet8276	User8276	3992	1233	France	JavaScript
8277	Tweet8277	User8277	34	1754	Malta	Python
8278	Tweet8278	User8278	290	2577	Sweden	Java
8279	Tweet8279	User8279	2819	4919	Slovenia	Obj C
8280	Tweet8280	User8280	3057	904	Cyprus	Java
8281	Tweet8281	User8281	537	1863	Austria	PHP
8282	Tweet8282	User8282	4044	4701	Austria	C#
8283	Tweet8283	User8283	4036	2191	Spain	Java
8284	Tweet8284	User8284	1757	4549	Malta	Visual Basic
8285	Tweet8285	User8285	1539	645	Belgium	C
8286	Tweet8286	User8286	4910	1625	Poland	JavaScript
8287	Tweet8287	User8287	4565	2657	Luxembourg	Scala
8288	Tweet8288	User8288	1992	3138	Ireland	JavaScript
8289	Tweet8289	User8289	2670	3639	Belgium	Scala
8290	Tweet8290	User8290	4392	1865	Austria	PHP
8291	Tweet8291	User8291	4382	959	Italy	Java
8292	Tweet8292	User8292	3822	2293	Hungary	Python
8293	Tweet8293	User8293	1837	2386	Malta	C#
8294	Tweet8294	User8294	928	1014	Greece	JavaScript
8295	Tweet8295	User8295	3785	3357	Spain	Ruby
8296	Tweet8296	User8296	4495	425	Belgium	Python
8297	Tweet8297	User8297	2499	4418	United Kingdom	Ruby
8298	Tweet8298	User8298	2406	1884	Romania	Java
8299	Tweet8299	User8299	2665	4879	United Kingdom	Ruby
8300	Tweet8300	User8300	1480	1518	Finland	Ruby
8301	Tweet8301	User8301	4564	2075	Finland	Python
8302	Tweet8302	User8302	4842	3271	Spain	C++
8303	Tweet8303	User8303	4401	3533	Estonia	Visual Basic
8304	Tweet8304	User8304	4306	1410	Austria	C++
8305	Tweet8305	User8305	3845	566	Czech Republic	Scala
8306	Tweet8306	User8306	1421	3413	Lithuania	C
8307	Tweet8307	User8307	1604	578	Finland	C#
8308	Tweet8308	User8308	1615	4118	Latvia	C
8309	Tweet8309	User8309	3069	1434	Portugal	Obj C
8310	Tweet8310	User8310	1228	1217	Malta	Visual Basic
8311	Tweet8311	User8311	1074	2720	Denmark	Scala
8312	Tweet8312	User8312	1536	107	Denmark	Visual Basic
8313	Tweet8313	User8313	1791	880	Austria	C++
8314	Tweet8314	User8314	2067	177	Netherlands	Java
8315	Tweet8315	User8315	246	4990	Cyprus	Python
8316	Tweet8316	User8316	3890	4758	Italy	Scala
8317	Tweet8317	User8317	3042	351	Finland	Visual Basic
8318	Tweet8318	User8318	4010	1060	Poland	C
8319	Tweet8319	User8319	944	3879	Portugal	Visual Basic
8320	Tweet8320	User8320	4245	1902	Cyprus	Python
8321	Tweet8321	User8321	2323	2388	Belgium	JavaScript
8322	Tweet8322	User8322	806	3033	Ireland	Java
8323	Tweet8323	User8323	3751	3212	Croatia	PHP
8324	Tweet8324	User8324	4210	1698	Finland	Visual Basic
8325	Tweet8325	User8325	2501	4157	Croatia	Scala
8326	Tweet8326	User8326	4626	1981	Germany	Java
8327	Tweet8327	User8327	510	1982	Finland	C#
8328	Tweet8328	User8328	4536	755	United Kingdom	C
8329	Tweet8329	User8329	1977	4927	Denmark	Visual Basic
8330	Tweet8330	User8330	4643	4367	Czech Republic	PHP
8331	Tweet8331	User8331	8	3294	Poland	PHP
8332	Tweet8332	User8332	4512	2400	Luxembourg	C
8333	Tweet8333	User8333	4022	1136	Denmark	C
8334	Tweet8334	User8334	128	1770	Slovenia	Ruby
8335	Tweet8335	User8335	2960	335	Slovakia	Obj C
8336	Tweet8336	User8336	1940	85	Finland	JavaScript
8337	Tweet8337	User8337	2173	2326	Romania	Visual Basic
8338	Tweet8338	User8338	2597	3593	Germany	C#
8339	Tweet8339	User8339	749	42	Luxembourg	Python
8340	Tweet8340	User8340	3137	1712	Bulgaria	Visual Basic
8341	Tweet8341	User8341	1221	2747	Malta	C#
8342	Tweet8342	User8342	579	2752	United Kingdom	Obj C
8343	Tweet8343	User8343	3035	2908	Belgium	Java
8344	Tweet8344	User8344	1140	2966	Bulgaria	Python
8345	Tweet8345	User8345	4459	4145	Greece	C++
8346	Tweet8346	User8346	4936	3433	Poland	Visual Basic
8347	Tweet8347	User8347	4663	3352	Spain	Ruby
8348	Tweet8348	User8348	1391	64	Portugal	Python
8349	Tweet8349	User8349	3711	4933	Portugal	Java
8350	Tweet8350	User8350	4021	4220	Lithuania	Obj C
8351	Tweet8351	User8351	137	4832	Finland	Python
8352	Tweet8352	User8352	3649	4162	Croatia	JavaScript
8353	Tweet8353	User8353	2484	199	Slovakia	PHP
8354	Tweet8354	User8354	4133	285	Czech Republic	Visual Basic
8355	Tweet8355	User8355	21	2883	France	Ruby
8356	Tweet8356	User8356	3788	1723	Portugal	PHP
8357	Tweet8357	User8357	349	4584	France	Obj C
8358	Tweet8358	User8358	4577	2831	Malta	Java
8359	Tweet8359	User8359	2306	471	Croatia	Visual Basic
8360	Tweet8360	User8360	1107	3169	Lithuania	Visual Basic
8361	Tweet8361	User8361	4901	44	Austria	PHP
8362	Tweet8362	User8362	4248	1337	Denmark	C++
8363	Tweet8363	User8363	171	4220	Belgium	C++
8364	Tweet8364	User8364	536	2463	Romania	C
8365	Tweet8365	User8365	1162	2889	Finland	Visual Basic
8366	Tweet8366	User8366	2174	4846	Lithuania	Visual Basic
8367	Tweet8367	User8367	121	641	Ireland	C
8368	Tweet8368	User8368	4032	2455	Estonia	C#
8369	Tweet8369	User8369	1863	4831	Ireland	PHP
8370	Tweet8370	User8370	1763	1316	Slovenia	Scala
8371	Tweet8371	User8371	2600	3659	Belgium	Java
8372	Tweet8372	User8372	4660	4509	Belgium	C
8373	Tweet8373	User8373	4260	2626	Poland	Python
8374	Tweet8374	User8374	4453	1406	Lithuania	Ruby
8375	Tweet8375	User8375	1233	2670	Sweden	Obj C
8376	Tweet8376	User8376	361	479	Romania	C#
8377	Tweet8377	User8377	1525	4939	Czech Republic	C++
8378	Tweet8378	User8378	2554	3769	Spain	C
8379	Tweet8379	User8379	4247	4219	Sweden	Python
8380	Tweet8380	User8380	4416	1329	Ireland	C++
8381	Tweet8381	User8381	3688	3030	Belgium	Java
8382	Tweet8382	User8382	1458	4766	Portugal	Ruby
8383	Tweet8383	User8383	2312	2769	United Kingdom	Obj C
8384	Tweet8384	User8384	3827	3368	Denmark	Visual Basic
8385	Tweet8385	User8385	2685	2106	Croatia	C#
8386	Tweet8386	User8386	3003	409	Estonia	Java
8387	Tweet8387	User8387	4331	4020	Finland	C++
8388	Tweet8388	User8388	2520	450	Malta	Ruby
8389	Tweet8389	User8389	3503	1844	Romania	Python
8390	Tweet8390	User8390	21	2057	Netherlands	Visual Basic
8391	Tweet8391	User8391	2611	3761	Greece	C#
8392	Tweet8392	User8392	2042	4762	Bulgaria	PHP
8393	Tweet8393	User8393	3826	3877	Sweden	C++
8394	Tweet8394	User8394	1418	2242	Estonia	C
8395	Tweet8395	User8395	2586	4220	Netherlands	PHP
8396	Tweet8396	User8396	1459	4509	Cyprus	Python
8397	Tweet8397	User8397	2947	2523	Bulgaria	Java
8398	Tweet8398	User8398	4202	2422	Slovenia	Obj C
8399	Tweet8399	User8399	1013	1701	Ireland	Visual Basic
8400	Tweet8400	User8400	1184	2608	Ireland	Scala
8401	Tweet8401	User8401	4113	376	Slovakia	Scala
8402	Tweet8402	User8402	27	1309	Slovakia	Obj C
8403	Tweet8403	User8403	150	2162	Slovakia	JavaScript
8404	Tweet8404	User8404	3445	3367	Spain	Java
8405	Tweet8405	User8405	2633	3497	France	Python
8406	Tweet8406	User8406	4589	892	Sweden	C
8407	Tweet8407	User8407	146	854	Slovenia	PHP
8408	Tweet8408	User8408	3856	4607	Spain	JavaScript
8409	Tweet8409	User8409	4921	1638	Poland	Ruby
8410	Tweet8410	User8410	4783	2807	Malta	Java
8411	Tweet8411	User8411	4725	3522	Hungary	Ruby
8412	Tweet8412	User8412	3641	1965	United Kingdom	Ruby
8413	Tweet8413	User8413	1394	3883	Ireland	Scala
8414	Tweet8414	User8414	2045	182	Slovakia	Visual Basic
8415	Tweet8415	User8415	2497	1397	Denmark	C#
8416	Tweet8416	User8416	3379	3902	Czech Republic	JavaScript
8417	Tweet8417	User8417	4099	4866	United Kingdom	Obj C
8418	Tweet8418	User8418	2621	4613	Sweden	C
8419	Tweet8419	User8419	2807	1398	Italy	C++
8420	Tweet8420	User8420	373	8	Spain	Ruby
8421	Tweet8421	User8421	3529	2705	Hungary	PHP
8422	Tweet8422	User8422	4267	1005	Romania	Ruby
8423	Tweet8423	User8423	587	4544	Czech Republic	Ruby
8424	Tweet8424	User8424	2556	3524	France	Java
8425	Tweet8425	User8425	4448	3402	Finland	Visual Basic
8426	Tweet8426	User8426	3353	845	Romania	C++
8427	Tweet8427	User8427	4254	4511	Finland	Ruby
8428	Tweet8428	User8428	2384	4185	Netherlands	Python
8429	Tweet8429	User8429	3663	4899	Portugal	Visual Basic
8430	Tweet8430	User8430	3572	2688	United Kingdom	Java
8431	Tweet8431	User8431	2321	2189	Ireland	JavaScript
8432	Tweet8432	User8432	4974	4186	Lithuania	PHP
8433	Tweet8433	User8433	1199	2546	Austria	Ruby
8434	Tweet8434	User8434	3604	2487	Croatia	Python
8435	Tweet8435	User8435	2660	1998	Italy	JavaScript
8436	Tweet8436	User8436	874	2164	Slovakia	C
8437	Tweet8437	User8437	2501	126	United Kingdom	Java
8438	Tweet8438	User8438	3233	2499	Denmark	C
8439	Tweet8439	User8439	2449	120	France	Python
8440	Tweet8440	User8440	4804	4767	Greece	C#
8441	Tweet8441	User8441	2841	1082	Luxembourg	Visual Basic
8442	Tweet8442	User8442	665	1299	Portugal	JavaScript
8443	Tweet8443	User8443	2613	470	Sweden	Scala
8444	Tweet8444	User8444	736	1542	Slovenia	Visual Basic
8445	Tweet8445	User8445	4622	238	Lithuania	Java
8446	Tweet8446	User8446	1889	3726	Italy	Python
8447	Tweet8447	User8447	2767	3295	Slovakia	Visual Basic
8448	Tweet8448	User8448	2647	4177	Spain	Scala
8449	Tweet8449	User8449	3158	2085	Hungary	PHP
8450	Tweet8450	User8450	4879	4769	Poland	JavaScript
8451	Tweet8451	User8451	837	965	Malta	Obj C
8452	Tweet8452	User8452	587	110	United Kingdom	C#
8453	Tweet8453	User8453	649	1171	Italy	C
8454	Tweet8454	User8454	1470	1431	Italy	C
8455	Tweet8455	User8455	4773	4348	United Kingdom	Ruby
8456	Tweet8456	User8456	1804	3301	Poland	C++
8457	Tweet8457	User8457	2800	4720	Bulgaria	C++
8458	Tweet8458	User8458	814	4012	Denmark	C
8459	Tweet8459	User8459	2207	4705	Denmark	Python
8460	Tweet8460	User8460	2992	19	Lithuania	Scala
8461	Tweet8461	User8461	4407	2257	Belgium	JavaScript
8462	Tweet8462	User8462	2955	2741	Lithuania	Python
8463	Tweet8463	User8463	2686	1668	Slovakia	Java
8464	Tweet8464	User8464	1361	3174	Sweden	Scala
8465	Tweet8465	User8465	1852	998	Slovakia	Obj C
8466	Tweet8466	User8466	2041	3585	Czech Republic	C#
8467	Tweet8467	User8467	4919	274	Poland	JavaScript
8468	Tweet8468	User8468	751	3861	United Kingdom	Scala
8469	Tweet8469	User8469	1603	1482	France	Java
8470	Tweet8470	User8470	3604	4650	Finland	Java
8471	Tweet8471	User8471	3286	1050	Malta	JavaScript
8472	Tweet8472	User8472	1243	30	Sweden	Ruby
8473	Tweet8473	User8473	3849	2905	Latvia	Ruby
8474	Tweet8474	User8474	1287	3703	Slovenia	Ruby
8475	Tweet8475	User8475	1947	1365	Croatia	Obj C
8476	Tweet8476	User8476	4481	3433	Denmark	C++
8477	Tweet8477	User8477	3121	4132	Sweden	C
8478	Tweet8478	User8478	4098	1890	Germany	Visual Basic
8479	Tweet8479	User8479	230	1808	Romania	C
8480	Tweet8480	User8480	1057	883	Poland	C#
8481	Tweet8481	User8481	2454	1968	Greece	Visual Basic
8482	Tweet8482	User8482	1015	4428	Denmark	PHP
8483	Tweet8483	User8483	4679	1987	Latvia	C
8484	Tweet8484	User8484	4125	4599	France	Obj C
8485	Tweet8485	User8485	3136	4253	Netherlands	Obj C
8486	Tweet8486	User8486	1634	1056	Latvia	C++
8487	Tweet8487	User8487	816	2721	Spain	JavaScript
8488	Tweet8488	User8488	4403	107	Netherlands	Obj C
8489	Tweet8489	User8489	3912	895	Austria	Java
8490	Tweet8490	User8490	2777	3998	Austria	Visual Basic
8491	Tweet8491	User8491	2758	2391	Cyprus	PHP
8492	Tweet8492	User8492	316	2847	Romania	Visual Basic
8493	Tweet8493	User8493	465	1546	Romania	Python
8494	Tweet8494	User8494	4764	930	Romania	Visual Basic
8495	Tweet8495	User8495	3992	4460	Lithuania	PHP
8496	Tweet8496	User8496	4000	963	Spain	Obj C
8497	Tweet8497	User8497	270	3200	Croatia	C
8498	Tweet8498	User8498	4207	4673	Romania	Scala
8499	Tweet8499	User8499	1965	4189	Germany	Scala
8500	Tweet8500	User8500	1057	1142	Slovakia	C#
8501	Tweet8501	User8501	2329	1351	Slovakia	Java
8502	Tweet8502	User8502	4361	1242	Bulgaria	Visual Basic
8503	Tweet8503	User8503	4384	201	Romania	Python
8504	Tweet8504	User8504	405	3595	Czech Republic	PHP
8505	Tweet8505	User8505	4881	3834	France	C#
8506	Tweet8506	User8506	281	4864	United Kingdom	Python
8507	Tweet8507	User8507	276	2879	Hungary	JavaScript
8508	Tweet8508	User8508	4159	4720	Lithuania	Visual Basic
8509	Tweet8509	User8509	3640	3608	Czech Republic	Visual Basic
8510	Tweet8510	User8510	1251	2224	Finland	Visual Basic
8511	Tweet8511	User8511	3687	1213	Luxembourg	Java
8512	Tweet8512	User8512	971	1550	Cyprus	Scala
8513	Tweet8513	User8513	3035	4701	Slovenia	Visual Basic
8514	Tweet8514	User8514	126	2008	Sweden	Obj C
8515	Tweet8515	User8515	3956	4621	Portugal	Obj C
8516	Tweet8516	User8516	2467	4745	Ireland	PHP
8517	Tweet8517	User8517	3343	3614	Austria	Obj C
8518	Tweet8518	User8518	3086	452	Denmark	Java
8519	Tweet8519	User8519	4052	650	Spain	PHP
8520	Tweet8520	User8520	3853	4820	Finland	Obj C
8521	Tweet8521	User8521	1391	3304	Romania	Obj C
8522	Tweet8522	User8522	915	2243	Estonia	Obj C
8523	Tweet8523	User8523	21	204	Lithuania	Obj C
8524	Tweet8524	User8524	2252	4418	Spain	Java
8525	Tweet8525	User8525	2063	1276	Spain	Python
8526	Tweet8526	User8526	628	28	United Kingdom	C#
8527	Tweet8527	User8527	839	1731	Greece	JavaScript
8528	Tweet8528	User8528	3451	2112	Estonia	Obj C
8529	Tweet8529	User8529	1743	1085	Estonia	PHP
8530	Tweet8530	User8530	2650	1469	Poland	Java
8531	Tweet8531	User8531	4472	105	Luxembourg	Python
8532	Tweet8532	User8532	4734	1947	Slovakia	C
8533	Tweet8533	User8533	3324	2073	Latvia	JavaScript
8534	Tweet8534	User8534	3773	1859	Finland	Python
8535	Tweet8535	User8535	4789	1960	Netherlands	Scala
8536	Tweet8536	User8536	2750	2866	Croatia	Java
8537	Tweet8537	User8537	2191	3627	Portugal	Java
8538	Tweet8538	User8538	4734	2342	Finland	Obj C
8539	Tweet8539	User8539	2014	3050	Ireland	Python
8540	Tweet8540	User8540	467	1667	Italy	JavaScript
8541	Tweet8541	User8541	9	3856	Austria	PHP
8542	Tweet8542	User8542	1200	1076	Germany	C++
8543	Tweet8543	User8543	990	270	Luxembourg	C
8544	Tweet8544	User8544	1802	2791	Cyprus	Visual Basic
8545	Tweet8545	User8545	2838	3472	Poland	Ruby
8546	Tweet8546	User8546	1765	3395	Portugal	C++
8547	Tweet8547	User8547	4222	435	Sweden	C#
8548	Tweet8548	User8548	1633	2386	Portugal	C#
8549	Tweet8549	User8549	3999	2701	Germany	C
8550	Tweet8550	User8550	684	4664	Estonia	PHP
8551	Tweet8551	User8551	3131	2386	Netherlands	Python
8552	Tweet8552	User8552	1848	4214	Croatia	C++
8553	Tweet8553	User8553	971	972	Bulgaria	C
8554	Tweet8554	User8554	2873	3793	Ireland	Scala
8555	Tweet8555	User8555	2646	4707	Estonia	C++
8556	Tweet8556	User8556	4326	3275	Finland	C#
8557	Tweet8557	User8557	4261	4998	Slovakia	Java
8558	Tweet8558	User8558	2214	2428	Austria	PHP
8559	Tweet8559	User8559	4985	276	Belgium	Scala
8560	Tweet8560	User8560	1555	71	Luxembourg	PHP
8561	Tweet8561	User8561	4932	4790	Ireland	C
8562	Tweet8562	User8562	394	1242	Latvia	Ruby
8563	Tweet8563	User8563	2090	87	Portugal	Java
8564	Tweet8564	User8564	820	1427	Portugal	JavaScript
8565	Tweet8565	User8565	335	1174	Italy	C++
8566	Tweet8566	User8566	1456	2551	Netherlands	Ruby
8567	Tweet8567	User8567	2741	2833	Lithuania	Visual Basic
8568	Tweet8568	User8568	2437	370	Bulgaria	C++
8569	Tweet8569	User8569	2648	3334	Greece	Scala
8570	Tweet8570	User8570	4454	4407	Italy	C#
8571	Tweet8571	User8571	1802	1000	Denmark	Scala
8572	Tweet8572	User8572	35	2109	Poland	Ruby
8573	Tweet8573	User8573	2831	1649	Cyprus	Java
8574	Tweet8574	User8574	3634	834	Slovenia	Scala
8575	Tweet8575	User8575	916	4460	Estonia	Obj C
8576	Tweet8576	User8576	3944	2399	Austria	Python
8577	Tweet8577	User8577	3032	2876	France	Python
8578	Tweet8578	User8578	943	1174	Denmark	Visual Basic
8579	Tweet8579	User8579	4641	3813	Poland	Ruby
8580	Tweet8580	User8580	1510	2217	Malta	Python
8581	Tweet8581	User8581	423	3868	Germany	C
8582	Tweet8582	User8582	665	4083	Croatia	Java
8583	Tweet8583	User8583	1164	2293	Greece	PHP
8584	Tweet8584	User8584	3859	3761	Denmark	Java
8585	Tweet8585	User8585	3360	1607	Spain	Python
8586	Tweet8586	User8586	4396	4016	Denmark	PHP
8587	Tweet8587	User8587	1622	2803	Hungary	C++
8588	Tweet8588	User8588	1721	386	United Kingdom	C
8589	Tweet8589	User8589	160	1527	Greece	C#
8590	Tweet8590	User8590	1094	4647	Finland	C
8591	Tweet8591	User8591	2784	273	Finland	Scala
8592	Tweet8592	User8592	798	2636	Slovenia	Visual Basic
8593	Tweet8593	User8593	3800	2149	Denmark	C++
8594	Tweet8594	User8594	1989	347	Czech Republic	C++
8595	Tweet8595	User8595	4359	2204	United Kingdom	C
8596	Tweet8596	User8596	683	795	Spain	Java
8597	Tweet8597	User8597	1354	1771	United Kingdom	Visual Basic
8598	Tweet8598	User8598	4514	3442	Finland	C++
8599	Tweet8599	User8599	4091	3428	Sweden	Java
8600	Tweet8600	User8600	2623	4592	Spain	PHP
8601	Tweet8601	User8601	1361	242	France	Visual Basic
8602	Tweet8602	User8602	3738	4669	Belgium	C#
8603	Tweet8603	User8603	4785	1232	Hungary	Ruby
8604	Tweet8604	User8604	4206	4564	Romania	C++
8605	Tweet8605	User8605	3960	3163	Hungary	Obj C
8606	Tweet8606	User8606	3866	4863	France	C++
8607	Tweet8607	User8607	2800	1286	Hungary	C#
8608	Tweet8608	User8608	4563	2046	Slovenia	Scala
8609	Tweet8609	User8609	1067	3103	Belgium	C++
8610	Tweet8610	User8610	2803	2403	Malta	Ruby
8611	Tweet8611	User8611	1328	2380	Netherlands	Python
8612	Tweet8612	User8612	512	3485	Malta	Java
8613	Tweet8613	User8613	4281	4486	Belgium	C#
8614	Tweet8614	User8614	379	4660	Estonia	Obj C
8615	Tweet8615	User8615	4746	3306	Spain	Scala
8616	Tweet8616	User8616	3061	3630	Poland	Scala
8617	Tweet8617	User8617	4875	2219	Cyprus	C
8618	Tweet8618	User8618	3763	2841	Sweden	PHP
8619	Tweet8619	User8619	1460	1616	Sweden	Scala
8620	Tweet8620	User8620	1198	2956	Germany	C#
8621	Tweet8621	User8621	3004	4658	Luxembourg	C
8622	Tweet8622	User8622	4560	4993	Denmark	Python
8623	Tweet8623	User8623	1395	418	Portugal	Java
8624	Tweet8624	User8624	4331	320	Poland	Java
8625	Tweet8625	User8625	3521	2759	Luxembourg	Java
8626	Tweet8626	User8626	3657	480	Luxembourg	Java
8627	Tweet8627	User8627	4369	2470	Slovenia	C
8628	Tweet8628	User8628	619	4871	Lithuania	Scala
8629	Tweet8629	User8629	2162	4388	Croatia	Scala
8630	Tweet8630	User8630	2780	4211	Lithuania	C#
8631	Tweet8631	User8631	1216	3679	Lithuania	Python
8632	Tweet8632	User8632	1783	2439	Czech Republic	Python
8633	Tweet8633	User8633	353	3776	Croatia	C
8634	Tweet8634	User8634	1370	3349	Lithuania	C
8635	Tweet8635	User8635	1923	2301	Romania	Visual Basic
8636	Tweet8636	User8636	4962	4569	Germany	C
8637	Tweet8637	User8637	3949	3840	Spain	C
8638	Tweet8638	User8638	19	3586	Cyprus	Java
8639	Tweet8639	User8639	1731	4389	Spain	JavaScript
8640	Tweet8640	User8640	2641	4491	Spain	PHP
8641	Tweet8641	User8641	4371	2311	Lithuania	Ruby
8642	Tweet8642	User8642	1779	3273	France	C++
8643	Tweet8643	User8643	2302	3921	Latvia	C#
8644	Tweet8644	User8644	2158	2508	Spain	Ruby
8645	Tweet8645	User8645	300	4708	Poland	Ruby
8646	Tweet8646	User8646	869	4124	Finland	Obj C
8647	Tweet8647	User8647	2436	4111	Slovakia	Ruby
8648	Tweet8648	User8648	2503	409	Austria	PHP
8649	Tweet8649	User8649	554	1540	Latvia	C++
8650	Tweet8650	User8650	2523	495	Ireland	JavaScript
8651	Tweet8651	User8651	1363	694	Latvia	Visual Basic
8652	Tweet8652	User8652	4769	3909	Belgium	PHP
8653	Tweet8653	User8653	2894	69	Malta	Ruby
8654	Tweet8654	User8654	2943	2663	Cyprus	Obj C
8655	Tweet8655	User8655	396	2062	Ireland	Obj C
8656	Tweet8656	User8656	1086	241	Sweden	Visual Basic
8657	Tweet8657	User8657	3984	1163	Croatia	C
8658	Tweet8658	User8658	1990	3687	Croatia	C++
8659	Tweet8659	User8659	3152	1866	Greece	Java
8660	Tweet8660	User8660	457	5	Poland	C++
8661	Tweet8661	User8661	2353	3361	Czech Republic	Visual Basic
8662	Tweet8662	User8662	1567	960	Cyprus	C
8663	Tweet8663	User8663	2566	912	Italy	Ruby
8664	Tweet8664	User8664	2464	116	Italy	PHP
8665	Tweet8665	User8665	88	4396	Slovakia	Visual Basic
8666	Tweet8666	User8666	927	2743	Lithuania	PHP
8667	Tweet8667	User8667	1045	3708	Belgium	Visual Basic
8668	Tweet8668	User8668	1535	1531	Estonia	C#
8669	Tweet8669	User8669	1531	4845	Luxembourg	C++
8670	Tweet8670	User8670	1367	4010	Hungary	Scala
8671	Tweet8671	User8671	1025	4939	Finland	Scala
8672	Tweet8672	User8672	3725	307	Luxembourg	C
8673	Tweet8673	User8673	362	4252	Finland	Visual Basic
8674	Tweet8674	User8674	1951	577	Bulgaria	Python
8675	Tweet8675	User8675	3629	3307	Italy	JavaScript
8676	Tweet8676	User8676	445	4244	United Kingdom	JavaScript
8677	Tweet8677	User8677	3354	375	Denmark	PHP
8678	Tweet8678	User8678	4868	603	Ireland	Obj C
8679	Tweet8679	User8679	2598	669	Romania	C
8680	Tweet8680	User8680	3476	2260	United Kingdom	Ruby
8681	Tweet8681	User8681	445	3358	Slovenia	Ruby
8682	Tweet8682	User8682	1265	3905	Slovakia	Obj C
8683	Tweet8683	User8683	3753	1933	Slovakia	C
8684	Tweet8684	User8684	2114	4209	Spain	JavaScript
8685	Tweet8685	User8685	3682	166	Germany	Visual Basic
8686	Tweet8686	User8686	2384	1192	Malta	Visual Basic
8687	Tweet8687	User8687	3730	1721	Netherlands	Visual Basic
8688	Tweet8688	User8688	1871	1919	Latvia	Obj C
8689	Tweet8689	User8689	446	1772	Croatia	PHP
8690	Tweet8690	User8690	3005	2588	Greece	Java
8691	Tweet8691	User8691	1111	368	France	Obj C
8692	Tweet8692	User8692	3542	2465	Romania	PHP
8693	Tweet8693	User8693	569	3027	Ireland	JavaScript
8694	Tweet8694	User8694	822	2799	Sweden	Visual Basic
8695	Tweet8695	User8695	399	612	France	C#
8696	Tweet8696	User8696	1853	960	Croatia	Ruby
8697	Tweet8697	User8697	1466	3574	Croatia	Java
8698	Tweet8698	User8698	3349	2654	Slovakia	Scala
8699	Tweet8699	User8699	2109	3181	Croatia	C
8700	Tweet8700	User8700	522	1626	Denmark	Obj C
8701	Tweet8701	User8701	4409	4979	Malta	Obj C
8702	Tweet8702	User8702	655	2962	Ireland	C
8703	Tweet8703	User8703	2202	4504	Finland	Java
8704	Tweet8704	User8704	1466	4975	Estonia	Java
8705	Tweet8705	User8705	250	4930	Belgium	Visual Basic
8706	Tweet8706	User8706	3710	1611	Slovakia	Ruby
8707	Tweet8707	User8707	276	2954	Luxembourg	Scala
8708	Tweet8708	User8708	3608	3790	Germany	JavaScript
8709	Tweet8709	User8709	2152	4335	Estonia	C++
8710	Tweet8710	User8710	4966	1597	Cyprus	PHP
8711	Tweet8711	User8711	985	2383	Spain	C#
8712	Tweet8712	User8712	2114	983	Belgium	C++
8713	Tweet8713	User8713	850	1969	Romania	Python
8714	Tweet8714	User8714	4114	3677	Ireland	Ruby
8715	Tweet8715	User8715	79	484	Belgium	Java
8716	Tweet8716	User8716	328	3519	Romania	Scala
8717	Tweet8717	User8717	3737	3581	Croatia	PHP
8718	Tweet8718	User8718	3222	3278	United Kingdom	Scala
8719	Tweet8719	User8719	4234	1363	Sweden	JavaScript
8720	Tweet8720	User8720	4087	52	Poland	Obj C
8721	Tweet8721	User8721	596	1643	France	C++
8722	Tweet8722	User8722	2199	3214	Denmark	Java
8723	Tweet8723	User8723	308	3155	Finland	Visual Basic
8724	Tweet8724	User8724	4708	4123	Finland	C#
8725	Tweet8725	User8725	2493	486	Latvia	Ruby
8726	Tweet8726	User8726	446	2103	Ireland	Ruby
8727	Tweet8727	User8727	2819	2263	Greece	Java
8728	Tweet8728	User8728	4161	3359	France	Python
8729	Tweet8729	User8729	4398	649	Lithuania	Obj C
8730	Tweet8730	User8730	3088	2201	Netherlands	Ruby
8731	Tweet8731	User8731	2174	1416	Romania	Python
8732	Tweet8732	User8732	2565	1669	Latvia	C++
8733	Tweet8733	User8733	4753	549	Latvia	Python
8734	Tweet8734	User8734	3027	1251	Latvia	C#
8735	Tweet8735	User8735	1913	3317	Netherlands	C#
8736	Tweet8736	User8736	2456	208	Czech Republic	C#
8737	Tweet8737	User8737	2914	3197	Cyprus	JavaScript
8738	Tweet8738	User8738	1023	110	Latvia	C#
8739	Tweet8739	User8739	512	3540	Netherlands	C
8740	Tweet8740	User8740	988	3275	Luxembourg	Python
8741	Tweet8741	User8741	1851	3393	United Kingdom	Obj C
8742	Tweet8742	User8742	1926	2223	Cyprus	PHP
8743	Tweet8743	User8743	4824	3741	Latvia	PHP
8744	Tweet8744	User8744	4303	4096	Cyprus	Ruby
8745	Tweet8745	User8745	408	2569	Denmark	Obj C
8746	Tweet8746	User8746	2025	4901	Ireland	Python
8747	Tweet8747	User8747	4854	2692	Romania	Python
8748	Tweet8748	User8748	1046	602	United Kingdom	C#
8749	Tweet8749	User8749	4576	588	Italy	Python
8750	Tweet8750	User8750	4781	2438	Belgium	Python
8751	Tweet8751	User8751	963	4786	Finland	C
8752	Tweet8752	User8752	4023	2754	Poland	Ruby
8753	Tweet8753	User8753	956	1975	Denmark	Ruby
8754	Tweet8754	User8754	1776	2476	Cyprus	JavaScript
8755	Tweet8755	User8755	1635	3832	Finland	C#
8756	Tweet8756	User8756	1151	4814	Austria	C++
8757	Tweet8757	User8757	4187	3933	Hungary	C#
8758	Tweet8758	User8758	4658	4022	Denmark	Obj C
8759	Tweet8759	User8759	2897	453	Slovakia	JavaScript
8760	Tweet8760	User8760	4255	1008	Belgium	Visual Basic
8761	Tweet8761	User8761	1485	370	Greece	C#
8762	Tweet8762	User8762	260	2042	Latvia	Visual Basic
8763	Tweet8763	User8763	1854	4275	Denmark	Java
8764	Tweet8764	User8764	2168	1189	Estonia	Visual Basic
8765	Tweet8765	User8765	1642	263	Croatia	Visual Basic
8766	Tweet8766	User8766	4417	3206	United Kingdom	JavaScript
8767	Tweet8767	User8767	602	4949	Croatia	PHP
8768	Tweet8768	User8768	685	910	Latvia	C#
8769	Tweet8769	User8769	180	1817	Latvia	Ruby
8770	Tweet8770	User8770	3856	2690	Malta	Ruby
8771	Tweet8771	User8771	4099	4485	Italy	C++
8772	Tweet8772	User8772	1482	2256	Germany	Python
8773	Tweet8773	User8773	4227	2474	Denmark	C#
8774	Tweet8774	User8774	1999	2682	Austria	Obj C
8775	Tweet8775	User8775	563	3284	Romania	Python
8776	Tweet8776	User8776	3318	4619	Belgium	C#
8777	Tweet8777	User8777	2413	4611	Bulgaria	Scala
8778	Tweet8778	User8778	2020	4859	Denmark	Obj C
8779	Tweet8779	User8779	3953	3620	Malta	Java
8780	Tweet8780	User8780	4058	647	Austria	PHP
8781	Tweet8781	User8781	2632	1904	Slovakia	Visual Basic
8782	Tweet8782	User8782	4095	3076	Netherlands	Java
8783	Tweet8783	User8783	1842	4314	Germany	Ruby
8784	Tweet8784	User8784	412	3677	Italy	Java
8785	Tweet8785	User8785	1284	4504	Sweden	Python
8786	Tweet8786	User8786	1124	4334	Czech Republic	Python
8787	Tweet8787	User8787	2786	4156	Slovenia	C++
8788	Tweet8788	User8788	4648	4738	Spain	JavaScript
8789	Tweet8789	User8789	3967	3545	Sweden	C++
8790	Tweet8790	User8790	461	2598	Slovakia	Obj C
8791	Tweet8791	User8791	4238	530	Austria	Visual Basic
8792	Tweet8792	User8792	1548	489	Croatia	Python
8793	Tweet8793	User8793	39	3249	Portugal	Scala
8794	Tweet8794	User8794	3503	3571	Hungary	C#
8795	Tweet8795	User8795	2535	4810	Slovenia	PHP
8796	Tweet8796	User8796	2537	2007	Croatia	C++
8797	Tweet8797	User8797	3476	3555	Poland	Ruby
8798	Tweet8798	User8798	156	316	Croatia	C
8799	Tweet8799	User8799	374	1317	Malta	Java
8800	Tweet8800	User8800	1009	416	Estonia	Scala
8801	Tweet8801	User8801	875	1148	Portugal	Obj C
8802	Tweet8802	User8802	921	2289	Hungary	C
8803	Tweet8803	User8803	3215	496	Hungary	Python
8804	Tweet8804	User8804	4334	3669	Romania	Java
8805	Tweet8805	User8805	1617	4547	Austria	Obj C
8806	Tweet8806	User8806	931	3458	Slovenia	Ruby
8807	Tweet8807	User8807	3768	3494	Cyprus	Scala
8808	Tweet8808	User8808	96	4973	Sweden	PHP
8809	Tweet8809	User8809	4727	3671	Romania	Scala
8810	Tweet8810	User8810	4676	1305	Lithuania	Visual Basic
8811	Tweet8811	User8811	4982	1636	Netherlands	C
8812	Tweet8812	User8812	1469	2247	Belgium	C#
8813	Tweet8813	User8813	2905	477	Cyprus	PHP
8814	Tweet8814	User8814	2048	4054	Croatia	PHP
8815	Tweet8815	User8815	3735	462	France	C++
8816	Tweet8816	User8816	1050	3654	Czech Republic	C#
8817	Tweet8817	User8817	1508	2325	Romania	C
8818	Tweet8818	User8818	4456	4881	Spain	Ruby
8819	Tweet8819	User8819	3066	4968	Ireland	JavaScript
8820	Tweet8820	User8820	624	2547	France	C
8821	Tweet8821	User8821	1971	3797	Cyprus	JavaScript
8822	Tweet8822	User8822	3619	4271	Slovenia	C
8823	Tweet8823	User8823	4362	1198	Belgium	Java
8824	Tweet8824	User8824	3106	4396	Estonia	Obj C
8825	Tweet8825	User8825	3151	2192	Slovakia	Java
8826	Tweet8826	User8826	1677	2016	Malta	Ruby
8827	Tweet8827	User8827	3732	2502	Estonia	Scala
8828	Tweet8828	User8828	3401	3186	United Kingdom	Ruby
8829	Tweet8829	User8829	3673	4971	Estonia	Ruby
8830	Tweet8830	User8830	3022	2166	Greece	C++
8831	Tweet8831	User8831	1624	4554	Estonia	Visual Basic
8832	Tweet8832	User8832	4621	4685	Latvia	C#
8833	Tweet8833	User8833	4517	500	Romania	Obj C
8834	Tweet8834	User8834	3751	1758	Malta	Ruby
8835	Tweet8835	User8835	3882	2625	Portugal	Ruby
8836	Tweet8836	User8836	4475	2861	Spain	C
8837	Tweet8837	User8837	333	1504	Austria	JavaScript
8838	Tweet8838	User8838	171	1967	Poland	Obj C
8839	Tweet8839	User8839	169	2808	Cyprus	C#
8840	Tweet8840	User8840	1156	3461	Malta	C
8841	Tweet8841	User8841	3049	2666	United Kingdom	PHP
8842	Tweet8842	User8842	416	744	Czech Republic	Python
8843	Tweet8843	User8843	3942	2552	Slovenia	Ruby
8844	Tweet8844	User8844	1664	1576	Estonia	JavaScript
8845	Tweet8845	User8845	3854	1475	Netherlands	PHP
8846	Tweet8846	User8846	4557	2965	Slovenia	C++
8847	Tweet8847	User8847	3443	2832	Cyprus	PHP
8848	Tweet8848	User8848	4553	4735	Germany	Java
8849	Tweet8849	User8849	1190	2117	Slovenia	PHP
8850	Tweet8850	User8850	1629	1808	Greece	C++
8851	Tweet8851	User8851	2633	3669	Hungary	Ruby
8852	Tweet8852	User8852	3568	4373	Spain	C
8853	Tweet8853	User8853	2832	2844	Latvia	C++
8854	Tweet8854	User8854	3223	1712	Slovakia	Python
8855	Tweet8855	User8855	1533	3768	Sweden	Obj C
8856	Tweet8856	User8856	4371	3530	Greece	Ruby
8857	Tweet8857	User8857	1684	3899	Spain	C
8858	Tweet8858	User8858	4403	4584	Denmark	Scala
8859	Tweet8859	User8859	1392	3284	Poland	JavaScript
8860	Tweet8860	User8860	1414	1683	Ireland	C++
8861	Tweet8861	User8861	289	862	Finland	Visual Basic
8862	Tweet8862	User8862	4574	1741	Finland	C
8863	Tweet8863	User8863	1225	285	Belgium	C
8864	Tweet8864	User8864	21	1222	Germany	JavaScript
8865	Tweet8865	User8865	2834	1717	Czech Republic	Ruby
8866	Tweet8866	User8866	2370	359	Greece	Scala
8867	Tweet8867	User8867	1913	3471	United Kingdom	PHP
8868	Tweet8868	User8868	352	4910	Poland	Scala
8869	Tweet8869	User8869	4025	2269	Romania	Ruby
8870	Tweet8870	User8870	1936	4608	Bulgaria	Obj C
8871	Tweet8871	User8871	1943	3182	Ireland	Obj C
8872	Tweet8872	User8872	4408	2919	Czech Republic	PHP
8873	Tweet8873	User8873	3134	4295	Lithuania	C#
8874	Tweet8874	User8874	1501	1417	Estonia	C
8875	Tweet8875	User8875	4273	4200	Sweden	C#
8876	Tweet8876	User8876	265	1589	Portugal	JavaScript
8877	Tweet8877	User8877	1623	1633	Portugal	Python
8878	Tweet8878	User8878	2026	4556	Croatia	C#
8879	Tweet8879	User8879	2806	908	Belgium	Python
8880	Tweet8880	User8880	4358	1249	Greece	C#
8881	Tweet8881	User8881	4576	3367	Bulgaria	C++
8882	Tweet8882	User8882	4847	2265	Latvia	JavaScript
8883	Tweet8883	User8883	4729	1693	Finland	C#
8884	Tweet8884	User8884	785	810	Belgium	Scala
8885	Tweet8885	User8885	332	1894	Slovenia	PHP
8886	Tweet8886	User8886	3423	1007	Finland	C#
8887	Tweet8887	User8887	2691	1827	Austria	Ruby
8888	Tweet8888	User8888	1119	2654	United Kingdom	Obj C
8889	Tweet8889	User8889	2534	443	Bulgaria	Visual Basic
8890	Tweet8890	User8890	812	4528	Ireland	C
8891	Tweet8891	User8891	933	2573	Finland	C
8892	Tweet8892	User8892	1222	1985	Cyprus	Python
8893	Tweet8893	User8893	445	668	Netherlands	Obj C
8894	Tweet8894	User8894	4012	3129	Netherlands	C++
8895	Tweet8895	User8895	3980	2579	Italy	C++
8896	Tweet8896	User8896	3386	3748	Slovakia	PHP
8897	Tweet8897	User8897	2794	4471	Malta	JavaScript
8898	Tweet8898	User8898	675	887	Hungary	Java
8899	Tweet8899	User8899	1287	4079	Bulgaria	Python
8900	Tweet8900	User8900	663	442	Germany	C#
8901	Tweet8901	User8901	1603	3419	Greece	Python
8902	Tweet8902	User8902	976	2832	Croatia	Obj C
8903	Tweet8903	User8903	2419	1637	Bulgaria	Ruby
8904	Tweet8904	User8904	600	722	Spain	Java
8905	Tweet8905	User8905	4816	135	Lithuania	Obj C
8906	Tweet8906	User8906	4848	2717	Latvia	Java
8907	Tweet8907	User8907	4401	2852	Lithuania	Java
8908	Tweet8908	User8908	3065	2053	Finland	C++
8909	Tweet8909	User8909	3264	626	Romania	C#
8910	Tweet8910	User8910	3815	4762	Estonia	C++
8911	Tweet8911	User8911	725	976	Bulgaria	Python
8912	Tweet8912	User8912	392	1819	United Kingdom	Scala
8913	Tweet8913	User8913	3567	2675	Hungary	C#
8914	Tweet8914	User8914	4935	972	Spain	Ruby
8915	Tweet8915	User8915	3918	3369	Portugal	C#
8916	Tweet8916	User8916	2022	1364	Luxembourg	C#
8917	Tweet8917	User8917	2199	3479	Netherlands	Visual Basic
8918	Tweet8918	User8918	2130	622	Ireland	C
8919	Tweet8919	User8919	2532	1177	Portugal	Ruby
8920	Tweet8920	User8920	233	2136	Romania	JavaScript
8921	Tweet8921	User8921	223	263	Cyprus	Java
8922	Tweet8922	User8922	2030	4679	Sweden	Obj C
8923	Tweet8923	User8923	846	250	Bulgaria	C#
8924	Tweet8924	User8924	3008	3829	Austria	C
8925	Tweet8925	User8925	1905	4884	Finland	Ruby
8926	Tweet8926	User8926	3155	1601	Portugal	C#
8927	Tweet8927	User8927	949	124	Croatia	Ruby
8928	Tweet8928	User8928	2599	367	Lithuania	Java
8929	Tweet8929	User8929	4110	4536	Ireland	C#
8930	Tweet8930	User8930	1746	3616	Sweden	PHP
8931	Tweet8931	User8931	2773	2685	Finland	Python
8932	Tweet8932	User8932	1173	332	Luxembourg	PHP
8933	Tweet8933	User8933	783	996	Austria	Java
8934	Tweet8934	User8934	1353	2628	Bulgaria	Visual Basic
8935	Tweet8935	User8935	1029	746	Slovenia	C++
8936	Tweet8936	User8936	4749	2815	Slovakia	Java
8937	Tweet8937	User8937	49	507	Malta	C
8938	Tweet8938	User8938	2313	1540	Czech Republic	Scala
8939	Tweet8939	User8939	4456	1917	Italy	Ruby
8940	Tweet8940	User8940	223	1809	Belgium	Scala
8941	Tweet8941	User8941	3061	308	Germany	Ruby
8942	Tweet8942	User8942	1071	1671	Germany	JavaScript
8943	Tweet8943	User8943	50	2398	Netherlands	Java
8944	Tweet8944	User8944	109	872	Germany	Ruby
8945	Tweet8945	User8945	1400	547	Sweden	Obj C
8946	Tweet8946	User8946	1719	2699	France	Obj C
8947	Tweet8947	User8947	2724	1338	Netherlands	C++
8948	Tweet8948	User8948	2684	4114	Czech Republic	Ruby
8949	Tweet8949	User8949	105	812	Malta	Scala
8950	Tweet8950	User8950	4279	2011	Spain	Java
8951	Tweet8951	User8951	2472	2739	Latvia	Python
8952	Tweet8952	User8952	2937	650	United Kingdom	Java
8953	Tweet8953	User8953	806	1634	Germany	Visual Basic
8954	Tweet8954	User8954	2398	1665	Croatia	Python
8955	Tweet8955	User8955	1386	3050	Estonia	Java
8956	Tweet8956	User8956	804	3516	Austria	Obj C
8957	Tweet8957	User8957	1006	3502	Denmark	Ruby
8958	Tweet8958	User8958	3989	3977	France	Scala
8959	Tweet8959	User8959	2469	3412	Croatia	Scala
8960	Tweet8960	User8960	1569	4042	Slovenia	Ruby
8961	Tweet8961	User8961	4958	1572	Slovenia	Visual Basic
8962	Tweet8962	User8962	892	2940	Spain	Ruby
8963	Tweet8963	User8963	4777	1631	Ireland	C++
8964	Tweet8964	User8964	2385	4852	Portugal	Scala
8965	Tweet8965	User8965	760	1773	Croatia	Obj C
8966	Tweet8966	User8966	4162	256	Netherlands	Python
8967	Tweet8967	User8967	2019	132	Poland	C#
8968	Tweet8968	User8968	2192	4699	Greece	Java
8969	Tweet8969	User8969	405	4593	Ireland	Obj C
8970	Tweet8970	User8970	4807	2638	United Kingdom	Scala
8971	Tweet8971	User8971	573	3666	Croatia	C
8972	Tweet8972	User8972	3316	3634	Lithuania	Visual Basic
8973	Tweet8973	User8973	844	3585	Ireland	Java
8974	Tweet8974	User8974	4166	4687	Belgium	Ruby
8975	Tweet8975	User8975	3985	2690	Estonia	Java
8976	Tweet8976	User8976	4647	4547	Romania	C
8977	Tweet8977	User8977	391	4315	Czech Republic	C#
8978	Tweet8978	User8978	2026	4050	Hungary	Java
8979	Tweet8979	User8979	4579	1221	Slovakia	C#
8980	Tweet8980	User8980	1176	1038	Germany	Obj C
8981	Tweet8981	User8981	4660	2163	Malta	Obj C
8982	Tweet8982	User8982	4047	1756	Latvia	Visual Basic
8983	Tweet8983	User8983	4859	1853	Bulgaria	Ruby
8984	Tweet8984	User8984	2289	4948	Poland	Visual Basic
8985	Tweet8985	User8985	4871	1212	Netherlands	Java
8986	Tweet8986	User8986	2446	4327	Croatia	C#
8987	Tweet8987	User8987	4068	1643	Belgium	Java
8988	Tweet8988	User8988	812	2178	Portugal	PHP
8989	Tweet8989	User8989	2305	1827	Croatia	Java
8990	Tweet8990	User8990	1359	3982	Luxembourg	Scala
8991	Tweet8991	User8991	4535	134	Portugal	C
8992	Tweet8992	User8992	1075	2991	Italy	Ruby
8993	Tweet8993	User8993	247	3326	Lithuania	Visual Basic
8994	Tweet8994	User8994	958	2924	Croatia	Java
8995	Tweet8995	User8995	1849	659	Spain	Obj C
8996	Tweet8996	User8996	3466	3249	Bulgaria	JavaScript
8997	Tweet8997	User8997	4646	4627	Slovenia	C++
8998	Tweet8998	User8998	2043	111	Cyprus	JavaScript
8999	Tweet8999	User8999	3061	3712	Lithuania	C
9000	Tweet9000	User9000	3227	3743	Sweden	JavaScript
9001	Tweet9001	User9001	4720	2001	Luxembourg	Visual Basic
9002	Tweet9002	User9002	4183	2295	Sweden	C
9003	Tweet9003	User9003	3298	339	Poland	Scala
9004	Tweet9004	User9004	1519	873	Sweden	Ruby
9005	Tweet9005	User9005	1130	3235	Poland	C#
9006	Tweet9006	User9006	1212	4493	Netherlands	C
9007	Tweet9007	User9007	2641	1377	United Kingdom	Java
9008	Tweet9008	User9008	3211	998	Austria	Scala
9009	Tweet9009	User9009	2361	552	Cyprus	C++
9010	Tweet9010	User9010	3649	3249	Denmark	C++
9011	Tweet9011	User9011	2443	1578	Denmark	JavaScript
9012	Tweet9012	User9012	2750	3567	Bulgaria	PHP
9013	Tweet9013	User9013	2204	1541	Bulgaria	Java
9014	Tweet9014	User9014	3996	3078	Sweden	Visual Basic
9015	Tweet9015	User9015	3950	3283	Hungary	Python
9016	Tweet9016	User9016	4081	2584	Romania	PHP
9017	Tweet9017	User9017	4279	2502	Croatia	PHP
9018	Tweet9018	User9018	4843	3785	Sweden	Visual Basic
9019	Tweet9019	User9019	595	1287	Netherlands	JavaScript
9020	Tweet9020	User9020	533	2729	Belgium	PHP
9021	Tweet9021	User9021	4836	2641	Luxembourg	JavaScript
9022	Tweet9022	User9022	2733	533	Greece	Python
9023	Tweet9023	User9023	902	1604	Austria	C++
9024	Tweet9024	User9024	1330	1783	Estonia	Scala
9025	Tweet9025	User9025	994	3695	Italy	Python
9026	Tweet9026	User9026	2339	2707	Luxembourg	Java
9027	Tweet9027	User9027	746	3522	Bulgaria	Python
9028	Tweet9028	User9028	2484	3551	Estonia	C
9029	Tweet9029	User9029	2992	256	Greece	C#
9030	Tweet9030	User9030	251	343	Denmark	C
9031	Tweet9031	User9031	2264	1375	Lithuania	C#
9032	Tweet9032	User9032	2068	1032	Latvia	C++
9033	Tweet9033	User9033	1965	2719	Spain	Ruby
9034	Tweet9034	User9034	2458	407	Slovenia	Python
9035	Tweet9035	User9035	2249	4981	Malta	Java
9036	Tweet9036	User9036	890	4061	Latvia	PHP
9037	Tweet9037	User9037	1185	960	Italy	Scala
9038	Tweet9038	User9038	1447	3050	France	C#
9039	Tweet9039	User9039	4415	3116	Slovenia	C
9040	Tweet9040	User9040	1425	1780	Slovenia	Java
9041	Tweet9041	User9041	3114	4492	Latvia	Scala
9042	Tweet9042	User9042	1100	3573	Germany	C
9043	Tweet9043	User9043	2677	2891	Romania	Obj C
9044	Tweet9044	User9044	1378	4404	Hungary	Scala
9045	Tweet9045	User9045	322	2778	Portugal	Ruby
9046	Tweet9046	User9046	2773	4253	Estonia	C
9047	Tweet9047	User9047	332	4717	Germany	PHP
9048	Tweet9048	User9048	834	2903	Netherlands	Obj C
9049	Tweet9049	User9049	3775	2410	Italy	C++
9050	Tweet9050	User9050	2106	4589	Denmark	Java
9051	Tweet9051	User9051	3537	4305	Czech Republic	C
9052	Tweet9052	User9052	4594	613	Cyprus	C++
9053	Tweet9053	User9053	1822	4930	Cyprus	Java
9054	Tweet9054	User9054	2694	114	Netherlands	Python
9055	Tweet9055	User9055	4167	1239	Slovakia	Python
9056	Tweet9056	User9056	1580	1858	Bulgaria	Python
9057	Tweet9057	User9057	4560	4461	Sweden	Java
9058	Tweet9058	User9058	131	1684	Denmark	Scala
9059	Tweet9059	User9059	3336	3669	Bulgaria	Python
9060	Tweet9060	User9060	2207	3451	Germany	Java
9061	Tweet9061	User9061	1884	928	Malta	C#
9062	Tweet9062	User9062	4438	1028	Italy	C
9063	Tweet9063	User9063	38	3337	France	Python
9064	Tweet9064	User9064	874	662	Austria	Scala
9065	Tweet9065	User9065	2634	3373	Greece	C++
9066	Tweet9066	User9066	2959	4461	Germany	Ruby
9067	Tweet9067	User9067	4879	2410	Austria	Obj C
9068	Tweet9068	User9068	4634	863	Netherlands	JavaScript
9069	Tweet9069	User9069	2024	504	Czech Republic	Visual Basic
9070	Tweet9070	User9070	3840	1919	Greece	Ruby
9071	Tweet9071	User9071	2117	1139	Cyprus	Python
9072	Tweet9072	User9072	2462	3388	Luxembourg	Java
9073	Tweet9073	User9073	2780	783	Romania	C
9074	Tweet9074	User9074	2027	1640	Malta	PHP
9075	Tweet9075	User9075	4419	4926	Luxembourg	Ruby
9076	Tweet9076	User9076	1446	4357	Austria	Ruby
9077	Tweet9077	User9077	1701	1865	Hungary	PHP
9078	Tweet9078	User9078	4878	1636	Romania	Java
9079	Tweet9079	User9079	882	1091	Portugal	Java
9080	Tweet9080	User9080	4962	440	Cyprus	JavaScript
9081	Tweet9081	User9081	4393	3990	Slovakia	Obj C
9082	Tweet9082	User9082	1428	4529	Italy	Obj C
9083	Tweet9083	User9083	3759	1033	Ireland	C
9084	Tweet9084	User9084	2748	2932	Finland	Visual Basic
9085	Tweet9085	User9085	3104	3590	Croatia	PHP
9086	Tweet9086	User9086	4873	468	Estonia	C++
9087	Tweet9087	User9087	4030	2385	Italy	C#
9088	Tweet9088	User9088	1727	2883	Portugal	Visual Basic
9089	Tweet9089	User9089	3655	4377	Netherlands	Obj C
9090	Tweet9090	User9090	4953	896	Croatia	JavaScript
9091	Tweet9091	User9091	2258	4726	Croatia	Python
9092	Tweet9092	User9092	3143	257	Italy	PHP
9093	Tweet9093	User9093	741	4729	Luxembourg	Python
9094	Tweet9094	User9094	3230	4497	Sweden	PHP
9095	Tweet9095	User9095	3018	2070	Bulgaria	Obj C
9096	Tweet9096	User9096	464	2833	Netherlands	C#
9097	Tweet9097	User9097	3731	246	Austria	JavaScript
9098	Tweet9098	User9098	3098	4252	United Kingdom	Visual Basic
9099	Tweet9099	User9099	4468	140	Austria	PHP
9100	Tweet9100	User9100	2464	747	Estonia	Ruby
9101	Tweet9101	User9101	4555	3552	Denmark	Visual Basic
9102	Tweet9102	User9102	1565	2305	France	Visual Basic
9103	Tweet9103	User9103	3060	2277	Luxembourg	Visual Basic
9104	Tweet9104	User9104	3525	2878	Denmark	C#
9105	Tweet9105	User9105	1372	4601	Luxembourg	C
9106	Tweet9106	User9106	3988	1336	Italy	Python
9107	Tweet9107	User9107	3997	1206	Denmark	Visual Basic
9108	Tweet9108	User9108	4230	3549	United Kingdom	Python
9109	Tweet9109	User9109	3793	411	Ireland	C
9110	Tweet9110	User9110	78	2862	Romania	Obj C
9111	Tweet9111	User9111	1850	4854	United Kingdom	PHP
9112	Tweet9112	User9112	782	2319	Slovakia	C
9113	Tweet9113	User9113	554	2106	Bulgaria	C++
9114	Tweet9114	User9114	4324	2000	Netherlands	C#
9115	Tweet9115	User9115	2965	2745	Denmark	Java
9116	Tweet9116	User9116	3169	3593	Hungary	Java
9117	Tweet9117	User9117	3732	897	Belgium	C++
9118	Tweet9118	User9118	3344	791	Portugal	C#
9119	Tweet9119	User9119	4277	3588	Ireland	Scala
9120	Tweet9120	User9120	4459	3894	France	JavaScript
9121	Tweet9121	User9121	1016	4161	Poland	JavaScript
9122	Tweet9122	User9122	4111	2934	Lithuania	Visual Basic
9123	Tweet9123	User9123	4737	186	Estonia	Obj C
9124	Tweet9124	User9124	1825	2391	Portugal	C++
9125	Tweet9125	User9125	2840	1799	Sweden	PHP
9126	Tweet9126	User9126	4830	2653	Croatia	Visual Basic
9127	Tweet9127	User9127	1978	1987	Denmark	PHP
9128	Tweet9128	User9128	2113	511	Italy	Visual Basic
9129	Tweet9129	User9129	4263	993	United Kingdom	C++
9130	Tweet9130	User9130	4686	2447	Malta	C++
9131	Tweet9131	User9131	1861	4224	Hungary	C++
9132	Tweet9132	User9132	2599	2341	Hungary	C++
9133	Tweet9133	User9133	2331	4210	Slovakia	C#
9134	Tweet9134	User9134	4456	1730	France	C++
9135	Tweet9135	User9135	3990	1235	Finland	C++
9136	Tweet9136	User9136	75	1305	Netherlands	Java
9137	Tweet9137	User9137	1786	3109	Ireland	Obj C
9138	Tweet9138	User9138	4039	1530	Malta	PHP
9139	Tweet9139	User9139	1055	1619	Austria	Obj C
9140	Tweet9140	User9140	2694	1105	Italy	Obj C
9141	Tweet9141	User9141	1111	2659	Ireland	Ruby
9142	Tweet9142	User9142	2918	4596	Czech Republic	Python
9143	Tweet9143	User9143	3160	1498	Portugal	Ruby
9144	Tweet9144	User9144	1420	4292	Netherlands	C#
9145	Tweet9145	User9145	1103	4683	United Kingdom	Visual Basic
9146	Tweet9146	User9146	4991	993	Latvia	Python
9147	Tweet9147	User9147	4225	1517	Belgium	Java
9148	Tweet9148	User9148	242	2121	Austria	PHP
9149	Tweet9149	User9149	4294	4460	Ireland	Python
9150	Tweet9150	User9150	3186	899	Bulgaria	C++
9151	Tweet9151	User9151	2593	409	Hungary	C
9152	Tweet9152	User9152	1954	4931	Latvia	C++
9153	Tweet9153	User9153	2235	1903	Finland	JavaScript
9154	Tweet9154	User9154	3761	3260	Spain	JavaScript
9155	Tweet9155	User9155	480	3092	Estonia	Ruby
9156	Tweet9156	User9156	4846	2962	Netherlands	Scala
9157	Tweet9157	User9157	24	4502	Netherlands	Obj C
9158	Tweet9158	User9158	4034	483	Netherlands	Visual Basic
9159	Tweet9159	User9159	818	382	France	Visual Basic
9160	Tweet9160	User9160	4594	328	Denmark	Obj C
9161	Tweet9161	User9161	3316	3509	Portugal	Java
9162	Tweet9162	User9162	2171	1247	Czech Republic	C++
9163	Tweet9163	User9163	4944	4559	Finland	C#
9164	Tweet9164	User9164	4347	156	Romania	PHP
9165	Tweet9165	User9165	3510	2356	Romania	Visual Basic
9166	Tweet9166	User9166	963	4554	Slovenia	JavaScript
9167	Tweet9167	User9167	2454	4855	Spain	JavaScript
9168	Tweet9168	User9168	92	2516	Portugal	Scala
9169	Tweet9169	User9169	1727	2365	Lithuania	Scala
9170	Tweet9170	User9170	3027	4766	Finland	PHP
9171	Tweet9171	User9171	4596	2095	France	C++
9172	Tweet9172	User9172	2931	2072	Spain	Java
9173	Tweet9173	User9173	19	1945	Ireland	Obj C
9174	Tweet9174	User9174	2790	4483	Germany	Python
9175	Tweet9175	User9175	1419	3704	Luxembourg	C
9176	Tweet9176	User9176	4623	4894	Latvia	PHP
9177	Tweet9177	User9177	1668	9	Germany	Python
9178	Tweet9178	User9178	1779	95	Austria	Java
9179	Tweet9179	User9179	4699	3300	Austria	C++
9180	Tweet9180	User9180	3620	4238	Slovenia	C#
9181	Tweet9181	User9181	3561	2088	Germany	JavaScript
9182	Tweet9182	User9182	4694	1370	Netherlands	PHP
9183	Tweet9183	User9183	1971	3466	Bulgaria	Ruby
9184	Tweet9184	User9184	2238	1871	France	C#
9185	Tweet9185	User9185	4510	1156	Romania	C
9186	Tweet9186	User9186	3579	1821	Lithuania	Scala
9187	Tweet9187	User9187	2894	2056	Slovakia	Python
9188	Tweet9188	User9188	3769	4184	Ireland	Java
9189	Tweet9189	User9189	4600	2668	Lithuania	Python
9190	Tweet9190	User9190	637	2430	Estonia	Visual Basic
9191	Tweet9191	User9191	3664	4328	United Kingdom	PHP
9192	Tweet9192	User9192	3636	4724	Spain	Python
9193	Tweet9193	User9193	3356	4614	Latvia	Java
9194	Tweet9194	User9194	2418	3992	Hungary	C
9195	Tweet9195	User9195	3704	2363	Belgium	PHP
9196	Tweet9196	User9196	2341	1420	Estonia	C#
9197	Tweet9197	User9197	749	2489	Czech Republic	PHP
9198	Tweet9198	User9198	4309	2006	Hungary	Ruby
9199	Tweet9199	User9199	1805	1908	Spain	Visual Basic
9200	Tweet9200	User9200	1528	30	France	C#
9201	Tweet9201	User9201	2646	1408	Belgium	Scala
9202	Tweet9202	User9202	4779	1671	Spain	Ruby
9203	Tweet9203	User9203	2783	2699	Ireland	JavaScript
9204	Tweet9204	User9204	773	4402	Spain	Java
9205	Tweet9205	User9205	3385	3639	Austria	PHP
9206	Tweet9206	User9206	2198	1163	Lithuania	Java
9207	Tweet9207	User9207	2200	4497	Hungary	Ruby
9208	Tweet9208	User9208	3354	116	Hungary	C
9209	Tweet9209	User9209	2071	1903	Hungary	Obj C
9210	Tweet9210	User9210	1135	1600	Italy	Java
9211	Tweet9211	User9211	2160	2844	Slovenia	C#
9212	Tweet9212	User9212	456	2800	United Kingdom	PHP
9213	Tweet9213	User9213	3241	3098	Bulgaria	Obj C
9214	Tweet9214	User9214	3411	589	Czech Republic	Scala
9215	Tweet9215	User9215	3027	3434	Czech Republic	C#
9216	Tweet9216	User9216	2839	3252	Croatia	Java
9217	Tweet9217	User9217	4218	948	Spain	Obj C
9218	Tweet9218	User9218	562	3500	Slovakia	C#
9219	Tweet9219	User9219	2450	4513	United Kingdom	Obj C
9220	Tweet9220	User9220	4060	1769	Belgium	Obj C
9221	Tweet9221	User9221	1191	763	Lithuania	C#
9222	Tweet9222	User9222	2493	1981	Luxembourg	Ruby
9223	Tweet9223	User9223	1524	4497	Lithuania	C
9224	Tweet9224	User9224	2347	3486	Slovenia	C++
9225	Tweet9225	User9225	1199	451	Belgium	Obj C
9226	Tweet9226	User9226	3814	1014	Czech Republic	C
9227	Tweet9227	User9227	4180	1757	Greece	Scala
9228	Tweet9228	User9228	2012	3791	Spain	Ruby
9229	Tweet9229	User9229	2189	3139	Romania	PHP
9230	Tweet9230	User9230	421	2141	France	Visual Basic
9231	Tweet9231	User9231	4091	2916	Latvia	Obj C
9232	Tweet9232	User9232	4986	1885	Sweden	PHP
9233	Tweet9233	User9233	3487	4082	Latvia	C
9234	Tweet9234	User9234	454	3577	Greece	Ruby
9235	Tweet9235	User9235	4171	2600	Luxembourg	C#
9236	Tweet9236	User9236	2854	3835	Germany	Python
9237	Tweet9237	User9237	616	3407	Estonia	Python
9238	Tweet9238	User9238	1589	4119	Greece	Java
9239	Tweet9239	User9239	2189	1081	Cyprus	Java
9240	Tweet9240	User9240	2798	4545	Finland	C
9241	Tweet9241	User9241	2675	4444	Denmark	C
9242	Tweet9242	User9242	4162	231	Portugal	C
9243	Tweet9243	User9243	4652	3224	Italy	Obj C
9244	Tweet9244	User9244	2355	250	Netherlands	Obj C
9245	Tweet9245	User9245	3853	3765	Luxembourg	PHP
9246	Tweet9246	User9246	1676	536	France	Obj C
9247	Tweet9247	User9247	2174	4861	Poland	PHP
9248	Tweet9248	User9248	3424	4192	Portugal	C++
9249	Tweet9249	User9249	3817	2819	Slovakia	Python
9250	Tweet9250	User9250	3153	176	United Kingdom	C
9251	Tweet9251	User9251	3463	361	Estonia	PHP
9252	Tweet9252	User9252	3678	1310	Austria	C#
9253	Tweet9253	User9253	1031	3877	Austria	Ruby
9254	Tweet9254	User9254	3101	4886	Ireland	C#
9255	Tweet9255	User9255	4235	4850	Luxembourg	Ruby
9256	Tweet9256	User9256	3068	3499	Lithuania	JavaScript
9257	Tweet9257	User9257	4977	3990	Luxembourg	C
9258	Tweet9258	User9258	2455	3965	Cyprus	Obj C
9259	Tweet9259	User9259	977	2571	Austria	Ruby
9260	Tweet9260	User9260	94	1285	Portugal	C++
9261	Tweet9261	User9261	324	934	Slovakia	JavaScript
9262	Tweet9262	User9262	4444	3761	Lithuania	Python
9263	Tweet9263	User9263	4516	4192	Bulgaria	Java
9264	Tweet9264	User9264	1054	4462	Latvia	C#
9265	Tweet9265	User9265	4813	3642	Portugal	Python
9266	Tweet9266	User9266	3868	3676	Poland	Obj C
9267	Tweet9267	User9267	4876	3241	Luxembourg	JavaScript
9268	Tweet9268	User9268	2113	448	Romania	C
9269	Tweet9269	User9269	3553	4975	Finland	Scala
9270	Tweet9270	User9270	1018	376	Netherlands	JavaScript
9271	Tweet9271	User9271	4996	4217	Malta	JavaScript
9272	Tweet9272	User9272	4849	3806	Cyprus	JavaScript
9273	Tweet9273	User9273	375	3720	Malta	Python
9274	Tweet9274	User9274	2892	4245	France	PHP
9275	Tweet9275	User9275	3841	3405	Hungary	Obj C
9276	Tweet9276	User9276	2104	1697	Netherlands	Scala
9277	Tweet9277	User9277	4477	1465	Lithuania	C#
9278	Tweet9278	User9278	3975	1737	Czech Republic	Visual Basic
9279	Tweet9279	User9279	3651	1145	Finland	Ruby
9280	Tweet9280	User9280	2326	351	Cyprus	C++
9281	Tweet9281	User9281	4741	1193	Germany	Ruby
9282	Tweet9282	User9282	1054	3831	Slovakia	C#
9283	Tweet9283	User9283	2137	4168	Estonia	Obj C
9284	Tweet9284	User9284	1061	4211	Malta	Java
9285	Tweet9285	User9285	4901	4111	Italy	Obj C
9286	Tweet9286	User9286	4629	3611	Slovenia	C++
9287	Tweet9287	User9287	446	3443	Netherlands	C
9288	Tweet9288	User9288	661	3631	Cyprus	C
9289	Tweet9289	User9289	501	4834	Romania	PHP
9290	Tweet9290	User9290	853	25	Estonia	Scala
9291	Tweet9291	User9291	4710	4589	Cyprus	Scala
9292	Tweet9292	User9292	4871	3465	Belgium	C++
9293	Tweet9293	User9293	387	3045	Slovakia	PHP
9294	Tweet9294	User9294	4914	3770	Belgium	Scala
9295	Tweet9295	User9295	1407	4445	Greece	PHP
9296	Tweet9296	User9296	444	3923	Lithuania	Scala
9297	Tweet9297	User9297	1933	3030	Spain	Obj C
9298	Tweet9298	User9298	1379	109	Poland	C++
9299	Tweet9299	User9299	938	2022	Croatia	PHP
9300	Tweet9300	User9300	1097	882	Spain	C#
9301	Tweet9301	User9301	320	1951	Spain	C
9302	Tweet9302	User9302	1719	4735	Ireland	C
9303	Tweet9303	User9303	4210	2160	Finland	Ruby
9304	Tweet9304	User9304	4709	2457	Lithuania	Obj C
9305	Tweet9305	User9305	3479	1502	Sweden	JavaScript
9306	Tweet9306	User9306	1624	522	Estonia	C++
9307	Tweet9307	User9307	451	3252	Poland	Visual Basic
9308	Tweet9308	User9308	333	4857	Belgium	Scala
9309	Tweet9309	User9309	911	506	Malta	C#
9310	Tweet9310	User9310	2554	623	Belgium	Java
9311	Tweet9311	User9311	1747	1692	Poland	PHP
9312	Tweet9312	User9312	1991	1961	Romania	C++
9313	Tweet9313	User9313	1068	322	Ireland	Ruby
9314	Tweet9314	User9314	4061	4908	Portugal	Scala
9315	Tweet9315	User9315	1128	1877	Czech Republic	C#
9316	Tweet9316	User9316	2990	2474	Cyprus	Visual Basic
9317	Tweet9317	User9317	1673	2100	Belgium	Scala
9318	Tweet9318	User9318	1281	2756	Greece	Scala
9319	Tweet9319	User9319	4988	2655	Ireland	Python
9320	Tweet9320	User9320	1151	538	Estonia	C++
9321	Tweet9321	User9321	1446	3825	Denmark	Ruby
9322	Tweet9322	User9322	2013	1903	Austria	Java
9323	Tweet9323	User9323	2301	4425	Portugal	Python
9324	Tweet9324	User9324	2542	1180	Czech Republic	PHP
9325	Tweet9325	User9325	1397	4566	Portugal	Java
9326	Tweet9326	User9326	3643	970	Ireland	C
9327	Tweet9327	User9327	2094	2314	Estonia	Scala
9328	Tweet9328	User9328	1503	890	Slovenia	Obj C
9329	Tweet9329	User9329	3394	3948	Croatia	C
9330	Tweet9330	User9330	1544	3368	Finland	Python
9331	Tweet9331	User9331	3582	9	Belgium	Obj C
9332	Tweet9332	User9332	1234	603	Finland	JavaScript
9333	Tweet9333	User9333	4008	4507	Sweden	Java
9334	Tweet9334	User9334	2477	3232	Estonia	Scala
9335	Tweet9335	User9335	3732	3548	Austria	C#
9336	Tweet9336	User9336	1989	1	Sweden	JavaScript
9337	Tweet9337	User9337	183	2784	Luxembourg	Java
9338	Tweet9338	User9338	284	4140	Lithuania	JavaScript
9339	Tweet9339	User9339	1786	4459	Poland	JavaScript
9340	Tweet9340	User9340	1699	1119	Belgium	Visual Basic
9341	Tweet9341	User9341	4776	3225	Estonia	C++
9342	Tweet9342	User9342	2	4398	France	Java
9343	Tweet9343	User9343	1438	4629	Portugal	PHP
9344	Tweet9344	User9344	1795	870	Malta	Obj C
9345	Tweet9345	User9345	4516	4920	Cyprus	Java
9346	Tweet9346	User9346	2443	2598	Greece	JavaScript
9347	Tweet9347	User9347	740	2427	Germany	JavaScript
9348	Tweet9348	User9348	3637	4541	Portugal	Java
9349	Tweet9349	User9349	3787	2611	Czech Republic	C++
9350	Tweet9350	User9350	370	3846	Cyprus	Ruby
9351	Tweet9351	User9351	3341	1974	Croatia	Visual Basic
9352	Tweet9352	User9352	4733	2121	Greece	Scala
9353	Tweet9353	User9353	1561	1177	Slovakia	Java
9354	Tweet9354	User9354	4692	2208	Slovenia	JavaScript
9355	Tweet9355	User9355	929	3710	Romania	Scala
9356	Tweet9356	User9356	468	1525	Malta	Java
9357	Tweet9357	User9357	1805	1546	Finland	C#
9358	Tweet9358	User9358	1786	680	Finland	C++
9359	Tweet9359	User9359	278	2055	Italy	C#
9360	Tweet9360	User9360	3888	43	Malta	Ruby
9361	Tweet9361	User9361	1455	3361	Croatia	Ruby
9362	Tweet9362	User9362	3314	3697	Finland	Python
9363	Tweet9363	User9363	4043	1028	Latvia	Obj C
9364	Tweet9364	User9364	2213	4041	France	Obj C
9365	Tweet9365	User9365	3614	2784	Slovenia	PHP
9366	Tweet9366	User9366	2037	4734	Bulgaria	Ruby
9367	Tweet9367	User9367	1396	3393	Cyprus	Ruby
9368	Tweet9368	User9368	305	663	Estonia	Python
9369	Tweet9369	User9369	4002	3452	Romania	Scala
9370	Tweet9370	User9370	2618	4251	France	Visual Basic
9371	Tweet9371	User9371	3006	3790	Belgium	Java
9372	Tweet9372	User9372	1480	1632	Sweden	Python
9373	Tweet9373	User9373	3441	1536	Ireland	Java
9374	Tweet9374	User9374	4326	4558	Slovenia	Scala
9375	Tweet9375	User9375	750	3488	Romania	Ruby
9376	Tweet9376	User9376	3430	1756	United Kingdom	Python
9377	Tweet9377	User9377	791	2723	Sweden	C
9378	Tweet9378	User9378	1735	3018	Hungary	C#
9379	Tweet9379	User9379	197	4509	Netherlands	Obj C
9380	Tweet9380	User9380	4097	758	Latvia	Java
9381	Tweet9381	User9381	391	2756	Cyprus	Python
9382	Tweet9382	User9382	3575	4203	Austria	Visual Basic
9383	Tweet9383	User9383	2509	4431	Hungary	JavaScript
9384	Tweet9384	User9384	1070	3280	Ireland	JavaScript
9385	Tweet9385	User9385	3040	2528	Spain	C
9386	Tweet9386	User9386	2830	1410	France	Scala
9387	Tweet9387	User9387	2072	4239	Germany	Obj C
9388	Tweet9388	User9388	699	331	Spain	C#
9389	Tweet9389	User9389	4063	646	Czech Republic	Visual Basic
9390	Tweet9390	User9390	3112	4679	Austria	Python
9391	Tweet9391	User9391	1644	4428	France	Python
9392	Tweet9392	User9392	1187	3589	Denmark	PHP
9393	Tweet9393	User9393	4906	3142	Poland	JavaScript
9394	Tweet9394	User9394	2029	1618	Slovenia	C#
9395	Tweet9395	User9395	1645	2973	Malta	C#
9396	Tweet9396	User9396	933	1134	Slovenia	Scala
9397	Tweet9397	User9397	1397	4288	Netherlands	JavaScript
9398	Tweet9398	User9398	1144	1062	Slovakia	C
9399	Tweet9399	User9399	3533	3310	Bulgaria	Java
9400	Tweet9400	User9400	1364	4684	Denmark	Python
9401	Tweet9401	User9401	2148	376	France	Obj C
9402	Tweet9402	User9402	82	362	Romania	PHP
9403	Tweet9403	User9403	1933	4788	Greece	Visual Basic
9404	Tweet9404	User9404	4683	3654	Ireland	Visual Basic
9405	Tweet9405	User9405	3243	3281	Malta	PHP
9406	Tweet9406	User9406	3263	4810	France	Obj C
9407	Tweet9407	User9407	3564	4903	Greece	C++
9408	Tweet9408	User9408	4898	4319	Ireland	Visual Basic
9409	Tweet9409	User9409	1731	1198	United Kingdom	Java
9410	Tweet9410	User9410	1114	944	Ireland	Ruby
9411	Tweet9411	User9411	2884	1776	Cyprus	Python
9412	Tweet9412	User9412	712	1625	Croatia	Visual Basic
9413	Tweet9413	User9413	3302	287	Sweden	C++
9414	Tweet9414	User9414	2355	2293	Slovakia	Obj C
9415	Tweet9415	User9415	4725	3104	Romania	C#
9416	Tweet9416	User9416	1553	667	Slovenia	Ruby
9417	Tweet9417	User9417	1954	674	Bulgaria	Obj C
9418	Tweet9418	User9418	1796	716	Slovakia	C#
9419	Tweet9419	User9419	4195	4514	United Kingdom	C#
9420	Tweet9420	User9420	3870	3395	Denmark	Java
9421	Tweet9421	User9421	2535	1470	Spain	C#
9422	Tweet9422	User9422	1372	1352	Austria	Scala
9423	Tweet9423	User9423	679	759	Estonia	Ruby
9424	Tweet9424	User9424	949	3832	Finland	Obj C
9425	Tweet9425	User9425	1761	593	Sweden	Ruby
9426	Tweet9426	User9426	2211	1248	Romania	C++
9427	Tweet9427	User9427	2921	4995	Sweden	C
9428	Tweet9428	User9428	1564	3100	Croatia	Scala
9429	Tweet9429	User9429	3885	4232	Denmark	C
9430	Tweet9430	User9430	3490	4328	Ireland	PHP
9431	Tweet9431	User9431	4867	2862	United Kingdom	C#
9432	Tweet9432	User9432	4761	4603	France	JavaScript
9433	Tweet9433	User9433	4243	4501	Poland	Ruby
9434	Tweet9434	User9434	710	4764	Latvia	C
9435	Tweet9435	User9435	89	98	Latvia	Scala
9436	Tweet9436	User9436	2635	3628	Croatia	Java
9437	Tweet9437	User9437	2444	4761	Belgium	Ruby
9438	Tweet9438	User9438	2897	4325	Cyprus	Scala
9439	Tweet9439	User9439	3749	3390	Hungary	Java
9440	Tweet9440	User9440	4081	4754	Lithuania	JavaScript
9441	Tweet9441	User9441	3177	3168	Portugal	Obj C
9442	Tweet9442	User9442	981	4845	Finland	Obj C
9443	Tweet9443	User9443	1440	2292	Lithuania	JavaScript
9444	Tweet9444	User9444	4283	340	United Kingdom	Scala
9445	Tweet9445	User9445	3064	2911	Latvia	C#
9446	Tweet9446	User9446	1774	625	United Kingdom	C++
9447	Tweet9447	User9447	846	4102	Latvia	Scala
9448	Tweet9448	User9448	1724	3440	Hungary	C#
9449	Tweet9449	User9449	3192	2692	Cyprus	Scala
9450	Tweet9450	User9450	4163	4603	Portugal	Python
9451	Tweet9451	User9451	3485	3333	Hungary	C#
9452	Tweet9452	User9452	1827	1414	France	C
9453	Tweet9453	User9453	442	3938	Bulgaria	PHP
9454	Tweet9454	User9454	4920	4361	Finland	C++
9455	Tweet9455	User9455	3395	4903	Croatia	Scala
9456	Tweet9456	User9456	3227	829	France	Visual Basic
9457	Tweet9457	User9457	1987	4600	Romania	JavaScript
9458	Tweet9458	User9458	1681	1057	Malta	C#
9459	Tweet9459	User9459	4811	4456	Spain	C++
9460	Tweet9460	User9460	4457	3278	United Kingdom	C#
9461	Tweet9461	User9461	271	3588	Austria	Java
9462	Tweet9462	User9462	1548	2866	Bulgaria	Java
9463	Tweet9463	User9463	883	4929	Czech Republic	C++
9464	Tweet9464	User9464	4162	1110	Denmark	Visual Basic
9465	Tweet9465	User9465	4329	2433	Estonia	Obj C
9466	Tweet9466	User9466	137	4670	Croatia	PHP
9467	Tweet9467	User9467	3888	2576	United Kingdom	Python
9468	Tweet9468	User9468	820	531	Italy	Visual Basic
9469	Tweet9469	User9469	3626	3749	Portugal	Java
9470	Tweet9470	User9470	2316	2780	Cyprus	PHP
9471	Tweet9471	User9471	1155	2993	Luxembourg	Scala
9472	Tweet9472	User9472	3042	742	Spain	Obj C
9473	Tweet9473	User9473	421	698	Portugal	C
9474	Tweet9474	User9474	163	2836	Italy	C#
9475	Tweet9475	User9475	3044	991	Austria	Scala
9476	Tweet9476	User9476	576	618	Hungary	Java
9477	Tweet9477	User9477	3135	1574	Romania	JavaScript
9478	Tweet9478	User9478	3650	1493	France	C++
9479	Tweet9479	User9479	2245	3507	Czech Republic	Scala
9480	Tweet9480	User9480	3599	4831	Slovakia	JavaScript
9481	Tweet9481	User9481	4222	1808	Czech Republic	Obj C
9482	Tweet9482	User9482	2777	2313	Luxembourg	Scala
9483	Tweet9483	User9483	473	2122	Netherlands	Python
9484	Tweet9484	User9484	776	4648	Germany	JavaScript
9485	Tweet9485	User9485	29	927	Hungary	C
9486	Tweet9486	User9486	858	2456	Netherlands	C#
9487	Tweet9487	User9487	257	3332	Romania	Python
9488	Tweet9488	User9488	3896	986	Latvia	Obj C
9489	Tweet9489	User9489	2110	378	Bulgaria	Ruby
9490	Tweet9490	User9490	2305	405	Lithuania	C++
9491	Tweet9491	User9491	1412	4343	Finland	PHP
9492	Tweet9492	User9492	4822	2971	Malta	PHP
9493	Tweet9493	User9493	2707	3606	Ireland	Scala
9494	Tweet9494	User9494	2009	439	Portugal	Python
9495	Tweet9495	User9495	3454	224	Luxembourg	Obj C
9496	Tweet9496	User9496	4504	1856	Slovakia	Scala
9497	Tweet9497	User9497	3373	2442	Netherlands	C
9498	Tweet9498	User9498	2423	4383	Latvia	Python
9499	Tweet9499	User9499	4554	452	Sweden	Python
9500	Tweet9500	User9500	1512	793	Slovenia	Visual Basic
9501	Tweet9501	User9501	3412	3791	Portugal	Visual Basic
9502	Tweet9502	User9502	4067	4161	United Kingdom	Ruby
9503	Tweet9503	User9503	4096	896	Romania	C++
9504	Tweet9504	User9504	2851	857	France	Java
9505	Tweet9505	User9505	2130	1367	Spain	Obj C
9506	Tweet9506	User9506	4063	46	Austria	Visual Basic
9507	Tweet9507	User9507	1871	3406	Spain	JavaScript
9508	Tweet9508	User9508	1120	1086	Germany	C++
9509	Tweet9509	User9509	4455	4180	Czech Republic	C
9510	Tweet9510	User9510	37	3152	Malta	C++
9511	Tweet9511	User9511	3617	284	Czech Republic	Ruby
9512	Tweet9512	User9512	2	614	Latvia	Obj C
9513	Tweet9513	User9513	3090	2650	Lithuania	C#
9514	Tweet9514	User9514	2302	4289	Austria	Visual Basic
9515	Tweet9515	User9515	3458	4962	Romania	Obj C
9516	Tweet9516	User9516	3440	3668	Croatia	Scala
9517	Tweet9517	User9517	442	4850	Netherlands	Scala
9518	Tweet9518	User9518	3207	1633	Bulgaria	Python
9519	Tweet9519	User9519	1060	2315	Malta	Scala
9520	Tweet9520	User9520	556	1473	Croatia	Ruby
9521	Tweet9521	User9521	46	942	Spain	Visual Basic
9522	Tweet9522	User9522	355	4756	Luxembourg	Python
9523	Tweet9523	User9523	1915	2906	Slovenia	Python
9524	Tweet9524	User9524	2531	2455	Belgium	PHP
9525	Tweet9525	User9525	2371	2396	Spain	Python
9526	Tweet9526	User9526	3643	4295	Luxembourg	PHP
9527	Tweet9527	User9527	1560	711	Belgium	PHP
9528	Tweet9528	User9528	3938	4337	Sweden	Scala
9529	Tweet9529	User9529	1803	1299	Lithuania	Python
9530	Tweet9530	User9530	533	2885	Spain	Java
9531	Tweet9531	User9531	1553	28	Hungary	Obj C
9532	Tweet9532	User9532	334	3852	Croatia	Python
9533	Tweet9533	User9533	2913	3673	Malta	C#
9534	Tweet9534	User9534	1600	2471	Bulgaria	Python
9535	Tweet9535	User9535	3690	939	Belgium	C++
9536	Tweet9536	User9536	1260	3461	Greece	Obj C
9537	Tweet9537	User9537	4363	3849	Bulgaria	Java
9538	Tweet9538	User9538	4639	4801	Cyprus	C#
9539	Tweet9539	User9539	331	3777	Sweden	JavaScript
9540	Tweet9540	User9540	712	4420	Poland	Ruby
9541	Tweet9541	User9541	3186	25	Slovenia	Python
9542	Tweet9542	User9542	1812	1581	Germany	Obj C
9543	Tweet9543	User9543	3486	4950	United Kingdom	JavaScript
9544	Tweet9544	User9544	3915	4425	Croatia	PHP
9545	Tweet9545	User9545	4277	2917	Bulgaria	JavaScript
9546	Tweet9546	User9546	4387	4669	Slovenia	C
9547	Tweet9547	User9547	2680	471	United Kingdom	C#
9548	Tweet9548	User9548	929	3215	Luxembourg	C
9549	Tweet9549	User9549	137	3092	Germany	Obj C
9550	Tweet9550	User9550	2184	3397	Poland	C
9551	Tweet9551	User9551	4267	4437	Finland	Python
9552	Tweet9552	User9552	124	4686	France	Python
9553	Tweet9553	User9553	587	3204	Netherlands	C++
9554	Tweet9554	User9554	3515	1658	Luxembourg	C#
9555	Tweet9555	User9555	4681	2918	Sweden	Visual Basic
9556	Tweet9556	User9556	156	280	Greece	Java
9557	Tweet9557	User9557	282	2737	Czech Republic	Scala
9558	Tweet9558	User9558	881	2193	Ireland	Obj C
9559	Tweet9559	User9559	846	1873	Netherlands	Obj C
9560	Tweet9560	User9560	4421	4127	Bulgaria	Ruby
9561	Tweet9561	User9561	1529	848	Slovenia	PHP
9562	Tweet9562	User9562	2125	3966	Czech Republic	Ruby
9563	Tweet9563	User9563	2646	201	Poland	Visual Basic
9564	Tweet9564	User9564	67	3919	Greece	Scala
9565	Tweet9565	User9565	326	3955	Finland	Obj C
9566	Tweet9566	User9566	4035	779	Romania	C#
9567	Tweet9567	User9567	2203	4764	Poland	Obj C
9568	Tweet9568	User9568	4780	4980	Hungary	C++
9569	Tweet9569	User9569	3485	4178	Belgium	Python
9570	Tweet9570	User9570	995	160	Greece	C
9571	Tweet9571	User9571	2269	3238	Greece	Ruby
9572	Tweet9572	User9572	230	3672	Cyprus	Python
9573	Tweet9573	User9573	2042	2291	Lithuania	C
9574	Tweet9574	User9574	1108	3378	Latvia	Ruby
9575	Tweet9575	User9575	2495	1945	Lithuania	Ruby
9576	Tweet9576	User9576	3870	3043	Czech Republic	Java
9577	Tweet9577	User9577	3309	4016	Belgium	JavaScript
9578	Tweet9578	User9578	4120	411	Poland	Java
9579	Tweet9579	User9579	181	3679	Finland	Obj C
9580	Tweet9580	User9580	162	4223	France	PHP
9581	Tweet9581	User9581	3933	4713	Lithuania	C#
9582	Tweet9582	User9582	2413	4755	Hungary	C++
9583	Tweet9583	User9583	1351	4603	Belgium	Obj C
9584	Tweet9584	User9584	3251	1342	Luxembourg	Obj C
9585	Tweet9585	User9585	3798	4333	Denmark	Scala
9586	Tweet9586	User9586	558	2958	Estonia	Java
9587	Tweet9587	User9587	1312	3818	Slovenia	PHP
9588	Tweet9588	User9588	2951	1560	Hungary	Obj C
9589	Tweet9589	User9589	3384	2275	Malta	Ruby
9590	Tweet9590	User9590	1689	3578	Hungary	PHP
9591	Tweet9591	User9591	2012	3523	Estonia	Visual Basic
9592	Tweet9592	User9592	2809	4783	Bulgaria	Ruby
9593	Tweet9593	User9593	2173	4407	Latvia	C#
9594	Tweet9594	User9594	3160	429	Latvia	Ruby
9595	Tweet9595	User9595	1627	1389	Romania	Python
9596	Tweet9596	User9596	2144	84	Greece	PHP
9597	Tweet9597	User9597	3638	4196	Hungary	C#
9598	Tweet9598	User9598	3491	315	Spain	Python
9599	Tweet9599	User9599	2015	4745	Austria	Ruby
9600	Tweet9600	User9600	3319	3649	Finland	Visual Basic
9601	Tweet9601	User9601	4141	4773	Greece	C
9602	Tweet9602	User9602	1969	4357	France	Visual Basic
9603	Tweet9603	User9603	4192	738	Czech Republic	C++
9604	Tweet9604	User9604	4564	3241	Belgium	JavaScript
9605	Tweet9605	User9605	313	692	Latvia	Ruby
9606	Tweet9606	User9606	3902	1825	Latvia	PHP
9607	Tweet9607	User9607	4837	1454	Poland	Visual Basic
9608	Tweet9608	User9608	129	2899	Malta	JavaScript
9609	Tweet9609	User9609	52	2928	Bulgaria	Obj C
9610	Tweet9610	User9610	3865	1971	Poland	C#
9611	Tweet9611	User9611	682	333	Spain	C
9612	Tweet9612	User9612	416	4021	Spain	Obj C
9613	Tweet9613	User9613	419	2037	Hungary	PHP
9614	Tweet9614	User9614	4871	66	Bulgaria	Python
9615	Tweet9615	User9615	1647	1168	Estonia	Python
9616	Tweet9616	User9616	1357	4877	Greece	Python
9617	Tweet9617	User9617	2748	338	Latvia	Visual Basic
9618	Tweet9618	User9618	4181	4806	United Kingdom	C#
9619	Tweet9619	User9619	1058	1295	Lithuania	JavaScript
9620	Tweet9620	User9620	4530	4504	Slovenia	Scala
9621	Tweet9621	User9621	2393	3439	Ireland	Scala
9622	Tweet9622	User9622	910	1286	Belgium	Visual Basic
9623	Tweet9623	User9623	3133	4548	Lithuania	Python
9624	Tweet9624	User9624	976	4797	Denmark	Obj C
9625	Tweet9625	User9625	650	2165	Germany	Python
9626	Tweet9626	User9626	3904	1507	Slovenia	Java
9627	Tweet9627	User9627	4958	3548	Finland	C++
9628	Tweet9628	User9628	314	4070	Portugal	Scala
9629	Tweet9629	User9629	1144	4017	Malta	Python
9630	Tweet9630	User9630	2042	2841	Malta	Visual Basic
9631	Tweet9631	User9631	2949	1933	Spain	JavaScript
9632	Tweet9632	User9632	2916	3086	Italy	Python
9633	Tweet9633	User9633	4794	313	Portugal	Visual Basic
9634	Tweet9634	User9634	3843	2262	Denmark	Python
9635	Tweet9635	User9635	2555	3169	Denmark	Python
9636	Tweet9636	User9636	3955	1443	Italy	C
9637	Tweet9637	User9637	2475	2028	Portugal	Visual Basic
9638	Tweet9638	User9638	3476	3715	Austria	Java
9639	Tweet9639	User9639	564	4291	Luxembourg	Python
9640	Tweet9640	User9640	1038	4859	Netherlands	Visual Basic
9641	Tweet9641	User9641	3084	1587	Luxembourg	PHP
9642	Tweet9642	User9642	3407	1901	Poland	Visual Basic
9643	Tweet9643	User9643	1231	1691	Greece	Java
9644	Tweet9644	User9644	1031	2734	Hungary	Visual Basic
9645	Tweet9645	User9645	590	1920	Slovakia	Visual Basic
9646	Tweet9646	User9646	3023	3267	Greece	PHP
9647	Tweet9647	User9647	1488	1310	Malta	Java
9648	Tweet9648	User9648	985	366	Poland	C#
9649	Tweet9649	User9649	267	3539	Poland	JavaScript
9650	Tweet9650	User9650	4214	2142	Italy	Visual Basic
9651	Tweet9651	User9651	2836	1852	Poland	C
9652	Tweet9652	User9652	2589	4987	France	C#
9653	Tweet9653	User9653	2274	1654	Belgium	JavaScript
9654	Tweet9654	User9654	715	2095	Estonia	Visual Basic
9655	Tweet9655	User9655	3659	1450	Czech Republic	PHP
9656	Tweet9656	User9656	2244	4353	Finland	C
9657	Tweet9657	User9657	1605	1627	Italy	Python
9658	Tweet9658	User9658	171	2426	Croatia	Python
9659	Tweet9659	User9659	3530	1396	Poland	JavaScript
9660	Tweet9660	User9660	1746	3807	Luxembourg	Visual Basic
9661	Tweet9661	User9661	1170	3019	Netherlands	PHP
9662	Tweet9662	User9662	849	4833	Italy	Scala
9663	Tweet9663	User9663	812	1095	Portugal	Java
9664	Tweet9664	User9664	3360	1419	Netherlands	Python
9665	Tweet9665	User9665	4104	4551	Ireland	JavaScript
9666	Tweet9666	User9666	4887	504	Lithuania	Visual Basic
9667	Tweet9667	User9667	3446	2977	Slovakia	JavaScript
9668	Tweet9668	User9668	433	954	Slovenia	C#
9669	Tweet9669	User9669	1832	1523	Belgium	C++
9670	Tweet9670	User9670	3554	1879	Slovakia	PHP
9671	Tweet9671	User9671	2672	1035	Spain	Java
9672	Tweet9672	User9672	786	655	Belgium	JavaScript
9673	Tweet9673	User9673	1106	4632	Slovenia	PHP
9674	Tweet9674	User9674	3803	2866	Latvia	JavaScript
9675	Tweet9675	User9675	3220	458	Slovakia	Visual Basic
9676	Tweet9676	User9676	4484	4464	Germany	Obj C
9677	Tweet9677	User9677	3749	2526	Netherlands	C#
9678	Tweet9678	User9678	2977	1012	Greece	C#
9679	Tweet9679	User9679	456	1022	Malta	Ruby
9680	Tweet9680	User9680	2467	281	Germany	Obj C
9681	Tweet9681	User9681	1451	123	Belgium	C
9682	Tweet9682	User9682	4857	398	Belgium	Ruby
9683	Tweet9683	User9683	2322	3060	Italy	JavaScript
9684	Tweet9684	User9684	573	4926	Romania	Visual Basic
9685	Tweet9685	User9685	1399	3203	Ireland	C++
9686	Tweet9686	User9686	4327	3640	Denmark	Python
9687	Tweet9687	User9687	3156	2550	Finland	C++
9688	Tweet9688	User9688	2440	2608	Hungary	Java
9689	Tweet9689	User9689	4948	4376	Netherlands	Obj C
9690	Tweet9690	User9690	646	998	Sweden	Obj C
9691	Tweet9691	User9691	1823	3331	Belgium	Obj C
9692	Tweet9692	User9692	1095	34	Slovenia	JavaScript
9693	Tweet9693	User9693	928	3363	Bulgaria	Scala
9694	Tweet9694	User9694	4708	2213	Sweden	C#
9695	Tweet9695	User9695	1025	895	Austria	C++
9696	Tweet9696	User9696	3159	2607	Sweden	C#
9697	Tweet9697	User9697	3941	2042	Slovakia	JavaScript
9698	Tweet9698	User9698	1340	1611	Austria	C#
9699	Tweet9699	User9699	2220	1058	Latvia	C#
9700	Tweet9700	User9700	4240	3559	Sweden	Ruby
9701	Tweet9701	User9701	3940	4697	United Kingdom	Java
9702	Tweet9702	User9702	213	3270	Portugal	Java
9703	Tweet9703	User9703	361	390	Netherlands	JavaScript
9704	Tweet9704	User9704	3674	2103	Bulgaria	JavaScript
9705	Tweet9705	User9705	3859	2967	Belgium	JavaScript
9706	Tweet9706	User9706	3471	4510	Sweden	Python
9707	Tweet9707	User9707	2850	4912	Estonia	Scala
9708	Tweet9708	User9708	3639	4978	Latvia	C
9709	Tweet9709	User9709	1146	4565	Sweden	PHP
9710	Tweet9710	User9710	892	1509	Malta	C
9711	Tweet9711	User9711	1327	3113	France	JavaScript
9712	Tweet9712	User9712	4499	2705	Luxembourg	Visual Basic
9713	Tweet9713	User9713	1005	220	Italy	C#
9714	Tweet9714	User9714	3947	4631	Poland	C
9715	Tweet9715	User9715	4504	3974	Spain	C
9716	Tweet9716	User9716	3712	127	Portugal	JavaScript
9717	Tweet9717	User9717	3397	4090	Slovenia	PHP
9718	Tweet9718	User9718	916	1158	Sweden	Python
9719	Tweet9719	User9719	4038	1217	Luxembourg	Visual Basic
9720	Tweet9720	User9720	1500	1786	France	JavaScript
9721	Tweet9721	User9721	4496	3172	Cyprus	C#
9722	Tweet9722	User9722	4249	4	Austria	C
9723	Tweet9723	User9723	4587	2651	Spain	Java
9724	Tweet9724	User9724	2094	2620	Slovenia	PHP
9725	Tweet9725	User9725	1752	427	France	C
9726	Tweet9726	User9726	4177	358	Luxembourg	C++
9727	Tweet9727	User9727	368	411	Ireland	Obj C
9728	Tweet9728	User9728	2432	89	Greece	C++
9729	Tweet9729	User9729	201	4129	Italy	PHP
9730	Tweet9730	User9730	2944	4162	Czech Republic	Python
9731	Tweet9731	User9731	1913	3423	Latvia	Scala
9732	Tweet9732	User9732	859	1440	Romania	C++
9733	Tweet9733	User9733	400	4177	Portugal	Scala
9734	Tweet9734	User9734	1383	1141	Austria	Obj C
9735	Tweet9735	User9735	653	3507	Slovakia	JavaScript
9736	Tweet9736	User9736	4797	4393	Portugal	C++
9737	Tweet9737	User9737	4838	1726	Spain	Ruby
9738	Tweet9738	User9738	3231	4520	Austria	Ruby
9739	Tweet9739	User9739	4742	3473	Lithuania	Python
9740	Tweet9740	User9740	4500	1357	Bulgaria	Visual Basic
9741	Tweet9741	User9741	49	1506	Slovenia	JavaScript
9742	Tweet9742	User9742	2378	3383	Czech Republic	Python
9743	Tweet9743	User9743	299	2937	Poland	JavaScript
9744	Tweet9744	User9744	2252	2835	Poland	C#
9745	Tweet9745	User9745	3268	769	Denmark	Obj C
9746	Tweet9746	User9746	954	2493	Ireland	Visual Basic
9747	Tweet9747	User9747	3946	167	Slovenia	C
9748	Tweet9748	User9748	1190	3313	Poland	Python
9749	Tweet9749	User9749	3660	2214	Denmark	Scala
9750	Tweet9750	User9750	745	4681	Luxembourg	JavaScript
9751	Tweet9751	User9751	227	2425	Lithuania	Python
9752	Tweet9752	User9752	4623	2889	Germany	Java
9753	Tweet9753	User9753	887	2246	Cyprus	Visual Basic
9754	Tweet9754	User9754	2083	4229	Austria	Java
9755	Tweet9755	User9755	1428	2918	Estonia	C#
9756	Tweet9756	User9756	2526	3610	Slovakia	C
9757	Tweet9757	User9757	3759	2510	France	Java
9758	Tweet9758	User9758	1991	2324	Malta	JavaScript
9759	Tweet9759	User9759	4597	780	Austria	C#
9760	Tweet9760	User9760	4718	2172	Luxembourg	Python
9761	Tweet9761	User9761	4283	439	Lithuania	Java
9762	Tweet9762	User9762	1253	4676	Luxembourg	PHP
9763	Tweet9763	User9763	2858	1266	Italy	PHP
9764	Tweet9764	User9764	3084	2624	Croatia	Python
9765	Tweet9765	User9765	2605	689	Latvia	Ruby
9766	Tweet9766	User9766	4376	1351	United Kingdom	Visual Basic
9767	Tweet9767	User9767	456	620	Germany	Visual Basic
9768	Tweet9768	User9768	1526	4655	Slovenia	C#
9769	Tweet9769	User9769	3802	549	Slovakia	Java
9770	Tweet9770	User9770	139	1461	Malta	JavaScript
9771	Tweet9771	User9771	1951	1173	Estonia	C
9772	Tweet9772	User9772	4960	2919	Slovakia	C
9773	Tweet9773	User9773	1485	4526	Germany	Java
9774	Tweet9774	User9774	4298	1898	Netherlands	C#
9775	Tweet9775	User9775	3670	4226	Netherlands	C++
9776	Tweet9776	User9776	2989	3790	Ireland	C
9777	Tweet9777	User9777	821	4865	Slovenia	Visual Basic
9778	Tweet9778	User9778	4438	1149	United Kingdom	C++
9779	Tweet9779	User9779	4394	4329	Malta	C
9780	Tweet9780	User9780	744	4574	Estonia	Visual Basic
9781	Tweet9781	User9781	439	3923	Spain	Visual Basic
9782	Tweet9782	User9782	3906	1504	Hungary	Obj C
9783	Tweet9783	User9783	3420	4255	Slovakia	Python
9784	Tweet9784	User9784	1413	3911	Netherlands	PHP
9785	Tweet9785	User9785	2298	3731	Czech Republic	C#
9786	Tweet9786	User9786	3579	4709	Luxembourg	Visual Basic
9787	Tweet9787	User9787	2547	3944	Slovakia	PHP
9788	Tweet9788	User9788	3648	4768	Bulgaria	JavaScript
9789	Tweet9789	User9789	1744	1378	Lithuania	C
9790	Tweet9790	User9790	3856	3110	Bulgaria	Visual Basic
9791	Tweet9791	User9791	4237	4551	Austria	C++
9792	Tweet9792	User9792	1147	2737	Portugal	Obj C
9793	Tweet9793	User9793	3123	1331	Finland	Java
9794	Tweet9794	User9794	1267	2165	Bulgaria	C
9795	Tweet9795	User9795	203	744	Denmark	Java
9796	Tweet9796	User9796	4116	873	Poland	Obj C
9797	Tweet9797	User9797	3239	1461	Italy	Obj C
9798	Tweet9798	User9798	4183	3747	Belgium	PHP
9799	Tweet9799	User9799	3299	3417	Portugal	Ruby
9800	Tweet9800	User9800	4209	607	Cyprus	Python
9801	Tweet9801	User9801	3087	2968	United Kingdom	C++
9802	Tweet9802	User9802	1797	1845	Finland	PHP
9803	Tweet9803	User9803	1736	1424	Czech Republic	C
9804	Tweet9804	User9804	2814	1137	Hungary	Python
9805	Tweet9805	User9805	416	1107	Czech Republic	Visual Basic
9806	Tweet9806	User9806	4337	1640	Greece	Java
9807	Tweet9807	User9807	2448	781	Poland	C
9808	Tweet9808	User9808	2532	4900	Lithuania	PHP
9809	Tweet9809	User9809	3512	4150	Portugal	Visual Basic
9810	Tweet9810	User9810	1447	1561	Ireland	Ruby
9811	Tweet9811	User9811	1745	2467	Portugal	C
9812	Tweet9812	User9812	1091	1849	United Kingdom	Visual Basic
9813	Tweet9813	User9813	3435	3405	Portugal	C++
9814	Tweet9814	User9814	240	464	Luxembourg	Python
9815	Tweet9815	User9815	1077	4371	Latvia	Python
9816	Tweet9816	User9816	4105	2798	Finland	Ruby
9817	Tweet9817	User9817	4634	1289	Lithuania	Visual Basic
9818	Tweet9818	User9818	3264	4484	Ireland	JavaScript
9819	Tweet9819	User9819	3394	4258	Slovakia	Obj C
9820	Tweet9820	User9820	284	3160	Slovenia	Ruby
9821	Tweet9821	User9821	972	3363	Croatia	Obj C
9822	Tweet9822	User9822	1678	255	Greece	JavaScript
9823	Tweet9823	User9823	1512	1708	Czech Republic	Scala
9824	Tweet9824	User9824	4731	3739	Bulgaria	Python
9825	Tweet9825	User9825	71	1693	Greece	Java
9826	Tweet9826	User9826	2623	1420	Portugal	C#
9827	Tweet9827	User9827	991	2550	Latvia	JavaScript
9828	Tweet9828	User9828	1622	2154	France	Visual Basic
9829	Tweet9829	User9829	4650	4684	Hungary	JavaScript
9830	Tweet9830	User9830	3709	4884	Austria	Visual Basic
9831	Tweet9831	User9831	707	3746	Finland	C
9832	Tweet9832	User9832	4633	2277	Finland	JavaScript
9833	Tweet9833	User9833	4539	3115	Hungary	Java
9834	Tweet9834	User9834	1294	2202	Finland	C
9835	Tweet9835	User9835	1628	1063	Slovenia	C#
9836	Tweet9836	User9836	2612	4102	Belgium	Java
9837	Tweet9837	User9837	1722	2617	Finland	Java
9838	Tweet9838	User9838	605	1176	Bulgaria	Visual Basic
9839	Tweet9839	User9839	1489	2776	Greece	Java
9840	Tweet9840	User9840	1485	2818	Finland	Visual Basic
9841	Tweet9841	User9841	204	4655	Slovenia	C
9842	Tweet9842	User9842	247	3260	Austria	Ruby
9843	Tweet9843	User9843	4092	2249	Germany	C
9844	Tweet9844	User9844	54	4667	Netherlands	PHP
9845	Tweet9845	User9845	4166	996	Hungary	Visual Basic
9846	Tweet9846	User9846	4948	3160	Estonia	JavaScript
9847	Tweet9847	User9847	1559	1561	Belgium	Java
9848	Tweet9848	User9848	19	3538	Czech Republic	JavaScript
9849	Tweet9849	User9849	4487	404	Austria	C
9850	Tweet9850	User9850	1095	4020	Italy	Python
9851	Tweet9851	User9851	4548	4008	Portugal	Visual Basic
9852	Tweet9852	User9852	1263	2817	Czech Republic	Obj C
9853	Tweet9853	User9853	2670	1816	Greece	Scala
9854	Tweet9854	User9854	3272	2178	Romania	Ruby
9855	Tweet9855	User9855	3280	4649	Ireland	Java
9856	Tweet9856	User9856	512	2159	Denmark	Ruby
9857	Tweet9857	User9857	2173	2387	Denmark	Obj C
9858	Tweet9858	User9858	3826	1050	Sweden	Python
9859	Tweet9859	User9859	1139	450	Austria	C#
9860	Tweet9860	User9860	3767	1708	Bulgaria	C++
9861	Tweet9861	User9861	275	2913	Malta	PHP
9862	Tweet9862	User9862	4340	4861	Slovakia	C++
9863	Tweet9863	User9863	4100	446	Portugal	C++
9864	Tweet9864	User9864	4085	4076	Lithuania	Obj C
9865	Tweet9865	User9865	4406	2504	Austria	JavaScript
9866	Tweet9866	User9866	1728	2240	Hungary	Java
9867	Tweet9867	User9867	1125	4785	Latvia	Ruby
9868	Tweet9868	User9868	3152	2813	Estonia	Obj C
9869	Tweet9869	User9869	2262	345	Hungary	Java
9870	Tweet9870	User9870	784	260	Denmark	Python
9871	Tweet9871	User9871	2470	3355	Luxembourg	Scala
9872	Tweet9872	User9872	304	3119	United Kingdom	JavaScript
9873	Tweet9873	User9873	1313	3879	Slovenia	Python
9874	Tweet9874	User9874	1026	2975	Estonia	JavaScript
9875	Tweet9875	User9875	560	2626	Portugal	C#
9876	Tweet9876	User9876	3741	3255	Sweden	Python
9877	Tweet9877	User9877	3584	4389	Denmark	Scala
9878	Tweet9878	User9878	3489	438	Portugal	C
9879	Tweet9879	User9879	3753	1452	Germany	PHP
9880	Tweet9880	User9880	4816	526	Belgium	C
9881	Tweet9881	User9881	3897	3888	Germany	C
9882	Tweet9882	User9882	3512	495	Bulgaria	Python
9883	Tweet9883	User9883	4862	4200	Slovakia	C#
9884	Tweet9884	User9884	4090	1860	Slovakia	PHP
9885	Tweet9885	User9885	4733	3002	Cyprus	Visual Basic
9886	Tweet9886	User9886	4318	4422	Czech Republic	Ruby
9887	Tweet9887	User9887	4210	1406	Czech Republic	Visual Basic
9888	Tweet9888	User9888	1946	2334	Italy	Ruby
9889	Tweet9889	User9889	974	1285	Luxembourg	C++
9890	Tweet9890	User9890	226	3891	Czech Republic	Python
9891	Tweet9891	User9891	1227	3705	Finland	C++
9892	Tweet9892	User9892	3569	4939	Poland	C++
9893	Tweet9893	User9893	2744	4927	Spain	JavaScript
9894	Tweet9894	User9894	3902	1525	Estonia	C
9895	Tweet9895	User9895	85	1459	France	Visual Basic
9896	Tweet9896	User9896	2079	4948	Luxembourg	JavaScript
9897	Tweet9897	User9897	3678	2497	Croatia	Visual Basic
9898	Tweet9898	User9898	1453	2836	Germany	Obj C
9899	Tweet9899	User9899	1034	1007	Cyprus	Obj C
9900	Tweet9900	User9900	3596	2536	France	Obj C
9901	Tweet9901	User9901	324	2974	France	C
9902	Tweet9902	User9902	1717	3462	Czech Republic	C
9903	Tweet9903	User9903	54	2436	Netherlands	C#
9904	Tweet9904	User9904	430	3854	Netherlands	C#
9905	Tweet9905	User9905	832	4732	Austria	Visual Basic
9906	Tweet9906	User9906	3794	604	Bulgaria	Scala
9907	Tweet9907	User9907	437	2898	Czech Republic	Obj C
9908	Tweet9908	User9908	3633	2011	Italy	JavaScript
9909	Tweet9909	User9909	2530	1992	Latvia	Ruby
9910	Tweet9910	User9910	3393	1203	Malta	Java
9911	Tweet9911	User9911	2810	3908	Hungary	PHP
9912	Tweet9912	User9912	3027	3144	Hungary	Ruby
9913	Tweet9913	User9913	2846	465	Cyprus	Java
9914	Tweet9914	User9914	4167	2778	Latvia	Ruby
9915	Tweet9915	User9915	52	4890	United Kingdom	Visual Basic
9916	Tweet9916	User9916	4776	948	Czech Republic	Obj C
9917	Tweet9917	User9917	609	3156	Finland	Visual Basic
9918	Tweet9918	User9918	2443	1866	Slovakia	C
9919	Tweet9919	User9919	964	755	Czech Republic	Visual Basic
9920	Tweet9920	User9920	4911	4530	Croatia	Ruby
9921	Tweet9921	User9921	2810	3505	Cyprus	JavaScript
9922	Tweet9922	User9922	2233	3787	Romania	PHP
9923	Tweet9923	User9923	2154	118	Spain	C++
9924	Tweet9924	User9924	3181	3300	Latvia	Obj C
9925	Tweet9925	User9925	3090	3782	Estonia	JavaScript
9926	Tweet9926	User9926	4537	2448	Czech Republic	C#
9927	Tweet9927	User9927	3907	2089	Netherlands	C++
9928	Tweet9928	User9928	3999	58	Italy	JavaScript
9929	Tweet9929	User9929	4750	4035	Sweden	C
9930	Tweet9930	User9930	161	2736	Italy	C#
9931	Tweet9931	User9931	1734	79	Croatia	Visual Basic
9932	Tweet9932	User9932	3540	3324	Sweden	JavaScript
9933	Tweet9933	User9933	149	1680	Germany	Python
9934	Tweet9934	User9934	200	1130	Portugal	C
9935	Tweet9935	User9935	4789	1406	Denmark	Python
9936	Tweet9936	User9936	4410	630	Germany	C
9937	Tweet9937	User9937	1976	3530	Sweden	Python
9938	Tweet9938	User9938	4397	2065	Germany	JavaScript
9939	Tweet9939	User9939	4272	1953	Cyprus	C#
9940	Tweet9940	User9940	3804	3307	Estonia	C#
9941	Tweet9941	User9941	3995	3485	United Kingdom	Java
9942	Tweet9942	User9942	4999	650	Portugal	Java
9943	Tweet9943	User9943	121	1693	Denmark	Ruby
9944	Tweet9944	User9944	4153	1578	Denmark	Python
9945	Tweet9945	User9945	4729	1738	Slovenia	Java
9946	Tweet9946	User9946	619	2400	Germany	Obj C
9947	Tweet9947	User9947	1665	2444	Spain	PHP
9948	Tweet9948	User9948	2767	1738	Croatia	Obj C
9949	Tweet9949	User9949	1173	4553	United Kingdom	Python
9950	Tweet9950	User9950	4940	20	Bulgaria	Visual Basic
9951	Tweet9951	User9951	3037	3539	United Kingdom	C#
9952	Tweet9952	User9952	4053	3834	Luxembourg	Python
9953	Tweet9953	User9953	4334	3706	Malta	PHP
9954	Tweet9954	User9954	4390	4356	Slovenia	Scala
9955	Tweet9955	User9955	3784	4141	Romania	Python
9956	Tweet9956	User9956	4446	1529	Denmark	Ruby
9957	Tweet9957	User9957	3209	894	Latvia	PHP
9958	Tweet9958	User9958	53	3558	Netherlands	Obj C
9959	Tweet9959	User9959	1857	3820	United Kingdom	Ruby
9960	Tweet9960	User9960	3748	3273	Croatia	Scala
9961	Tweet9961	User9961	4122	3257	United Kingdom	Visual Basic
9962	Tweet9962	User9962	3228	1313	Sweden	JavaScript
9963	Tweet9963	User9963	1901	2895	Austria	Java
9964	Tweet9964	User9964	4488	533	Spain	C
9965	Tweet9965	User9965	215	1465	Bulgaria	Visual Basic
9966	Tweet9966	User9966	482	4545	Czech Republic	C#
9967	Tweet9967	User9967	1833	4805	Poland	Visual Basic
9968	Tweet9968	User9968	3583	4780	Belgium	Obj C
9969	Tweet9969	User9969	1809	4282	Estonia	C#
9970	Tweet9970	User9970	495	1462	Finland	Obj C
9971	Tweet9971	User9971	1689	770	Ireland	Java
9972	Tweet9972	User9972	880	1287	Poland	Python
9973	Tweet9973	User9973	1383	4690	Cyprus	C
9974	Tweet9974	User9974	3914	2262	Slovakia	C
9975	Tweet9975	User9975	857	4059	Hungary	JavaScript
9976	Tweet9976	User9976	4677	2964	France	Ruby
9977	Tweet9977	User9977	2890	424	Germany	Obj C
9978	Tweet9978	User9978	664	2187	Finland	Obj C
9979	Tweet9979	User9979	933	2195	Portugal	JavaScript
9980	Tweet9980	User9980	4607	1097	Ireland	C#
9981	Tweet9981	User9981	1337	225	Czech Republic	PHP
9982	Tweet9982	User9982	333	3601	Denmark	C#
9983	Tweet9983	User9983	176	4284	Netherlands	C#
9984	Tweet9984	User9984	426	4700	Slovenia	C#
9985	Tweet9985	User9985	3370	834	Portugal	Ruby
9986	Tweet9986	User9986	1772	1367	France	Ruby
9987	Tweet9987	User9987	4282	249	Latvia	C#
9988	Tweet9988	User9988	3632	2355	Ireland	Scala
9989	Tweet9989	User9989	2905	3330	Denmark	C#
9990	Tweet9990	User9990	4388	294	Estonia	Scala
9991	Tweet9991	User9991	1523	2302	Finland	Scala
9992	Tweet9992	User9992	155	579	Hungary	JavaScript
9993	Tweet9993	User9993	1824	4461	Greece	Scala
9994	Tweet9994	User9994	4518	2632	United Kingdom	Obj C
9995	Tweet9995	User9995	4409	2245	Finland	Visual Basic
9996	Tweet9996	User9996	2332	2034	Slovenia	Python
9997	Tweet9997	User9997	2155	4768	Ireland	Java
9998	Tweet9998	User9998	4763	3577	Ireland	C++
9999	Tweet9999	User9999	2712	1801	Czech Republic	Ruby
10000	Tweet10000	User10000	3024	1201	Finland	Scala
\.


--
-- Name: tweets_pkey; Type: CONSTRAINT; Schema: public; Owner: twitter; Tablespace: 
--

ALTER TABLE ONLY tweets
    ADD CONSTRAINT tweets_pkey PRIMARY KEY ("ID");


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

