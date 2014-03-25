--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: player_id_seq; Type: SEQUENCE; Schema: public; Owner: adminy186udu
--

CREATE SEQUENCE player_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminy186udu
--

SELECT pg_catalog.setval('player_id_seq', 928, true);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: player; Type: TABLE; Schema: public; Owner: adminy186udu; Tablespace:
--

CREATE TABLE player (
    id integer DEFAULT nextval('player_id_seq'::regclass) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    "position" character varying(10),
    team_id integer
);


--
-- Name: team; Type: TABLE; Schema: public; Owner: adminy186udu; Tablespace:
--

CREATE TABLE team (
    id integer NOT NULL,
    city character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    division character varying(20),
    conference character varying(10)
);


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: adminy186udu
--

COPY player (id, first_name, last_name, "position", team_id) FROM stdin;
1	Bryan	Bickell	LW	1
2	Brandon	Bollig	LW	1
3	Pierre-Marc	Bouchard	C	1
4	Sheldon	Brookbank	D	1
5	Corey	Crawford	G	1
6	Michal	Handzus	C	1
7	Niklas	Hjalmarsson	D	1
8	Marian	Hossa	RW	1
9	Patrick	Kane	RW	1
10	Duncan	Keith	D	1
11	Nikolai	Khabibulin	G	1
12	Marcus	Kruger	C	1
13	Jason	LaBarbera	G	1
14	Nick	Leddy	D	1
15	Brandon	Mashinter	LW	1
16	Brad	Mills	C	1
17	Jeremy	Morin	LW	1
18	Joakim	Nordstrom	C	1
19	Johnny	Oduya	D	1
20	Antti	Raanta	G	1
21	Peter	Regin	C	1
22	Michal	Rozsival	D	1
23	David	Rundblad	D	1
24	Brandon	Saad	LW	1
25	Brent	Seabrook	D	1
26	Patrick	Sharp	LW	1
27	Andrew	Shaw	C	1
28	Kent	Simpson	G	1
29	Ben	Smith	RW	1
30	Jonathan	Toews	C	1
31	Kris	Versteeg	RW	1
32	Sami	Aittokallio	G	2
33	Tyson	Barrie	D	2
34	Andre	Benoit	D	2
35	Reto	Berra	G	2
36	Patrick	Bordeleau	LW	2
37	Paul	Carey	C	2
38	Marc-Andre	Cliche	C	2
39	Matt	Duchene	C	2
40	Jean-Sebastien	Giguere	G	2
41	Nate	Guenin	D	2
42	Jan	Hejda	D	2
43	Nick	Holden	D	2
44	Matt	Hunwick	D	2
45	Erik	Johnson	D	2
46	Gabriel	Landeskog	LW	2
47	Nathan	MacKinnon	C	2
48	Brad	Malone	C	2
49	Jamie	McGinn	LW	2
50	Cody	McLeod	LW	2
51	John	Mitchell	C	2
52	Ryan	O'Reilly	C	2
53	PA	Parenteau	RW	2
54	Cory	Sarich	D	2
55	Paul	Stastny	C	2
56	Karl	Stollery	D	2
57	Maxime	Talbot	C	2
58	Alex	Tanguay	LW	2
59	David	Van Der Gulik	LW	2
60	Semyon	Varlamov	G	2
61	Ryan	Wilson	D	2
62	Jamie	Benn	C	3
63	Jordie	Benn	D	3
64	Jack	Campbell	G	3
65	Alex	Chiasson	RW	3
66	Erik	Cole	LW	3
67	Kevin	Connauton	D	3
68	Trevor	Daley	D	3
69	Brenden	Dillon	D	3
70	Cody	Eakin	C	3
71	Vernon	Fiddler	C	3
72	Maxime	Fortunus	D	3
73	Ryan	Garbutt	LW	3
74	Cameron	Gaunce	D	3
75	Alex	Goligoski	D	3
76	Sergei	Gonchar	D	3
77	Shawn	Horcoff	C	3
78	Dustin	Jeffrey	C	3
79	Kari	Lehtonen	G	3
80	Travis	Morin	C	3
81	Chris	Mueller	C	3
82	Valeri	Nichushkin	RW	3
83	Jamie	Oleksiak	D	3
84	Rich	Peverley	C	3
85	Aaron	Rome	D	3
86	Antoine	Roussel	LW	3
87	Colton	Sceviour	C	3
88	Tyler	Seguin	C	3
89	Tim	Thomas	G	3
90	Ray	Whitney	LW	3
91	Niklas	Backstrom	G	4
92	Keith	Ballard	D	4
93	Jonathon	Blum	D	4
94	Jonas	Brodin	D	4
95	Kyle	Brodziak	C	4
96	Ilya	Bryzgalov	G	4
97	Brett	Bulmer	RW	4
98	Matt	Cooke	LW	4
99	Charlie	Coyle	C	4
100	Matt	Dumba	D	4
101	Justin	Fontaine	RW	4
102	Mikael	Granlund	C	4
103	Josh	Harding	G	4
104	Erik	Haula	C	4
105	Dany	Heatley	LW	4
106	Mikko	Koivu	C	4
107	Darcy	Kuemper	G	4
108	Cody	McCormick	C	4
109	Carson	McMillan	RW	4
110	Matt	Moulson	LW	4
111	Nino	Niederreiter	RW	4
112	Zach	Parise	LW	4
113	Jason	Pominville	RW	4
114	Nate	Prosser	D	4
115	Mike	Rupp	LW	4
116	Marco	Scandella	D	4
117	Jared	Spurgeon	D	4
118	Clayton	Stoner	D	4
119	Ryan	Suter	D	4
120	Stephane	Veilleux	LW	4
121	Jason	Zucker	LW	4
122	Victor	Bartley	D	5
123	Taylor	Beck	LW	5
124	Gabriel	Bourque	LW	5
125	Rich	Clune	LW	5
126	Matt	Cullen	C	5
127	Michael	Del Zotto	D	5
128	Patrick	Eaves	RW	5
129	Mattias	Ekholm	D	5
130	Ryan	Ellis	D	5
131	Mike	Fisher	C	5
132	Filip	Forsberg	C	5
133	Paul	Gaustad	C	5
134	Magnus	Hellberg	G	5
135	Patric	Hornqvist	RW	5
136	Carter	Hutton	G	5
137	Seth	Jones	D	5
138	Roman	Josi	D	5
139	Marek	Mazanec	G	5
140	Simon	Moser	C	5
141	Eric	Nystrom	LW	5
142	Joe	Piskula	D	5
143	Pekka	Rinne	G	5
144	Colton	Sissons	C	5
145	Craig	Smith	C	5
146	Nick	Spaling	LW	5
147	Viktor	Stalberg	LW	5
148	Shea	Weber	D	5
149	Colin	Wilson	C	5
150	David	Backes	C	6
151	Patrik	Berglund	C	6
152	Jay	Bouwmeester	D	6
153	Carlo	Colaiacovo	D	6
154	Ian	Cole	D	6
155	Adam	Cracknell	RW	6
156	Brian	Elliott	G	6
157	Barret	Jackman	D	6
158	Dmitrij	Jaskin	RW	6
159	Maxim	Lapierre	C	6
160	Jordan	Leopold	D	6
161	Ryan	Miller	G	6
162	Brenden	Morrow	LW	6
163	T.J.	Oshie	RW	6
164	Steve	Ott	C	6
165	Magnus	Paajarvi	LW	6
166	Alex	Pietrangelo	D	6
167	Roman	Polak	D	6
168	Chris	Porter	LW	6
169	Ryan	Reaves	RW	6
170	Derek	Roy	C	6
171	Jaden	Schwartz	LW	6
172	Kevin	Shattenkirk	D	6
173	Vladimir	Sobotka	LW	6
174	Alexander	Steen	LW	6
175	Vladimir	Tarasenko	RW	6
176	John	Albert	C	7
177	Zach	Bogosian	D	7
178	Dustin	Byfuglien	D	7
179	Ben	Chiarot	D	7
180	Grant	Clitsome	D	7
181	Patrice	Cormier	C	7
182	Keaton	Ellerby	D	7
183	Tobias	Enstrom	D	7
184	Michael	Frolik	RW	7
185	Matt	Halischuk	RW	7
186	Olli	Jokinen	C	7
187	Evander	Kane	LW	7
188	Andrew	Ladd	LW	7
189	Bryan	Little	C	7
190	Julian	Melchiori	D	7
191	Al	Montoya	G	7
192	Eric	O'Dell	C	7
193	Adam	Pardy	D	7
194	Ondrej	Pavelec	G	7
195	Anthony	Peluso	RW	7
196	Paul	Postma	D	7
197	Zach	Redmond	D	7
198	Mark	Scheifele	C	7
199	Devin	Setoguchi	RW	7
200	Jim	Slater	C	7
201	Mark	Stuart	D	7
202	Eric	Tangradi	LW	7
203	Chris	Thorburn	RW	7
204	Jacob	Trouba	D	7
205	Blake	Wheeler	RW	7
206	James	Wright	C	7
207	Matt	Bartkowski	D	8
208	Patrice	Bergeron	C	8
209	Johnny	Boychuk	D	8
210	Gregory	Campbell	C	8
211	Jordan	Caron	RW	8
212	Zdeno	Chara	D	8
213	Craig	Cunningham	RW	8
214	Loui	Eriksson	RW	8
215	Justin	Florek	LW	8
216	Matt	Fraser	RW	8
217	Dougie	Hamilton	D	8
218	Jarome	Iginla	RW	8
219	Chad	Johnson	G	8
220	Nick	Johnson	RW	8
221	Chris	Kelly	C	8
222	David	Krejci	C	8
223	Torey	Krug	D	8
224	Matt	Lindblad	C	8
225	Milan	Lucic	LW	8
226	Brad	Marchand	LW	8
227	Adam	McQuaid	D	8
228	Andrej	Meszaros	D	8
229	Kevan	Miller	D	8
230	Daniel	Paille	LW	8
231	Corey	Potter	D	8
232	Tuukka	Rask	G	8
233	Dennis	Seidenberg	D	8
234	Reilly	Smith	RW	8
235	Carl	Soderberg	C	8
236	Ryan	Spooner	C	8
237	Niklas	Svedberg	G	8
238	Shawn	Thornton	LW	8
239	Zach	Trotman	D	8
240	David	Warsofsky	D	8
241	Luke	Adam	C	9
242	Cory	Conacher	C	9
243	Matt	D'Agostini	RW	9
244	Nicolas	Deslauriers	LW	9
245	Christian	Ehrhoff	D	9
246	Matt	Ellis	LW	9
247	Tyler	Ennis	C	9
248	Jhonas	Enroth	G	9
249	Brian	Flynn	C	9
250	Marcus	Foligno	LW	9
251	Zemgus	Girgensons	C	9
252	Mikhail	Grigorenko	C	9
253	Cody	Hodgson	C	9
254	Patrick	Kaleta	RW	9
255	Rostislav	Klesla	D	9
256	Zenon	Konopka	C	9
257	Johan	Larsson	LW	9
258	Ville	Leino	LW	9
259	Jamie	McBain	D	9
260	Torrey	Mitchell	C	9
261	Tyler	Myers	D	9
262	Michal	Neuvirth	G	9
263	Kevin	Porter	C	9
264	Mark	Pysyk	D	9
265	Rasmus	Ristolainen	D	9
266	Chad	Ruhwedel	D	9
267	John	Scott	LW	9
268	Drew	Stafford	RW	9
269	Chris	Stewart	RW	9
270	Alexander	Sulzer	D	9
271	Henrik	Tallinder	D	9
272	Philip	Varone	C	9
273	Mike	Weber	D	9
274	Nikita	Zadorov	D	9
275	Justin	Abdelkader	LW	10
276	Daniel	Alfredsson	RW	10
277	Adam	Almquist	D	10
278	Joakim	Andersson	C	10
279	Todd	Bertuzzi	RW	10
280	Daniel	Cleary	RW	10
281	Pavel	Datsyuk	C	10
282	Danny	DeKeyser	D	10
283	Cory	Emmerton	C	10
284	Jonathan	Ericsson	D	10
285	Johan	Franzen	RW	10
286	Luke	Glendening	C	10
287	Jonas	Gustavsson	G	10
288	Darren	Helm	C	10
289	Jimmy	Howard	G	10
290	Tomas	Jurco	RW	10
291	Jakub	Kindl	D	10
292	Niklas	Kronwall	D	10
293	Brian	Lashoff	D	10
294	David	Legwand	C	10
295	Alexey	Marchenko	D	10
296	Drew	Miller	LW	10
297	Petr	Mrazek	G	10
298	Gustav	Nyquist	RW	10
299	Xavier	Ouellet	D	10
300	Teemu	Pulkkinen	LW	10
301	Kyle	Quincey	D	10
302	Mikael	Samuelsson	RW	10
303	Riley	Sheahan	C	10
304	Brendan	Smith	D	10
305	Tomas	Tatar	LW	10
306	Jordin	Tootoo	RW	10
307	Stephen	Weiss	C	10
308	Henrik	Zetterberg	LW	10
309	Krys	Barch	RW	11
310	Aleksander	Barkov	C	11
311	Sean	Bergenheim	LW	11
312	Nick	Bjugstad	C	11
313	Brad	Boyes	RW	11
314	Brian	Campbell	D	11
315	Scott	Clemmensen	G	11
316	Joey	Crabb	RW	11
317	Dan	Ellis	G	11
318	Tomas	Fleischmann	LW	11
319	Tom	Gilbert	D	11
320	Matt	Gilroy	D	11
321	Scott	Gomez	C	11
322	Erik	Gudbranson	D	11
323	Jimmy	Hayes	RW	11
324	Quinton	Howden	C	11
325	Jonathan	Huberdeau	LW	11
326	Ed	Jovanovski	D	11
327	Tomas	Kopecky	RW	11
328	Dmitry	Kulikov	D	11
329	Roberto	Luongo	G	11
330	Mike	Mottau	D	11
331	Dylan	Olsen	D	11
332	Alex	Petrovic	D	11
333	Brandon	Pirri	C	11
334	Colby	Robak	D	11
335	Drew	Shore	C	11
336	Vincent	Trocheck	C	11
337	Scottie	Upshall	LW	11
338	Ryan	Whitney	D	11
339	Jesse	Winchester	C	11
340	Nathan	Beaulieu	D	12
341	Mike	Blunden	RW	12
342	Francis	Bouillon	D	12
343	Michael	Bournival	LW	12
344	Rene	Bourque	RW	12
345	Daniel	Briere	C	12
346	Peter	Budaj	G	12
347	David	Desharnais	C	12
348	Devan	Dubnyk	G	12
349	Gabriel	Dumont	C	12
350	Lars	Eller	C	12
351	Alexei	Emelin	D	12
352	Alex	Galchenyuk	C	12
353	Brendan	Gallagher	RW	12
354	Brian	Gionta	RW	12
355	Josh	Gorges	D	12
356	Patrick	Holland	RW	12
357	Louis	Leblanc	C	12
358	Andrei	Markov	D	12
359	Travis	Moen	LW	12
360	Douglas	Murray	D	12
361	Joonas	Nattinen	C	12
362	Max	Pacioretty	LW	12
363	George	Parros	RW	12
364	Tomas	Plekanec	C	12
365	Carey	Price	G	12
366	Brandon	Prust	LW	12
367	Martin	St Pierre	C	12
368	P.K.	Subban	D	12
369	Christian	Thomas	LW	12
370	Jarred	Tinordi	D	12
371	Dustin	Tokarski	G	12
372	Thomas	Vanek	LW	12
373	Mike	Weaver	D	12
374	Dale	Weise	RW	12
375	Ryan	White	C	12
376	Craig	Anderson	G	13
377	Mark	Borowiecki	D	13
378	Cody	Ceci	D	13
379	Erik	Condra	RW	13
380	Joe	Corvo	D	13
381	Jared	Cowen	D	13
382	Stephane	Da Costa	C	13
383	Alex	Grant	D	13
384	Derek	Grant	C	13
385	Colin	Greening	LW	13
386	Eric	Gryba	D	13
387	Andrew	Hammond	G	13
388	Ales	Hemsky	RW	13
389	Mike	Hoffman	C	13
390	Erik	Karlsson	D	13
391	Matt	Kassian	LW	13
392	Robin	Lehner	G	13
393	Clarke	MacArthur	LW	13
394	Marc	Methot	D	13
395	Milan	Michalek	LW	13
396	Chris	Neil	RW	13
397	Jean-Gabriel	Pageau	C	13
398	Chris	Phillips	D	13
399	Bobby	Ryan	RW	13
400	Zack	Smith	C	13
401	Jason	Spezza	C	13
402	Mark	Stone	RW	13
403	Kyle	Turris	C	13
404	Patrick	Wiercioch	D	13
405	Mika	Zibanejad	C	13
406	Keith	Aulie	D	14
407	Mark	Barberio	D	14
408	Ben	Bishop	G	14
409	Eric	Brewer	D	14
410	J.T.	Brown	RW	14
411	Ryan	Callahan	RW	14
412	Matthew	Carle	D	14
413	Brett	Connolly	RW	14
414	Jean-Philippe	Cote	D	14
415	B.J.	Crombeen	RW	14
416	Cedrick	Desjardins	G	14
417	Valtteri	Filppula	C	14
418	Radko	Gudas	D	14
419	Victor	Hedman	D	14
420	Tyler	Johnson	C	14
421	Alex	Killorn	C	14
422	Dmitry	Korobov	D	14
423	Michael	Kostka	D	14
424	Nikita	Kucherov	RW	14
425	Pierre-Cedric	Labrie	LW	14
426	Anders	Lindback	G	14
427	Ryan	Malone	LW	14
428	Vladislav	Namestnikov	C	14
429	Ondrej	Palat	LW	14
430	Richard	Panik	RW	14
431	Teddy	Purcell	RW	14
432	Tom	Pyatt	C	14
433	Sami	Salo	D	14
434	Steven	Stamkos	C	14
435	Andrej	Sustr	D	14
436	Nate	Thompson	C	14
437	Spencer	Abbott	LW	15
438	Carter	Ashton	RW	15
439	Jonathan	Bernier	G	15
440	Troy	Bodie	RW	15
441	Dave	Bolland	C	15
442	Tyler	Bozak	C	15
443	David	Broll	LW	15
444	David	Clarkson	RW	15
445	Jerry	D'Amigo	RW	15
446	Jamie	Devane	LW	15
447	Cody	Franson	D	15
448	Jake	Gardiner	D	15
449	Tim	Gleason	D	15
450	Carl	Gunnarsson	D	15
451	Peter	Holland	C	15
452	Nazem	Kadri	C	15
453	Phil	Kessel	RW	15
454	Nikolai	Kulemin	LW	15
455	Josh	Leivo	LW	15
456	Joffrey	Lupul	LW	15
457	Jay	McClement	C	15
458	Greg	McKegg	C	15
459	Frazer	McLaren	LW	15
460	Colton	Orr	RW	15
461	Dion	Phaneuf	D	15
462	Paul	Ranger	D	15
463	Mason	Raymond	LW	15
464	James	Reimer	G	15
465	Morgan	Rielly	D	15
466	Trevor	Smith	C	15
467	Jerred	Smithson	C	15
468	James	van Riemsdyk	LW	15
469	Bryan	Allen	D	16
470	Frederik	Andersen	G	16
471	Francois	Beauchemin	D	16
472	Matt	Beleskey	LW	16
473	Nick	Bonino	C	16
474	Andrew	Cogliano	C	16
475	Emerson	Etem	LW	16
476	Mark	Fistric	D	16
477	Cam	Fowler	D	16
478	Ryan	Getzlaf	C	16
479	Jonas	Hiller	G	16
480	Tim	Jackman	RW	16
481	Saku	Koivu	C	16
482	Hampus	Lindholm	D	16
483	Ben	Lovejoy	D	16
484	Patrick	Maroon	LW	16
485	Kyle	Palmieri	RW	16
486	Mathieu	Perreault	C	16
487	Corey	Perry	RW	16
488	Rickard	Rakell	C	16
489	Stephane	Robidas	D	16
490	Luca	Sbisa	D	16
491	Teemu	Selanne	RW	16
492	Jakob	Silfverberg	RW	16
493	Devante	Smith-Pelly	RW	16
494	David	Steckel	C	16
495	Sami	Vatanen	D	16
496	Daniel	Winnik	C	16
497	Nolan	Yonkman	D	16
498	Mikael	Backlund	C	17
499	Sven	Baertschi	LW	17
500	Chad	Billins	D	17
501	Lance	Bouma	C	17
502	Christopher	Breen	D	17
503	TJ	Brodie	D	17
504	Chris	Butler	D	17
505	Paul	Byron	C	17
506	Mike	Cammalleri	C	17
507	Joe	Colborne	C	17
508	TJ	Galiardi	LW	17
509	Mark	Giordano	D	17
510	Curtis	Glencross	LW	17
511	Markus	Granlund	C	17
512	Ben	Hanowski	RW	17
513	Jiri	Hudler	C	17
514	Blair	Jones	C	17
515	David	Jones	RW	17
516	Corban	Knight	C	17
517	Joey	MacDonald	G	17
518	Brian	McGrattan	RW	17
519	Sean	Monahan	C	17
520	Shane	O'Brien	D	17
521	Joni	Ortio	G	17
522	Karri	Ramo	G	17
523	Max	Reinhart	C	17
524	Kris	Russell	D	17
525	Ladislav	Smid	D	17
526	Derek	Smith	D	17
527	Matt	Stajan	C	17
528	Ben	Street	C	17
529	Kevin	Westgarth	RW	17
530	Dennis	Wideman	D	17
531	Tyler	Wotherspoon	D	17
532	Will	Acton	C	18
533	Mark	Arcobello	C	18
534	Richard	Bachman	G	18
535	Anton	Belov	D	18
536	Ben	Eager	LW	18
537	Jordan	Eberle	RW	18
538	Viktor	Fasth	G	18
539	Taylor	Fedun	D	18
540	Andrew	Ference	D	18
541	Mark	Fraser	D	18
542	Sam	Gagner	C	18
543	Luke	Gazdic	LW	18
544	Boyd	Gordon	C	18
545	Denis	Grebeshkov	D	18
546	Taylor	Hall	LW	18
547	Ryan	Hamilton	LW	18
548	Matt	Hendricks	C	18
549	Roman	Horak	C	18
550	Brad	Hunt	D	18
551	Jesse	Joensuu	LW	18
552	Ryan	Jones	LW	18
553	Oscar	Klefbom	D	18
554	Anton	Lander	C	18
555	Philip	Larsen	D	18
556	Martin	Marincin	D	18
557	Ryan	Nugent-Hopkins	C	18
558	David	Perron	LW	18
559	Jeff	Petry	D	18
560	Tyler	Pitlick	RW	18
561	Justin	Schultz	D	18
562	Ben	Scrivens	G	18
563	Ryan	Smyth	LW	18
564	Nail	Yakupov	RW	18
565	Dustin	Brown	RW	19
566	Jeff	Carter	C	19
567	Kyle	Clifford	LW	19
568	Drew	Doughty	D	19
569	Colin	Fraser	C	19
570	Marian	Gaborik	RW	19
571	Matt	Greene	D	19
572	Martin	Jones	G	19
573	Dwight	King	LW	19
574	Anze	Kopitar	C	19
575	Trevor	Lewis	C	19
576	Alec	Martinez	D	19
577	Brayden	McNabb	D	19
578	Willie	Mitchell	D	19
579	Jake	Muzzin	D	19
580	Jordan	Nolan	C	19
581	Tanner	Pearson	LW	19
582	Jonathan	Quick	G	19
583	Robyn	Regehr	D	19
584	Mike	Richards	C	19
585	Jarret	Stoll	C	19
586	Tyler	Toffoli	C	19
587	Linden	Vey	RW	19
588	Slava	Voynov	D	19
589	Justin	Williams	RW	19
590	Paul	Bissonnette	LW	20
591	Mikkel	Boedker	LW	20
592	Kyle	Chipchura	C	20
593	Shane	Doan	RW	20
594	Oliver	Ekman-Larsson	D	20
595	Martin	Erat	RW	20
596	Brandon	Gormley	D	20
597	Thomas	Greiss	G	20
598	Jeff	Halpern	C	20
599	Martin	Hanzal	C	20
600	Tim	Kennedy	LW	20
601	Rob	Klinkhammer	C	20
602	Lauri	Korpikoski	LW	20
603	Lucas	Lessio	LW	20
604	Brandon	McMillan	C	20
605	Zbynek	Michalek	D	20
606	Andy	Miele	C	20
607	Derek	Morris	D	20
608	David	Moss	RW	20
609	Connor	Murphy	D	20
610	Mike	Ribeiro	C	20
611	David	Schlemko	D	20
612	Mike	Smith	G	20
613	Michael	Stone	D	20
614	Chris	Summers	D	20
615	Jordan	Szwarz	RW	20
616	Antoine	Vermette	C	20
617	Radim	Vrbata	RW	20
618	Keith	Yandle	D	20
619	Brandon	Yip	RW	20
620	Dan	Boyle	D	21
621	Justin	Braun	D	21
622	Mike	Brown	RW	21
623	Adam	Burish	RW	21
624	Brent	Burns	RW	21
625	Logan	Couture	C	21
626	Jason	Demers	D	21
627	Andrew	Desjardins	C	21
628	Freddie	Hamilton	C	21
629	Scott	Hannan	D	21
630	Marty	Havlat	RW	21
631	Eriah	Hayes	RW	21
632	Tomas	Hertl	C	21
633	Matt	Irwin	D	21
634	Bracken	Kearns	LW	21
635	Tyler	Kennedy	RW	21
636	Patrick	Marleau	LW	21
637	John	McCarthy	C	21
638	Antti	Niemi	G	21
639	Matt	Nieto	LW	21
640	Joe	Pavelski	C	21
641	Matt	Pelech	RW	21
642	James	Sheppard	LW	21
643	Alex	Stalock	G	21
644	Brad	Stuart	D	21
645	Joe	Thornton	C	21
646	Raffi	Torres	LW	21
647	Marc-Edouard	Vlasic	D	21
648	Tommy	Wingels	C	21
649	Andrew	Alberts	D	22
650	Darren	Archibald	RW	22
651	Kevin	Bieksa	D	22
652	David	Booth	LW	22
653	Alexandre	Burrows	RW	22
654	Frank	Corrado	D	22
655	Zac	Dalpe	C	22
656	Alexander	Edler	D	22
657	Joacim	Eriksson	G	22
658	Benn	Ferriero	RW	22
659	Jason	Garrison	D	22
660	Dan	Hamhuis	D	22
661	Jannik	Hansen	RW	22
662	Chris	Higgins	LW	22
663	Nicklas	Jensen	RW	22
664	Zack	Kassian	RW	22
665	Ryan	Kesler	C	22
666	Eddie	Lack	G	22
667	Kellan	Lain	C	22
668	Jacob	Markstrom	G	22
669	Shawn	Matthias	C	22
670	Pascal	Pelletier	LW	22
671	Brad	Richardson	RW	22
672	Mike	Santorelli	C	22
673	Yann	Sauve	D	22
674	Jordan	Schroeder	C	22
675	Daniel	Sedin	LW	22
676	Henrik	Sedin	C	22
677	Tom	Sestito	LW	22
678	Ryan	Stanton	D	22
679	Christopher	Tanev	D	22
680	Yannick	Weber	D	22
681	Jeremy	Welsh	C	22
682	Brett	Bellemore	D	23
683	Drayson	Bowman	LW	23
684	Zach	Boychuk	LW	23
685	Radek	Dvorak	RW	23
686	Patrick	Dwyer	RW	23
687	Justin	Faulk	D	23
688	Nathan	Gerbe	LW	23
689	Ron	Hainsey	D	23
690	Jay	Harrison	D	23
691	Anton	Khudobin	G	23
692	Mike	Komisarek	D	23
693	John-Michael	Liles	D	23
694	Elias	Lindholm	C	23
695	Andrei	Loktionov	C	23
696	Manny	Malhotra	C	23
697	Ryan	Murphy	D	23
698	Riley	Nash	C	23
699	Aaron	Palushaj	RW	23
700	Justin	Peters	G	23
701	Andrej	Sekera	D	23
702	Alexander	Semin	RW	23
703	Jeff	Skinner	LW	23
704	Eric	Staal	C	23
705	Jordan	Staal	C	23
706	Brett	Sutter	C	23
707	Chris	Terry	LW	23
708	Jiri	Tlusty	LW	23
709	Cam	Ward	G	23
710	Artem	Anisimov	C	24
711	Cam	Atkinson	RW	24
712	Cody	Bass	C	24
713	Sergei	Bobrovsky	G	24
714	Jared	Boll	RW	24
715	Matt	Calvert	LW	24
716	Michael	Chaput	C	24
717	Sean	Collins	C	24
718	Blake	Comeau	LW	24
719	Ryan	Craig	C	24
720	Brandon	Dubinsky	C	24
721	Tim	Erixon	D	24
722	Nick	Foligno	LW	24
723	Matt	Frattin	RW	24
724	Cody	Goloubef	D	24
725	Nathan	Horton	RW	24
726	Boone	Jenner	C	24
727	Ryan	Johansen	C	24
728	Jack	Johnson	D	24
729	Mark	Letestu	C	24
730	Derek	MacKenzie	C	24
731	Curtis	McElhinney	G	24
732	Mike	McKenna	G	24
733	Ryan	Murray	D	24
734	Nikita	Nikitin	D	24
735	Dalton	Prout	D	24
736	David	Savard	D	24
737	Nick	Schultz	D	24
738	Jack	Skille	RW	24
739	Matt	Taormina	D	24
740	Corey	Tropp	RW	24
741	Dana	Tyrell	C	24
742	Fedor	Tyutin	D	24
743	RJ	Umberger	LW	24
744	James	Wisniewski	D	24
745	Steve	Bernier	RW	25
746	Reid	Boucher	RW	25
747	Martin	Brodeur	G	25
748	Damien	Brunner	RW	25
749	Ryan	Carter	LW	25
750	Ryane	Clowe	LW	25
751	Patrik	Elias	LW	25
752	Mark	Fayne	D	25
753	Eric	Gelinas	D	25
754	Stephen	Gionta	C	25
755	Andy	Greene	D	25
756	Peter	Harrold	D	25
757	Adam	Henrique	C	25
758	Jaromir	Jagr	RW	25
759	Cam	Janssen	RW	25
760	Jacob	Josefson	C	25
761	Adam	Larsson	D	25
762	Jon	Merrill	D	25
763	Tuomo	Ruutu	RW	25
764	Michael	Ryder	RW	25
765	Bryce	Salvador	D	25
766	Cory	Schneider	G	25
767	Tim	Sestito	LW	25
768	Mike	Sislo	RW	25
769	Mattias	Tedenby	RW	25
770	Alexander	Urbom	D	25
771	Anton	Volchenkov	D	25
772	Joe	Whitney	RW	25
773	Travis	Zajac	C	25
774	Marek	Zidlicky	D	25
775	Dainius	Zubrus	RW	25
776	Josh	Bailey	LW	26
777	Eric	Boulton	LW	26
778	Matt	Carkner	D	26
779	Casey	Cizikas	C	26
780	Cal	Clutterbuck	RW	26
781	Calvin	de Haan	D	26
782	Matt	Donovan	D	26
783	Michael	Grabner	RW	26
784	Mike	Halmo	LW	26
785	Travis	Hamonic	D	26
786	Thomas	Hickey	D	26
787	Anders	Lee	C	26
788	Matt	Martin	LW	26
789	Radek	Martinek	D	26
790	Colin	McDonald	RW	26
791	Evgeni	Nabokov	G	26
792	Brock	Nelson	C	26
793	Aaron	Ness	D	26
794	Frans	Nielsen	C	26
795	Anders	Nilsson	G	26
796	Kyle	Okposo	RW	26
797	Kevin	Poulin	G	26
798	Brian	Strait	D	26
799	Ryan	Strome	C	26
800	Johan	Sundstrom	C	26
801	John	Tavares	C	26
802	Lubomir	Visnovsky	D	26
803	Conor	Allen	D	27
804	Arron	Asham	RW	27
805	Brian	Boyle	C	27
806	Derick	Brassard	C	27
807	Daniel	Carcillo	LW	27
808	Raphael	Diaz	D	27
809	Derek	Dorsett	RW	27
810	Justin	Falk	D	27
811	Jesper	Fast	RW	27
812	Dan	Girardi	D	27
813	Carl	Hagelin	LW	27
814	Kevin	Klein	D	27
815	Chris	Kreider	LW	27
816	Henrik	Lundqvist	G	27
817	Ryan	McDonagh	D	27
818	Dylan	McIlrath	D	27
819	J.T.	Miller	C	27
820	Dominic	Moore	C	27
821	John	Moore	D	27
822	Rick	Nash	LW	27
823	Benoit	Pouliot	LW	27
824	Darroll	Powe	C	27
825	Brad	Richards	C	27
826	Martin	St. Louis	RW	27
827	Marc	Staal	D	27
828	Derek	Stepan	C	27
829	Anton	Stralman	D	27
830	Cam	Talbot	G	27
831	Mats	Zuccarello	LW	27
832	Braydon	Coburn	D	28
833	Sean	Couturier	C	28
834	Steve	Downie	RW	28
835	Ray	Emery	G	28
836	Hal	Gill	D	28
837	Claude	Giroux	C	28
838	Nicklas	Grossmann	D	28
839	Erik	Gustafsson	D	28
840	Adam	Hall	RW	28
841	Scott	Hartnell	LW	28
842	Vincent	Lecavalier	C	28
843	Andrew	MacDonald	D	28
844	Steve	Mason	G	28
845	Tye	McGinn	LW	28
846	Kris	Newbury	C	28
847	Michael	Raffl	LW	28
848	Matt	Read	RW	28
849	Zac	Rinaldo	C	28
850	Jay	Rosehill	LW	28
851	Brayden	Schenn	C	28
852	Luke	Schenn	D	28
853	Wayne	Simmonds	RW	28
854	Mark	Streit	D	28
855	Kimmo	Timonen	D	28
856	Chris	VandeVelde	C	28
857	Jakub	Voracek	RW	28
858	Craig	Adams	RW	29
859	Beau	Bennett	RW	29
860	Robert	Bortuzzo	D	29
861	Chris	Conner	RW	29
862	Sidney	Crosby	C	29
863	Simon	Despres	D	29
864	Nick	Drazenovic	C	29
865	Brian	Dumoulin	D	29
866	Pascal	Dupuis	RW	29
867	Andrew	Ebbett	C	29
868	Deryk	Engelland	D	29
869	Marc-Andre	Fleury	G	29
870	Brian	Gibbons	C	29
871	Tanner	Glass	LW	29
872	Marcel	Goc	C	29
873	Jussi	Jokinen	LW	29
874	Chuck	Kobasew	RW	29
875	Chris	Kunitz	LW	29
876	Kris	Letang	D	29
877	Pierre-Luc	Letourneau-Leblond	RW	29
878	Olli	Maatta	D	29
879	Evgeni	Malkin	C	29
880	Paul	Martin	D	29
881	Jayson	Megna	C	29
882	James	Neal	RW	29
883	Matt	Niskanen	D	29
884	Brooks	Orpik	D	29
885	Taylor	Pyatt	LW	29
886	Philip	Samuelsson	D	29
887	Rob	Scuderi	D	29
888	Zach	Sill	C	29
889	Lee	Stempniak	RW	29
890	Brandon	Sutter	C	29
891	Joe	Vitale	C	29
892	Jeff	Zatkoff	G	29
893	Harry	Zolnierczyk	LW	29
894	Karl	Alzner	D	30
895	Nicklas	Backstrom	C	30
896	Jay	Beagle	RW	30
897	Julien	Brouillette	D	30
898	Troy	Brouwer	RW	30
899	Chris	Brown	C	30
900	John	Carlson	D	30
901	Connor	Carrick	D	30
902	Jason	Chimera	LW	30
903	Nicolas	Deschamps	C	30
904	John	Erskine	D	30
905	Eric	Fehr	RW	30
906	Mikhail	Grabovski	C	30
907	Mike	Green	D	30
908	Philipp	Grubauer	G	30
909	Jaroslav	Halak	G	30
910	Jack	Hillen	D	30
911	Braden	Holtby	G	30
912	Marcus	Johansson	C	30
913	Evgeny	Kuznetsov	C	30
914	Brooks	Laich	C	30
915	Michael	Latta	C	30
916	Steve	Oleksy	D	30
917	Dmitry	Orlov	D	30
918	Alex	Ovechkin	RW	30
919	Dustin	Penner	RW	30
920	Cameron	Schilling	D	30
921	Nate	Schmidt	D	30
922	Ryan	Stoa	C	30
923	Tyson	Strachan	D	30
924	Aaron	Volpatti	LW	30
925	Joel	Ward	RW	30
926	Casey	Wellman	C	30
927	Patrick	Wey	D	30
928	Tom	Wilson	RW	30
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: adminy186udu
--

COPY team (id, city, name, division, conference) FROM stdin;
1	Chicago	Blackhawks	Central	Western
2	Colorado	Avalanche	Central	Western
3	Dallas	Stars	Central	Western
4	Minnesota	Wild	Central	Western
5	Nashville	Predators	Central	Western
6	St. Louis	Blues	Central	Western
7	Winnipeg	Jets	Central	Western
8	Boston	Bruins	Atlantic	Eastern
9	Buffalo	Sabres	Atlantic	Eastern
10	Detroit	Red Wings	Atlantic	Eastern
11	Florida	Panthers	Atlantic	Eastern
12	Montreal	Canadiens	Atlantic	Eastern
13	Ottawa	Senators	Atlantic	Eastern
14	Tampa Bay	Lightning	Atlantic	Eastern
15	Toronto	Maple Leafs	Atlantic	Eastern
16	Anaheim	Ducks	Pacific	Western
17	Calgary	Flames	Pacific	Western
18	Edmonton	Oilers	Pacific	Western
19	Los Angeles	Kings	Pacific	Western
20	Phoenix	Coyotes	Pacific	Western
21	San Jose	Sharks	Pacific	Western
22	Vancouver	Canucks	Pacific	Western
23	Carolina	Hurricanes	Metropolitan	Eastern
24	Columbus	Blue Jackets	Metropolitan	Eastern
25	New Jersey	Devils	Metropolitan	Eastern
26	New York	Islanders	Metropolitan	Eastern
27	New York	Rangers	Metropolitan	Eastern
28	Philadelphia	Flyers	Metropolitan	Eastern
29	Pittsburgh	Penquins	Metropolitan	Eastern
30	Washington	Capitals	Metropolitan	Eastern
\.


--
-- Name: firstkey; Type: CONSTRAINT; Schema: public; Owner: adminy186udu; Tablespace:
--

ALTER TABLE ONLY team
    ADD CONSTRAINT firstkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
