--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: global_stats_fakedata; Type: TABLE; Schema: public; Owner: twitter; Tablespace: 
--

CREATE TABLE global_stats_fakedata (
    id integer DEFAULT nextval('nation_id'::regclass) NOT NULL,
    nation character varying(30) NOT NULL,
    java integer NOT NULL,
    c integer NOT NULL,
    cplusplus integer NOT NULL,
    csharp integer NOT NULL,
    javascript integer NOT NULL,
    php integer NOT NULL,
    python integer NOT NULL,
    visual_basic integer NOT NULL,
    ruby integer NOT NULL,
    swift integer NOT NULL,
    html integer NOT NULL,
    scala integer NOT NULL,
    obj_c integer NOT NULL
);


ALTER TABLE public.global_stats_fakedata OWNER TO twitter;

--
-- Data for Name: global_stats_fakedata; Type: TABLE DATA; Schema: public; Owner: twitter
--

COPY global_stats_fakedata (id, nation, java, c, cplusplus, csharp, javascript, php, python, visual_basic, ruby, swift, html, scala, obj_c) FROM stdin;
1	austria	7773	8229	248	39	6964	8480	5905	8706	9531	8541	9645	4404	4262
2	belgium	628	7539	5019	3001	1245	4220	1992	9138	9559	8302	4764	6718	5320
3	bulgaria	5562	296	2350	5903	3378	4854	5438	4765	9971	7486	4585	2960	3725
4	croatia	7198	5465	9759	3137	2967	7826	2006	1026	8351	2907	6683	9951	6140
5	cyprus	8340	3406	7458	9332	5893	7901	9353	6674	3029	1429	9544	2023	9564
6	czech_republic	2836	4197	9641	3029	7285	9657	4635	4203	1774	1674	8047	3778	7420
7	denmark	1904	2191	2977	8298	1861	4950	37	9710	3329	7381	7727	6549	1575
8	estonia	4710	978	119	4810	20	2981	6341	6491	4086	3551	9001	5596	579
9	finland	6259	9088	3095	9511	2350	6443	1004	7923	2156	8347	1778	255	8049
10	france	7156	8383	8386	3143	9460	4158	1193	6131	8351	5542	8008	3027	3953
11	germany	9721	4251	7890	9998	818	4827	4712	9138	2547	6096	3814	3274	6833
12	greece	7237	2613	6379	1863	9484	3838	111	6010	793	8925	7649	7289	3178
13	hungary	7440	9551	1393	2506	6842	9729	8948	2594	8138	536	5688	7640	8860
14	ireland	3993	1316	2578	5897	2180	6870	1934	7100	9065	4325	7767	679	8031
15	italy	4450	2167	433	9735	4465	1465	3403	6898	5454	2048	6347	2346	6008
16	latvia	518	1730	9441	2080	7699	5174	837	88	8600	8057	9519	9343	9818
17	lithuania	3485	1957	4593	4827	6386	6665	7086	2571	5542	4173	4592	3787	3339
18	luxembourg	658	7889	3503	8277	343	2502	2364	9651	2475	7499	1106	1194	148
19	malta	1883	3210	1946	4718	1456	8944	6847	4508	6886	6176	9756	1737	4355
20	netherlands	5009	5421	9334	4624	7896	9757	8575	6865	3098	5468	1134	3823	1602
21	poland	6801	4950	7901	7292	2628	349	6124	1480	6769	1712	4408	2610	6377
22	portugal	1261	6376	5754	3492	4260	9866	2003	9164	9079	4899	6434	5674	2139
23	romania	4224	689	5066	3363	1494	4108	7128	425	7099	1370	4713	9513	4514
24	slovakia	1802	6157	2659	3205	5344	7834	2029	7868	3082	1134	6233	7267	8141
25	slovenia	6695	6033	6082	391	9614	8675	226	8602	6710	4986	99	5139	4128
26	spain	4300	6040	3203	6697	9294	357	7168	5396	8790	7860	6797	6271	5830
27	sweden	6859	5505	9617	308	8553	2063	7413	3686	9102	6105	6115	5628	535
28	united_kingdom	6429	3553	5475	4476	3518	5258	8885	3588	7231	818	7063	63	7991
\.


--
-- Name: global_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: twitter; Tablespace: 
--

ALTER TABLE ONLY global_stats_fakedata
    ADD CONSTRAINT global_stats_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

