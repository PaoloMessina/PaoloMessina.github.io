CREATE SEQUENCE public.s_prog_tipo_azione_divieto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE CACHE 1;

CREATE SEQUENCE public.s_prog_divieti
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE CACHE 1;


CREATE TABLE public.d_tipo_azione_divieto (
	seq_id_tipo_azione_divieto int8 NOT NULL DEFAULT nextval('s_prog_tipo_azione_divieto'::regclass),
	descrizione varchar(50) NOT NULL,
	data_creazione timestamp NOT NULL DEFAULT now(),
	utente_creazione varchar(50) NOT NULL DEFAULT 'SYSTEM'::character varying,
	CONSTRAINT d_d_tipo_azione_divieto_pkey PRIMARY KEY (seq_id_tipo_azione_divieto)
);

CREATE TABLE public.d_tipo_divieto (
	codice_divieto int8 NOT NULL,
	descrizione varchar(50) NOT NULL,
	data_creazione timestamp NOT NULL DEFAULT now(),
	utente_creazione varchar(50) NOT NULL DEFAULT 'SYSTEM'::character varying,
	priority int8 NULL,
	CONSTRAINT d_tipo_divieto_pkey PRIMARY KEY (codice_divieto)
);

CREATE TABLE public.d_divieti (
	seq_id_divieti int8 NOT NULL DEFAULT nextval('s_prog_divieti'::regclass),
	fk_seq_id_visure int8 NOT NULL,
	fk_codice_divieto int8 NULL,
	fk_tipo_azione int8 NULL,
	data_conferma timestamp NULL,
	atm_response_error varchar NULL,
	codice_vdc int8 NULL,
	CONSTRAINT d_divieti_pkey PRIMARY KEY (seq_id_divieti),
	CONSTRAINT d_codice_divieto_fk FOREIGN KEY (fk_codice_divieto) REFERENCES public.d_tipo_divieto(codice_divieto),
	CONSTRAINT d_divieti_fk FOREIGN KEY (fk_seq_id_visure) REFERENCES public.d_visure(seq_id_visure),
	CONSTRAINT d_tipo_azione_fk FOREIGN KEY (fk_tipo_azione) REFERENCES public.d_tipo_azione_divieto(seq_id_tipo_azione_divieto)
);


INSERT INTO public.d_tipo_azione_divieto ( descrizione, data_creazione)
VALUES
( 'Segnala', CURRENT_TIMESTAMP),
( 'Nessuna Operazione', CURRENT_TIMESTAMP),
( 'Potenzialmente Sanzionabile', CURRENT_TIMESTAMP);

INSERT INTO public.d_tipo_divieto (codice_divieto,  priority ,descrizione, data_creazione)
VALUES
(1, 1, 'Divieto Ambientale', CURRENT_TIMESTAMP),
(2, 2, 'Veicolo superiore 12 metri', CURRENT_TIMESTAMP),
(3, 3, 'Trasporto Merci Pericolose', CURRENT_TIMESTAMP);


INSERT INTO public.d_menu (desc_menu,url_menu,url_icona,codice_ordinamento,codice_parent,mobile,data_creazione,utente_creazione,data_aggiornamento,utente_aggiornamento) VALUES
	 ('Statistiche Area B','statistiche-area-b',NULL,3,3,false,'2022-03-15 14:08:07.142175','SYSTEM',NULL,NULL);

INSERT INTO public.d_rel_profili_menu (fk_seq_id_profili,fk_seq_id_menu,data_inizio_validita,data_fine_validita,data_creazione,utente_creazione,data_aggiornamento,utente_aggiornamento) VALUES
	 (1,25,'2022-03-15','9999-12-31','2022-03-15 14:08:07.64624','SYSTEM',NULL,NULL),
	 (2,25,'2022-03-15','9999-12-31','2022-03-15 14:08:07.647845','SYSTEM',NULL,NULL),
	 (3,25,'2022-03-15','9999-12-31','2022-03-15 14:08:07.661133','SYSTEM',NULL,NULL);
