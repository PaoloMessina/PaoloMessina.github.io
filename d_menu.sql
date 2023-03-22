INSERT INTO public.d_menu (seq_id_menu, desc_menu, url_menu, url_icona, codice_ordinamento, codice_parent, mobile, data_creazione, utente_creazione, data_aggiornamento, utente_aggiornamento) VALUES(23, 'Archivio visure', 'ricerca-visure', 'assets/svg/wireless-patrol.svg#archivio-e-visure', 1, 0, false, now(), 'SYSTEM', NULL, NULL);

INSERT INTO public.d_menu (seq_id_menu, desc_menu, url_menu, url_icona, codice_ordinamento, codice_parent, mobile, data_creazione, utente_creazione, data_aggiornamento, utente_aggiornamento) VALUES(24, 'Gestione Comandi Zona', 'gestione-comandi-zona', NULL, 3, 2, false, now(), 'SYSTEM', NULL, NULL);

UPDATE public.d_menu SET desc_menu='Marche e Modelli', url_menu='marche-modelli', url_icona=NULL, codice_ordinamento=5, codice_parent=2, mobile=false, data_creazione='2022-03-15 14:08:07.146', utente_creazione='SYSTEM', data_aggiornamento=now(), utente_aggiornamento='SYSTEM' WHERE seq_id_menu=12;

UPDATE public.d_menu SET desc_menu='Colori', url_menu='gestione-colori', url_icona=NULL, codice_ordinamento=6, codice_parent=2, mobile=false, data_creazione='2022-03-15 14:08:07.147', utente_creazione='SYSTEM', data_aggiornamento=now(), utente_aggiornamento='SYSTEM' WHERE seq_id_menu=13;

UPDATE public.d_menu SET desc_menu='Gestione Utenti', url_menu='gestione-utenti', url_icona=NULL, codice_ordinamento=4, codice_parent=2, mobile=false, data_creazione='2022-03-15 14:08:07.148', utente_creazione='SYSTEM', data_aggiornamento=now(), utente_aggiornamento='SYSTEM' WHERE seq_id_menu=14;