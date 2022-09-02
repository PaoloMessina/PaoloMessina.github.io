
ALTER TABLE public.d_comandi_zona DROP CONSTRAINT d_comandi_zona_codice_unita_key;

ALTER TABLE public.d_comandi_zona ADD CONSTRAINT d_comandi_zona_un UNIQUE (codice_unita,data_inizio_validita,data_fine_validita);

update public.d_comandi_zona set data_fine_validita = '2022-09-01';


INSERT INTO public.d_comandi_zona VALUES (36,'31','LH099','COMANDO DECENTRATO 1','2022-09-02','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (37,'32','LH100','COMANDO DECENTRATO 2','2022-09-02','9999-12-31','2022-09-02 14:08:07.056749','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (38,'33','LH101','COMANDO DECENTRATO 3','2022-09-02','9999-12-31','2022-09-02 14:08:07.057527','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (39,'34','LH102','COMANDO DECENTRATO 4','2022-09-02','9999-12-31','2022-09-02 14:08:07.0582','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (40,'35','LH103','COMANDO DECENTRATO 5','2022-09-02','9999-12-31','2022-09-02 14:08:07.058835','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (41,'36','LH104','COMANDO DECENTRATO 6','2022-09-02','9999-12-31','2022-09-02 14:08:07.059496','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (42,'37','LH105','COMANDO DECENTRATO 7','2022-09-02','9999-12-31','2022-09-02 14:08:07.06031','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (43,'38','LH106','COMANDO DECENTRATO 8','2022-09-02','9999-12-31','2022-09-02 14:08:07.061304','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (44,'39','LH107','COMANDO DECENTRATO 9','2022-09-02','9999-12-31','2022-09-02 14:08:07.062214','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (45,'31','LH077','UNITA'' INFORMATICA','2022-09-02','9999-12-31','2022-09-02 14:08:07.063042','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (46,'31','LH085','UNITA'' AFFARI GIURIDICI','2022-09-02','9999-12-31','2022-09-02 14:08:07.064715','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (47,'31','LH079','UNITA'' AMMINISTRATIVA E CONTABILE','2022-09-02','9999-12-31','2022-09-02 14:08:07.065466','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (48,'02','LH096','UNITA'' ANNORATIA E COMMERCIALE','2022-09-02','9999-12-31','2022-09-02 14:08:07.066233','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (49,'31','LH083','UNITA'' ANTICORRUZIONE E QUALITA''','2022-09-02','9999-12-31','2022-09-02 14:08:07.066962','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (50,'31','LH038','UNITA'' CENTRALE INFORMATIVA','2022-09-02','9999-12-31','2022-09-02 14:08:07.067707','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (51,'31','LH093','UNITA'' CENTRALE OPERATIVA','2022-09-02','9999-12-31','2022-09-02 14:08:07.068426','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (52,'22','LH074','UNITA'' CONTENZIOSO','2022-09-02','9999-12-31','2022-09-02 14:08:07.069321','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (53,'31','LH049','UNITA'' COORDINAMENTO SICUREZZA TERRITOR INTEGRATA','2022-09-02','9999-12-31','2022-09-02 14:08:07.070079','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (54,'28','LH055','UNITA'' G.E.V.','2022-09-02','9999-12-31','2022-09-02 14:08:07.07092','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (55,'31','LH092','UNITA'' GABINETTO DI POLIZIA LOCALE','2022-09-02','9999-12-31','2022-09-02 14:08:07.071768','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (56,'31','LH056','UNITA'' GESTIONE DEL PERSONALE','2022-09-02','9999-12-31','2022-09-02 14:08:07.07329','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (57,'22','LH071','UNITA'' GESTIONE VERBALI','2022-09-02','9999-12-31','2022-09-02 14:08:07.074043','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (58,'31','LH095','UNITA'' INVESTIGAZIONI E PREVENZIONI','2022-09-02','9999-12-31','2022-09-02 14:08:07.074811','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (59,'31','LH076','UNITA'' LOGISTICA E DOTAZIONI','2022-09-02','9999-12-31','2022-09-02 14:08:07.075808','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (60,'31','LH094','UNITA'' OPERATIVA','2022-09-02','9999-12-31','2022-09-02 14:08:07.07685','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (61,'31','LH061','UNITA'' PERSONALE DISTAC PRESSO L''AUTORITA'' GIUDIZ','2022-09-02','9999-12-31','2022-09-02 14:08:07.078318','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (62,'31','LH057','UNITA'' PIANIFICAZIONE SERVIZI DEL PERSONALE','2022-09-02','9999-12-31','2022-09-02 14:08:07.079528','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (63,'01','LH098','UNITA'' RADIOMOBILE','2022-09-02','9999-12-31','2022-09-02 14:08:07.081579','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (64,'21','LH108','UNITA'' RIMOZIONI','2022-09-02','9999-12-31','2022-09-02 14:08:07.082341','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (65,'22','LH072','UNITA'' RISCOSSIONI E RELAZIONI CON IL PUBBLICO','2022-09-02','9999-12-31','2022-09-02 14:08:07.083129','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (66,'31','LH084','UNITA'' SCUOLA DEL CORPO EDUCAZIONE STRADALE','2022-09-02','9999-12-31','2022-09-02 14:08:07.083849','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (67,'22','LH073','UNITA'' TELECAMERE E REGOLAMENTI','2022-09-02','9999-12-31','2022-09-02 14:08:07.084561','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (68,'31','LH000','DIREZIONE SICUREZZA URBANA','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (69,'38','LH035','AREA SICUREZZA INTEGRATA E PROTEZIONE CIVILE','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (70,'31','LH036','AREA GESTIONE RISORSE','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (71,'31','LH051','UNITA'' PROTEZIONE CIVILE GESTIONE EMERGENZE','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (72,'31','LH052','UNITA'' AMMINISTRATIVA PROTEZIONE CIVILE','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (73,'31','LH053','UNITA'' IGIENE DELL''ABITATO CCV E PATROCINI','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (74,'22','LH070','AREA PROCEDURE SANZIONATORIE','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (75,'31','LH075','AREA AFFARI GENERALI','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (76,'31','LH082','VICE COMANDANTE','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (77,'31','LH086','UNITA'' GESTIONE PRIVACY ED ACCESSO ATTI','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (78,'31','LH087','UNITA'' PROGETTI SICUREZZA','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (79,'31','LH088','UNITA'' TECNICA PIANIFICAZIONE PROTEZIONE CIVILE','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (80,'31','LH089','UNITA'' ACQUISTI BENI E SERVIZI','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (81,'31','LH091','UNITA'' TRAFFICO','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (82,'31','LH097','AREA PRESIDIO DEL TERRITORIO','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
INSERT INTO public.d_comandi_zona VALUES (83,'31','LH090','AREA OPERATIVA','2022-07-07','9999-12-31','2022-09-02 14:08:07.055439','SYSTEM',NULL,NULL);
