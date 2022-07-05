--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2022-07-04 11:34:51 CEST

ALTER TABLE ONLY public.d_visure DROP CONSTRAINT fk_visure_d_utenti;
ALTER TABLE ONLY public.d_visure DROP CONSTRAINT fk_seq_id_tipo_visure;
ALTER TABLE ONLY public.d_visure DROP CONSTRAINT fk_seq_id_stati_visure;
ALTER TABLE ONLY public.d_adi DROP CONSTRAINT fk_seq_id_stati_adi;
ALTER TABLE ONLY public.d_sanzioni_accessorie DROP CONSTRAINT fk_seq_id_sanzioni_accessorie;
ALTER TABLE ONLY public.d_rel_profili_manuali DROP CONSTRAINT fk_seq_id_profili_rel;
ALTER TABLE ONLY public.d_rel_profili_menu DROP CONSTRAINT fk_seq_id_profili;
ALTER TABLE ONLY public.d_rel_profili_menu DROP CONSTRAINT fk_seq_id_menu;
ALTER TABLE ONLY public.d_modelli_veicoli DROP CONSTRAINT fk_seq_id_marche_veicoli;
ALTER TABLE ONLY public.d_rel_profili_manuali DROP CONSTRAINT fk_seq_id_manuali_rel;
ALTER TABLE ONLY public.d_adi_veicoli DROP CONSTRAINT fk_seq_id_colori_veicoli;
ALTER TABLE ONLY public.d_sottocategorie DROP CONSTRAINT fk_seq_id_categorie;
ALTER TABLE ONLY public.d_adi_violazioni DROP CONSTRAINT fk_seq_id_adi_violazioni;
ALTER TABLE ONLY public.d_adi_veicoli DROP CONSTRAINT fk_seq_id_adi_veicoli;
ALTER TABLE ONLY public.d_adi_vdc DROP CONSTRAINT fk_seq_id_adi_vdc;
ALTER TABLE ONLY public.d_adi_notifiche DROP CONSTRAINT fk_seq_id_adi_notifiche;
ALTER TABLE ONLY public.d_adi_localita DROP CONSTRAINT fk_seq_id_adi_localita;
ALTER TABLE ONLY public.d_adi_allegati DROP CONSTRAINT fk_seq_id_adi_allegati;
ALTER TABLE ONLY public.d_prosa_sanzioni_accessorie DROP CONSTRAINT fk_codice_infrazione;
ALTER TABLE ONLY public.d_adi DROP CONSTRAINT fk_adi_d_utenti;
ALTER TABLE ONLY public.d_documenti DROP CONSTRAINT d_documenti_fk_seq_id_sottocategorie;
ALTER TABLE ONLY public.d_documenti DROP CONSTRAINT d_documenti_fk_seq_id_categorie;
ALTER TABLE ONLY public.d_adi DROP CONSTRAINT d_adi_fk_comandi_zona;
ALTER TABLE ONLY public.d_visure DROP CONSTRAINT d_visure_pkey;
ALTER TABLE ONLY public.d_utenti DROP CONSTRAINT d_utenti_pkey;
ALTER TABLE ONLY public.d_utenti DROP CONSTRAINT d_utenti_key;
ALTER TABLE ONLY public.d_utenti DROP CONSTRAINT d_utenti_codice_fiscale_key;
ALTER TABLE ONLY public.d_tipo_visure DROP CONSTRAINT d_tipo_visure_seq_id_tipo_visure_key;
ALTER TABLE ONLY public.d_tipo_visure DROP CONSTRAINT d_tipo_visure_pkey;
ALTER TABLE ONLY public.d_stati_visure DROP CONSTRAINT d_stati_visure_seq_id_stati_visure_key;
ALTER TABLE ONLY public.d_stati_visure DROP CONSTRAINT d_stati_visure_pkey;
ALTER TABLE ONLY public.d_stati_adi DROP CONSTRAINT d_stati_adi_seq_id_stati_adi_key;
ALTER TABLE ONLY public.d_stati_adi DROP CONSTRAINT d_stati_adi_pkey;
ALTER TABLE ONLY public.d_sottocategorie DROP CONSTRAINT d_sottocategorie_seq_id_sottocategorie_key;
ALTER TABLE ONLY public.d_sottocategorie DROP CONSTRAINT d_sottocategorie_pkey;
ALTER TABLE ONLY public.d_sanzioni_accessorie DROP CONSTRAINT d_sanzioni_accessorie_pkey;
ALTER TABLE ONLY public.d_rel_profili_menu DROP CONSTRAINT d_rel_profili_menu_pkey;
ALTER TABLE ONLY public.d_rel_profili_manuali DROP CONSTRAINT d_rel_profili_manuali_pkey;
ALTER TABLE ONLY public.d_prosa_serie_veicoli DROP CONSTRAINT d_prosa_serie_veicoli_pkey;
ALTER TABLE ONLY public.d_prosa_sanzioni DROP CONSTRAINT d_prosa_sanzioni_pkey;
ALTER TABLE ONLY public.d_prosa_sanzioni_accessorie DROP CONSTRAINT d_prosa_sanzioni_accessorie_un;
ALTER TABLE ONLY public.d_prosa_nazioni DROP CONSTRAINT d_prosa_nazioni_pkey;
ALTER TABLE ONLY public.d_prosa_genere_veicoli DROP CONSTRAINT d_prosa_genere_veicoli_pkey;
ALTER TABLE ONLY public.d_prosa_codice_d DROP CONSTRAINT d_prosa_codice_d_pkey;
ALTER TABLE ONLY public.d_prosa_categoria_rco DROP CONSTRAINT d_prosa_categoria_rco_pkey;
ALTER TABLE ONLY public.d_prosa_aggiornamenti DROP CONSTRAINT d_prosa_aggiornamenti_key;
ALTER TABLE ONLY public.d_profili DROP CONSTRAINT d_profili_un;
ALTER TABLE ONLY public.d_profili DROP CONSTRAINT d_profili_pkey;
ALTER TABLE ONLY public.d_modelli_veicoli DROP CONSTRAINT d_modelli_veicoli_un;
ALTER TABLE ONLY public.d_modelli_veicoli DROP CONSTRAINT d_modelli_veicoli_pkey;
ALTER TABLE ONLY public.d_menu DROP CONSTRAINT d_menu_un;
ALTER TABLE ONLY public.d_menu DROP CONSTRAINT d_menu_pkey;
ALTER TABLE ONLY public.d_marche_veicoli DROP CONSTRAINT d_marche_veicoli_pkey;
ALTER TABLE ONLY public.d_marche_veicoli DROP CONSTRAINT d_marche_veicoli_codice_marca_key;
ALTER TABLE ONLY public.d_manuali DROP CONSTRAINT d_manuali_pkey;
ALTER TABLE ONLY public.d_manuali DROP CONSTRAINT d_manuali_desc_nome_documento_key;
ALTER TABLE ONLY public.d_documenti DROP CONSTRAINT d_documenti_un;
ALTER TABLE ONLY public.d_documenti DROP CONSTRAINT d_documenti_pkey;
ALTER TABLE ONLY public.d_credenziali_mctc DROP CONSTRAINT d_credenziali_mctc_pkey;
ALTER TABLE ONLY public.d_credenziali_mctc DROP CONSTRAINT d_credenziali_mctc_desc_username_key;
ALTER TABLE ONLY public.d_contatti DROP CONSTRAINT d_contatti_seq_id_contatti_key;
ALTER TABLE ONLY public.d_contatti DROP CONSTRAINT d_contatti_pkey;
ALTER TABLE ONLY public.d_contatti DROP CONSTRAINT d_contatti_desc_email_key;
ALTER TABLE ONLY public.d_comandi_zona DROP CONSTRAINT d_comandi_zona_pkey;
ALTER TABLE ONLY public.d_comandi_zona DROP CONSTRAINT d_comandi_zona_codice_unita_key;
ALTER TABLE ONLY public.d_colori_veicoli DROP CONSTRAINT d_colori_veicoli_un;
ALTER TABLE ONLY public.d_colori_veicoli DROP CONSTRAINT d_colori_veicoli_pkey;
ALTER TABLE ONLY public.d_categorie DROP CONSTRAINT d_categorie_unique_desc_categoria;
ALTER TABLE ONLY public.d_categorie DROP CONSTRAINT d_categorie_seq_id_categorie_key;
ALTER TABLE ONLY public.d_categorie DROP CONSTRAINT d_categorie_pkey;
ALTER TABLE ONLY public.d_categorie DROP CONSTRAINT d_categorie_desc_categoria_key;
ALTER TABLE ONLY public.d_adi_violazioni DROP CONSTRAINT d_adi_violazioni_pkey;
ALTER TABLE ONLY public.d_adi_veicoli DROP CONSTRAINT d_adi_veicoli_pkey;
ALTER TABLE ONLY public.d_adi_vdc DROP CONSTRAINT d_adi_vdc_pkey;
ALTER TABLE ONLY public.d_adi_vdc DROP CONSTRAINT d_adi_vdc_codice_vdc_key;
ALTER TABLE ONLY public.d_adi DROP CONSTRAINT d_adi_seq_id_adi_key;
ALTER TABLE ONLY public.d_adi DROP CONSTRAINT d_adi_pkey;
ALTER TABLE ONLY public.d_adi_notifiche DROP CONSTRAINT d_adi_notifiche_pkey;
ALTER TABLE ONLY public.d_adi_localita DROP CONSTRAINT d_adi_localita_pkey;
ALTER TABLE ONLY public.d_adi DROP CONSTRAINT d_adi_codice_adi_key;
ALTER TABLE ONLY public.d_adi_allegati DROP CONSTRAINT d_adi_allegati_seq_id_adi_allegati_key;
ALTER TABLE ONLY public.d_adi_allegati DROP CONSTRAINT d_adi_allegati_pkey;
ALTER TABLE ONLY public.d_visure DROP CONSTRAINT bigint_seq_id_visure_key;
DROP TABLE public.d_visure;
DROP SEQUENCE public.s_prog_visure;
DROP TABLE public.d_utenti;
DROP SEQUENCE public.s_prog_utenti;
DROP TABLE public.d_tipo_visure;
DROP SEQUENCE public.s_prog_tipo_visure;
DROP TABLE public.d_stati_visure;
DROP SEQUENCE public.s_prog_stati_visure;
DROP TABLE public.d_stati_adi;
DROP SEQUENCE public.s_prog_stati_adi;
DROP TABLE public.d_sottocategorie;
DROP SEQUENCE public.s_prog_sottocategorie;
DROP TABLE public.d_sanzioni_accessorie;
DROP SEQUENCE public.s_prog_sanzioni_accessorie;
DROP TABLE public.d_rel_profili_menu;
DROP TABLE public.d_rel_profili_manuali;
DROP TABLE public.d_prosa_serie_veicoli;
DROP TABLE public.d_prosa_sanzioni_accessorie;
DROP SEQUENCE public.s_prog_prosa_sanzioni_accessorie;
DROP TABLE public.d_prosa_sanzioni;
DROP TABLE public.d_prosa_nazioni;
DROP TABLE public.d_prosa_genere_veicoli;
DROP TABLE public.d_prosa_codice_d;
DROP TABLE public.d_prosa_categoria_rco;
DROP TABLE public.d_prosa_aggiornamenti;
DROP TABLE public.d_profili;
DROP SEQUENCE public.s_prog_profili;
DROP TABLE public.d_modelli_veicoli;
DROP SEQUENCE public.s_prog_modelli_veicoli;
DROP TABLE public.d_menu;
DROP SEQUENCE public.s_prog_menu;
DROP TABLE public.d_marche_veicoli;
DROP SEQUENCE public.s_prog_marche_veicoli;
DROP TABLE public.d_manuali;
DROP SEQUENCE public.s_prog_manuali;
DROP TABLE public.d_documenti;
DROP SEQUENCE public.s_prog_documenti;
DROP TABLE public.d_credenziali_mctc;
DROP SEQUENCE public.s_prog_credenziali_mctc;
DROP TABLE public.d_contatti;
DROP SEQUENCE public.s_prog_contatti;
DROP TABLE public.d_comandi_zona;
DROP SEQUENCE public.s_prog_comandi_zona;
DROP TABLE public.d_colori_veicoli;
DROP SEQUENCE public.s_prog_colori_veicoli;
DROP TABLE public.d_categorie;
DROP SEQUENCE public.s_prog_categorie;
DROP TABLE public.d_adi_violazioni;
DROP SEQUENCE public.s_prog_adi_violazioni;
DROP TABLE public.d_adi_veicoli;
DROP TABLE public.d_adi_vdc;
DROP TABLE public.d_adi_notifiche;
DROP SEQUENCE public.s_prog_adi_notifiche;
DROP TABLE public.d_adi_localita;
DROP TABLE public.d_adi_allegati;
DROP SEQUENCE public.s_prog_adi_allegati;
DROP TABLE public.d_adi;
DROP SEQUENCE public.s_prog_adi;

--
-- TOC entry 200 (class 1259 OID 57556)
-- Name: s_prog_adi; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_adi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_adi OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 57558)
-- Name: d_adi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_adi (
                                seq_id_adi bigint DEFAULT nextval('public.s_prog_adi'::regclass) NOT NULL,
                                codice_adi bigint NOT NULL,
                                matricola character varying(50) NOT NULL,
                                dispositivo character varying(50),
                                fk_seq_id_utenti bigint NOT NULL,
                                fk_seq_id_comandi_zona bigint NOT NULL,
                                data_rilevamento timestamp without time zone NOT NULL,
                                fk_seq_id_stati_adi bigint NOT NULL,
                                data_firma date,
                                disco_orario smallint,
                                desc_note character varying(500),
                                data_inizio_validita date NOT NULL,
                                data_fine_validita date NOT NULL,
                                data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                data_aggiornamento timestamp without time zone,
                                utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_adi OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 57567)
-- Name: s_prog_adi_allegati; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_adi_allegati
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_adi_allegati OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 57569)
-- Name: d_adi_allegati; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_adi_allegati (
                                         seq_id_adi_allegati bigint DEFAULT nextval('public.s_prog_adi_allegati'::regclass) NOT NULL,
                                         desc_nome_documento character varying(200),
                                         fk_seq_id_adi bigint NOT NULL,
                                         file_temporaneo bytea,
                                         data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                         utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                         data_aggiornamento timestamp without time zone,
                                         utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_adi_allegati OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 57578)
-- Name: d_adi_localita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_adi_localita (
                                         seq_id_adi bigint NOT NULL,
                                         codice_toponomastica smallint,
                                         codice_via character varying(5) NOT NULL,
                                         desc_via character varying(100) NOT NULL,
                                         codice_d smallint,
                                         desc_codice_d character varying(100) NOT NULL,
                                         codice_via_2 character varying(5),
                                         desc_via_2 character varying(100),
                                         numero_civico character varying(100),
                                         coordinate_x double precision,
                                         coordinate_y double precision,
                                         data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                         utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                         data_aggiornamento timestamp without time zone,
                                         utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_adi_localita OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 57586)
-- Name: s_prog_adi_notifiche; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_adi_notifiche
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_adi_notifiche OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 57588)
-- Name: d_adi_notifiche; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_adi_notifiche (
                                          seq_id_adi_notifiche bigint DEFAULT nextval('public.s_prog_adi_notifiche'::regclass) NOT NULL,
                                          fk_seq_id_adi bigint NOT NULL,
                                          invio_ok boolean,
                                          tipo_notifica character varying(50),
                                          messaggio text
);


ALTER TABLE public.d_adi_notifiche OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 57595)
-- Name: d_adi_vdc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_adi_vdc (
                                    seq_id_adi bigint NOT NULL,
                                    codice_vdc bigint NOT NULL,
                                    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                    data_aggiornamento timestamp without time zone,
                                    utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_adi_vdc OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 57600)
-- Name: d_adi_veicoli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_adi_veicoli (
                                        seq_id_adi bigint NOT NULL,
                                        codice_nazione character varying(3) NOT NULL,
                                        desc_nazione character varying(50) NOT NULL,
                                        desc_targa character varying(10) NOT NULL,
                                        codice_serie character(1) NOT NULL,
                                        desc_serie character varying(50) NOT NULL,
                                        codice_genere character(1) NOT NULL,
                                        desc_genere character varying(50) NOT NULL,
                                        desc_modello character varying(200) NOT NULL,
                                        desc_marca character varying(200) NOT NULL,
                                        fk_seq_id_colori_veicoli bigint NOT NULL,
                                        data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                        utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                        data_aggiornamento timestamp without time zone,
                                        utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_adi_veicoli OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 57608)
-- Name: s_prog_adi_violazioni; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_adi_violazioni
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_adi_violazioni OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 57610)
-- Name: d_adi_violazioni; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_adi_violazioni (
                                           seq_id_adi_violazioni bigint DEFAULT nextval('public.s_prog_adi_violazioni'::regclass) NOT NULL,
                                           fk_seq_id_adi bigint NOT NULL,
                                           tipologia character varying(100) NOT NULL,
                                           tipo_regolamento character varying(100) NOT NULL,
                                           decreto_legge character varying(200) NOT NULL,
                                           codice_infrazione bigint NOT NULL,
                                           descrizione_infrazione character varying(200) NOT NULL,
                                           codice_infrazione_2 bigint,
                                           descrizione_infrazione_2 character varying(200),
                                           articolo_infrazione character varying(20) NOT NULL,
                                           comma_infrazione character varying(20),
                                           punti integer DEFAULT 0 NOT NULL,
                                           importo_pagamento_minimo numeric(19,2) DEFAULT 0 NOT NULL,
                                           importo_pagamento_massimo numeric(19,2) DEFAULT 0 NOT NULL,
                                           importo_pagamento_scontato numeric(19,2) DEFAULT 0 NOT NULL,
                                           importo_pagamento_misura_ridotta numeric(19,2) DEFAULT 0 NOT NULL,
                                           data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                           utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                           data_aggiornamento timestamp without time zone,
                                           utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_adi_violazioni OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 57624)
-- Name: s_prog_categorie; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_categorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_categorie OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 57626)
-- Name: d_categorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_categorie (
                                      seq_id_categorie bigint DEFAULT nextval('public.s_prog_categorie'::regclass) NOT NULL,
                                      desc_categoria character varying(100) NOT NULL,
                                      data_inizio_validita date NOT NULL,
                                      data_fine_validita date NOT NULL,
                                      data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                      utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                      data_aggiornamento timestamp without time zone,
                                      utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_categorie OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 57632)
-- Name: s_prog_colori_veicoli; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_colori_veicoli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_colori_veicoli OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 57634)
-- Name: d_colori_veicoli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_colori_veicoli (
                                           seq_id_colori_veicoli bigint DEFAULT nextval('public.s_prog_colori_veicoli'::regclass) NOT NULL,
                                           desc_colore character varying(100) NOT NULL,
                                           data_inizio_validita date NOT NULL,
                                           data_fine_validita date NOT NULL,
                                           data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                           utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                           data_aggiornamento timestamp without time zone,
                                           utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_colori_veicoli OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 57640)
-- Name: s_prog_comandi_zona; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_comandi_zona
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_comandi_zona OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 57642)
-- Name: d_comandi_zona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_comandi_zona (
                                         seq_id_comandi_zona bigint DEFAULT nextval('public.s_prog_comandi_zona'::regclass) NOT NULL,
                                         codice_prosa character varying(2) NOT NULL,
                                         codice_unita character varying(5) NOT NULL,
                                         desc_unita character varying(100) NOT NULL,
                                         data_inizio_validita date NOT NULL,
                                         data_fine_validita date NOT NULL,
                                         data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                         utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                         data_aggiornamento timestamp without time zone,
                                         utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_comandi_zona OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 57648)
-- Name: s_prog_contatti; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_contatti
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_contatti OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 57650)
-- Name: d_contatti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_contatti (
                                     seq_id_contatti bigint DEFAULT nextval('public.s_prog_contatti'::regclass) NOT NULL,
                                     desc_email character varying(100) NOT NULL,
                                     data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                     utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                     data_aggiornamento timestamp without time zone,
                                     utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_contatti OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 57656)
-- Name: s_prog_credenziali_mctc; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_credenziali_mctc
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_credenziali_mctc OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 57658)
-- Name: d_credenziali_mctc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_credenziali_mctc (
                                             seq_id_credenziali_mctc bigint DEFAULT nextval('public.s_prog_credenziali_mctc'::regclass) NOT NULL,
                                             desc_username character varying(100) NOT NULL,
                                             desc_password character varying(100) NOT NULL,
                                             data_scadenza_password date NOT NULL,
                                             data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                             utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                             data_aggiornamento timestamp without time zone,
                                             utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_credenziali_mctc OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 57664)
-- Name: s_prog_documenti; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_documenti
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_documenti OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 57666)
-- Name: d_documenti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_documenti (
                                      seq_id_documenti bigint DEFAULT nextval('public.s_prog_documenti'::regclass) NOT NULL,
                                      desc_nome_documento character varying(200) NOT NULL,
                                      desc_documento character varying(300) NOT NULL,
                                      fk_seq_id_categorie bigint NOT NULL,
                                      fk_seq_id_sottocategorie bigint,
                                      data_inizio_validita date NOT NULL,
                                      data_fine_validita date NOT NULL,
                                      data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                      utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                      data_aggiornamento timestamp without time zone,
                                      utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_documenti OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 57675)
-- Name: s_prog_manuali; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_manuali
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_manuali OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 57677)
-- Name: d_manuali; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_manuali (
                                    seq_id_manuali bigint DEFAULT nextval('public.s_prog_manuali'::regclass) NOT NULL,
                                    desc_nome_documento character varying(200) NOT NULL,
                                    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                    data_aggiornamento timestamp without time zone,
                                    utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_manuali OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 57683)
-- Name: s_prog_marche_veicoli; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_marche_veicoli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_marche_veicoli OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 57685)
-- Name: d_marche_veicoli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_marche_veicoli (
                                           seq_id_marche_veicoli bigint DEFAULT nextval('public.s_prog_marche_veicoli'::regclass) NOT NULL,
                                           codice_marca integer NOT NULL,
                                           desc_marca character varying(200) NOT NULL,
                                           data_inizio_validita date NOT NULL,
                                           data_fine_validita date NOT NULL,
                                           data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                           utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                           data_aggiornamento timestamp without time zone,
                                           utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_marche_veicoli OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 57691)
-- Name: s_prog_menu; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_menu
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_menu OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 57693)
-- Name: d_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_menu (
                                 seq_id_menu bigint DEFAULT nextval('public.s_prog_menu'::regclass) NOT NULL,
                                 desc_menu character varying(100) NOT NULL,
                                 url_menu character varying(200) NOT NULL,
                                 url_icona character varying(200),
                                 codice_ordinamento integer NOT NULL,
                                 codice_parent integer NOT NULL,
                                 mobile boolean NOT NULL,
                                 data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                 utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                 data_aggiornamento timestamp without time zone,
                                 utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_menu OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 57702)
-- Name: s_prog_modelli_veicoli; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_modelli_veicoli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_modelli_veicoli OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 57704)
-- Name: d_modelli_veicoli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_modelli_veicoli (
                                            seq_id_modelli_veicoli bigint DEFAULT nextval('public.s_prog_modelli_veicoli'::regclass) NOT NULL,
                                            fk_seq_id_marche_veicoli bigint NOT NULL,
                                            desc_modello character varying(200) NOT NULL,
                                            data_inizio_validita date NOT NULL,
                                            data_fine_validita date NOT NULL,
                                            data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                            utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                            data_aggiornamento timestamp without time zone,
                                            utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_modelli_veicoli OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 57710)
-- Name: s_prog_profili; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_profili
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_profili OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 57712)
-- Name: d_profili; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_profili (
                                    seq_id_profili bigint DEFAULT nextval('public.s_prog_profili'::regclass) NOT NULL,
                                    codice_profilo character varying(50) NOT NULL,
                                    desc_profilo character varying(100) NOT NULL,
                                    codice_profilo_adfs character varying(50) NOT NULL,
                                    filtra_adi boolean NOT NULL,
                                    filtra_zona boolean NOT NULL,
                                    filtra_visure boolean NOT NULL,
                                    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                    data_aggiornamento timestamp without time zone,
                                    utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_profili OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 57718)
-- Name: d_prosa_aggiornamenti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_aggiornamenti (
                                                codice character varying(50) NOT NULL,
                                                descrizione character varying(100) NOT NULL,
                                                data_aggiornamento timestamp without time zone,
                                                utente_aggiornamento character varying(50),
                                                cache_attiva boolean NOT NULL
);


ALTER TABLE public.d_prosa_aggiornamenti OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 57721)
-- Name: d_prosa_categoria_rco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_categoria_rco (
                                                id character varying(10) NOT NULL,
                                                categoria character varying(100) NOT NULL,
                                                data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                                utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                                data_aggiornamento timestamp without time zone,
                                                utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_prosa_categoria_rco OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 57726)
-- Name: d_prosa_codice_d; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_codice_d (
                                           codice character varying(10) NOT NULL,
                                           descrizione character varying(100) NOT NULL,
                                           data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                           utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                           data_aggiornamento timestamp without time zone,
                                           utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_prosa_codice_d OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 57731)
-- Name: d_prosa_genere_veicoli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_genere_veicoli (
                                                 genere character varying(1) NOT NULL,
                                                 descrizione_genere character varying(50) NOT NULL,
                                                 serie character varying(1) NOT NULL,
                                                 descrizione_serie character varying(50) NOT NULL,
                                                 data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                                 utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                                 data_aggiornamento timestamp without time zone,
                                                 utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_prosa_genere_veicoli OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 57736)
-- Name: d_prosa_nazioni; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_nazioni (
                                          codice_nazione character varying(3) NOT NULL,
                                          descrizione character varying(50) NOT NULL,
                                          descrizione_estesa character varying(100) NOT NULL,
                                          data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                          utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                          data_aggiornamento timestamp without time zone,
                                          utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_prosa_nazioni OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 57741)
-- Name: d_prosa_sanzioni; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_sanzioni (
                                           codice_infrazione character varying(10) NOT NULL,
                                           descrizione_infrazione character varying(200) NOT NULL,
                                           articolo_infrazione character varying(20) NOT NULL,
                                           comma_infrazione character varying(20),
                                           decreto_legge character varying(200) NOT NULL,
                                           tipologia character varying(100) NOT NULL,
                                           tipo_regolamento character varying(100),
                                           importo_pagamento_minimo numeric(19,2) DEFAULT 0 NOT NULL,
                                           importo_pagamento_massimo numeric(19,2) DEFAULT 0 NOT NULL,
                                           importo_pagamento_scontato numeric(19,2) DEFAULT 0 NOT NULL,
                                           importo_pagamento_misura_ridotta numeric(19,2) DEFAULT 0 NOT NULL,
                                           data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                           utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                           data_aggiornamento timestamp without time zone,
                                           utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_prosa_sanzioni OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 57753)
-- Name: s_prog_prosa_sanzioni_accessorie; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_prosa_sanzioni_accessorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_prosa_sanzioni_accessorie OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 57755)
-- Name: d_prosa_sanzioni_accessorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_sanzioni_accessorie (
                                                      seq_id_prosa_sanzioni_accessorie bigint DEFAULT nextval('public.s_prog_prosa_sanzioni_accessorie'::regclass) NOT NULL,
                                                      fk_codice_infrazione character varying(10) NOT NULL,
                                                      codice_sanzione character varying(10) NOT NULL,
                                                      desc_sanzione character varying(200) NOT NULL,
                                                      punti integer DEFAULT 0 NOT NULL,
                                                      data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                                      utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                                      data_aggiornamento timestamp without time zone,
                                                      utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_prosa_sanzioni_accessorie OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 57762)
-- Name: d_prosa_serie_veicoli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_prosa_serie_veicoli (
                                                serie character varying(1) NOT NULL,
                                                descrizione character varying(50) NOT NULL,
                                                data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                                utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                                data_aggiornamento timestamp without time zone,
                                                utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_prosa_serie_veicoli OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 57767)
-- Name: d_rel_profili_manuali; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_rel_profili_manuali (
                                                fk_seq_id_profili bigint NOT NULL,
                                                fk_seq_id_manuali bigint NOT NULL,
                                                data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                                utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                                data_aggiornamento timestamp without time zone,
                                                utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_rel_profili_manuali OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 57772)
-- Name: d_rel_profili_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_rel_profili_menu (
                                             fk_seq_id_profili bigint NOT NULL,
                                             fk_seq_id_menu bigint NOT NULL,
                                             data_inizio_validita date NOT NULL,
                                             data_fine_validita date NOT NULL,
                                             data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                             utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                             data_aggiornamento timestamp without time zone,
                                             utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_rel_profili_menu OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 57777)
-- Name: s_prog_sanzioni_accessorie; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_sanzioni_accessorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_sanzioni_accessorie OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 57779)
-- Name: d_sanzioni_accessorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_sanzioni_accessorie (
                                                seq_id_sanzioni_accessorie bigint DEFAULT nextval('public.s_prog_sanzioni_accessorie'::regclass) NOT NULL,
                                                fk_seq_id_violazione bigint NOT NULL,
                                                codice_sanzione bigint NOT NULL,
                                                desc_sanzione character varying(200) NOT NULL,
                                                punti integer DEFAULT 0 NOT NULL,
                                                data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                                utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                                data_aggiornamento timestamp without time zone,
                                                utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_sanzioni_accessorie OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 57786)
-- Name: s_prog_sottocategorie; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_sottocategorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_sottocategorie OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 57788)
-- Name: d_sottocategorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_sottocategorie (
                                           seq_id_sottocategorie bigint DEFAULT nextval('public.s_prog_sottocategorie'::regclass) NOT NULL,
                                           desc_sottocategoria character varying(100) NOT NULL,
                                           fk_seq_id_categorie bigint NOT NULL,
                                           data_inizio_validita date NOT NULL,
                                           data_fine_validita date NOT NULL,
                                           data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                           utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                           data_aggiornamento timestamp without time zone,
                                           utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_sottocategorie OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 57794)
-- Name: s_prog_stati_adi; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_stati_adi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_stati_adi OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 57796)
-- Name: d_stati_adi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_stati_adi (
                                      seq_id_stati_adi bigint DEFAULT nextval('public.s_prog_stati_adi'::regclass) NOT NULL,
                                      codice_stato character(1) NOT NULL,
                                      desc_stato character varying(50) NOT NULL,
                                      data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                      utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                      data_aggiornamento timestamp without time zone,
                                      utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_stati_adi OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 57802)
-- Name: s_prog_stati_visure; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_stati_visure
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_stati_visure OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 57804)
-- Name: d_stati_visure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_stati_visure (
                                         seq_id_stati_visure bigint DEFAULT nextval('public.s_prog_stati_visure'::regclass) NOT NULL,
                                         codice_stato character(1) NOT NULL,
                                         desc_stato character varying(50) NOT NULL,
                                         data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                         utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                         data_aggiornamento timestamp without time zone,
                                         utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_stati_visure OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 57810)
-- Name: s_prog_tipo_visure; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_tipo_visure
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_tipo_visure OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 57812)
-- Name: d_tipo_visure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_tipo_visure (
                                        seq_id_tipo_visure bigint DEFAULT nextval('public.s_prog_tipo_visure'::regclass) NOT NULL,
                                        codice_tipo character varying(50) NOT NULL,
                                        desc_tipo character varying(50) NOT NULL,
                                        data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                        utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                        data_aggiornamento timestamp without time zone,
                                        utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_tipo_visure OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 57818)
-- Name: s_prog_utenti; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_utenti
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_utenti OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 57820)
-- Name: d_utenti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_utenti (
                                   seq_id_utenti bigint DEFAULT nextval('public.s_prog_utenti'::regclass) NOT NULL,
                                   codice_codana bigint NOT NULL,
                                   codice_fiscale character varying(16) NOT NULL,
                                   desc_nome character varying(50) NOT NULL,
                                   desc_cognome character varying(50) NOT NULL,
                                   username_firma_digitale character varying(100),
                                   data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                   utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                   data_aggiornamento timestamp without time zone,
                                   utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_utenti OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 57826)
-- Name: s_prog_visure; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_prog_visure
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_prog_visure OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 57828)
-- Name: d_visure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d_visure (
                                   seq_id_visure bigint DEFAULT nextval('public.s_prog_visure'::regclass) NOT NULL,
                                   data_rilevamento timestamp without time zone NOT NULL,
                                   matricola character varying(50) NOT NULL,
                                   dispositivo character varying(50),
                                   fk_seq_id_tipo_visure bigint NOT NULL,
                                   fk_seq_id_utenti bigint NOT NULL,
                                   identificativo character varying(50) NOT NULL,
                                   fk_seq_id_stati_visure bigint NOT NULL,
                                   desc_esito character varying(300),
                                   data_creazione timestamp without time zone DEFAULT now() NOT NULL,
                                   utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
                                   data_aggiornamento timestamp without time zone,
                                   utente_aggiornamento character varying(50)
);


ALTER TABLE public.d_visure OWNER TO postgres;

--
-- TOC entry 3679 (class 0 OID 57558)
-- Dependencies: 201
-- Data for Name: d_adi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3681 (class 0 OID 57569)
-- Dependencies: 203
-- Data for Name: d_adi_allegati; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3682 (class 0 OID 57578)
-- Dependencies: 204
-- Data for Name: d_adi_localita; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3684 (class 0 OID 57588)
-- Dependencies: 206
-- Data for Name: d_adi_notifiche; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3685 (class 0 OID 57595)
-- Dependencies: 207
-- Data for Name: d_adi_vdc; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3686 (class 0 OID 57600)
-- Dependencies: 208
-- Data for Name: d_adi_veicoli; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3688 (class 0 OID 57610)
-- Dependencies: 210
-- Data for Name: d_adi_violazioni; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3690 (class 0 OID 57626)
-- Dependencies: 212
-- Data for Name: d_categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3692 (class 0 OID 57634)
-- Dependencies: 214
-- Data for Name: d_colori_veicoli; Type: TABLE DATA; Schema: public; Owner: postgres
--



SELECT pg_catalog.setval('public.s_prog_adi', 1, false);


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 202
-- Name: s_prog_adi_allegati; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_adi_allegati', 1, false);


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 205
-- Name: s_prog_adi_notifiche; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_adi_notifiche', 1, false);


--
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 209
-- Name: s_prog_adi_violazioni; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_adi_violazioni', 1, false);


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 211
-- Name: s_prog_categorie; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_categorie', 1, false);


--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 213
-- Name: s_prog_colori_veicoli; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_colori_veicoli', 30, true);


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 215
-- Name: s_prog_comandi_zona; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_comandi_zona', 35, true);


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 217
-- Name: s_prog_contatti; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_contatti', 3, true);


--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 219
-- Name: s_prog_credenziali_mctc; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_credenziali_mctc', 1, true);


--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 221
-- Name: s_prog_documenti; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_documenti', 1, false);


--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 223
-- Name: s_prog_manuali; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_manuali', 1, false);


--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 225
-- Name: s_prog_marche_veicoli; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_marche_veicoli', 99, true);


--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 227
-- Name: s_prog_menu; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_menu', 1, false);


--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 229
-- Name: s_prog_modelli_veicoli; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_modelli_veicoli', 892, true);


--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 231
-- Name: s_prog_profili; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_profili', 6, true);


--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 239
-- Name: s_prog_prosa_sanzioni_accessorie; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_prosa_sanzioni_accessorie', 1, false);


--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 244
-- Name: s_prog_sanzioni_accessorie; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_sanzioni_accessorie', 1, false);


--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 246
-- Name: s_prog_sottocategorie; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_sottocategorie', 1, false);


--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 248
-- Name: s_prog_stati_adi; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_stati_adi', 3, true);


--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 250
-- Name: s_prog_stati_visure; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_stati_visure', 2, true);


--
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 252
-- Name: s_prog_tipo_visure; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_tipo_visure', 11, true);


--
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 254
-- Name: s_prog_utenti; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_utenti', 1, false);


--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 256
-- Name: s_prog_visure; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s_prog_visure', 1, false);


--
-- TOC entry 3522 (class 2606 OID 57840)
-- Name: d_visure bigint_seq_id_visure_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT bigint_seq_id_visure_key UNIQUE (seq_id_visure);


--
-- TOC entry 3412 (class 2606 OID 57842)
-- Name: d_adi_allegati d_adi_allegati_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_allegati
    ADD CONSTRAINT d_adi_allegati_pkey PRIMARY KEY (seq_id_adi_allegati);


--
-- TOC entry 3414 (class 2606 OID 57844)
-- Name: d_adi_allegati d_adi_allegati_seq_id_adi_allegati_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_allegati
    ADD CONSTRAINT d_adi_allegati_seq_id_adi_allegati_key UNIQUE (seq_id_adi_allegati);


--
-- TOC entry 3406 (class 2606 OID 57846)
-- Name: d_adi d_adi_codice_adi_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_codice_adi_key UNIQUE (codice_adi);


--
-- TOC entry 3416 (class 2606 OID 57848)
-- Name: d_adi_localita d_adi_localita_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_localita
    ADD CONSTRAINT d_adi_localita_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3418 (class 2606 OID 57850)
-- Name: d_adi_notifiche d_adi_notifiche_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_notifiche
    ADD CONSTRAINT d_adi_notifiche_pkey PRIMARY KEY (seq_id_adi_notifiche);


--
-- TOC entry 3408 (class 2606 OID 57852)
-- Name: d_adi d_adi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3410 (class 2606 OID 57854)
-- Name: d_adi d_adi_seq_id_adi_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_seq_id_adi_key UNIQUE (seq_id_adi);


--
-- TOC entry 3420 (class 2606 OID 57856)
-- Name: d_adi_vdc d_adi_vdc_codice_vdc_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_vdc
    ADD CONSTRAINT d_adi_vdc_codice_vdc_key UNIQUE (codice_vdc);


--
-- TOC entry 3422 (class 2606 OID 57858)
-- Name: d_adi_vdc d_adi_vdc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_vdc
    ADD CONSTRAINT d_adi_vdc_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3424 (class 2606 OID 57860)
-- Name: d_adi_veicoli d_adi_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_veicoli
    ADD CONSTRAINT d_adi_veicoli_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3426 (class 2606 OID 57862)
-- Name: d_adi_violazioni d_adi_violazioni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_violazioni
    ADD CONSTRAINT d_adi_violazioni_pkey PRIMARY KEY (seq_id_adi_violazioni);


--
-- TOC entry 3428 (class 2606 OID 57864)
-- Name: d_categorie d_categorie_desc_categoria_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_desc_categoria_key UNIQUE (desc_categoria);


--
-- TOC entry 3430 (class 2606 OID 57866)
-- Name: d_categorie d_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_pkey PRIMARY KEY (seq_id_categorie);


--
-- TOC entry 3432 (class 2606 OID 57868)
-- Name: d_categorie d_categorie_seq_id_categorie_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_seq_id_categorie_key UNIQUE (seq_id_categorie);


--
-- TOC entry 3434 (class 2606 OID 57870)
-- Name: d_categorie d_categorie_unique_desc_categoria; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_unique_desc_categoria UNIQUE (desc_categoria);


--
-- TOC entry 3436 (class 2606 OID 57872)
-- Name: d_colori_veicoli d_colori_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_colori_veicoli
    ADD CONSTRAINT d_colori_veicoli_pkey PRIMARY KEY (seq_id_colori_veicoli);


--
-- TOC entry 3438 (class 2606 OID 57874)
-- Name: d_colori_veicoli d_colori_veicoli_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_colori_veicoli
    ADD CONSTRAINT d_colori_veicoli_un UNIQUE (desc_colore);


--
-- TOC entry 3440 (class 2606 OID 57876)
-- Name: d_comandi_zona d_comandi_zona_codice_unita_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_comandi_zona
    ADD CONSTRAINT d_comandi_zona_codice_unita_key UNIQUE (codice_unita);


--
-- TOC entry 3442 (class 2606 OID 57878)
-- Name: d_comandi_zona d_comandi_zona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_comandi_zona
    ADD CONSTRAINT d_comandi_zona_pkey PRIMARY KEY (seq_id_comandi_zona);


--
-- TOC entry 3444 (class 2606 OID 57880)
-- Name: d_contatti d_contatti_desc_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_contatti
    ADD CONSTRAINT d_contatti_desc_email_key UNIQUE (desc_email);


--
-- TOC entry 3446 (class 2606 OID 57882)
-- Name: d_contatti d_contatti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_contatti
    ADD CONSTRAINT d_contatti_pkey PRIMARY KEY (seq_id_contatti);


--
-- TOC entry 3448 (class 2606 OID 57884)
-- Name: d_contatti d_contatti_seq_id_contatti_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_contatti
    ADD CONSTRAINT d_contatti_seq_id_contatti_key UNIQUE (seq_id_contatti);


--
-- TOC entry 3450 (class 2606 OID 57886)
-- Name: d_credenziali_mctc d_credenziali_mctc_desc_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_credenziali_mctc
    ADD CONSTRAINT d_credenziali_mctc_desc_username_key UNIQUE (desc_username);


--
-- TOC entry 3452 (class 2606 OID 57888)
-- Name: d_credenziali_mctc d_credenziali_mctc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_credenziali_mctc
    ADD CONSTRAINT d_credenziali_mctc_pkey PRIMARY KEY (seq_id_credenziali_mctc);


--
-- TOC entry 3454 (class 2606 OID 57890)
-- Name: d_documenti d_documenti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_pkey PRIMARY KEY (seq_id_documenti);


--
-- TOC entry 3456 (class 2606 OID 57892)
-- Name: d_documenti d_documenti_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_un UNIQUE (seq_id_documenti, desc_nome_documento, fk_seq_id_categorie, fk_seq_id_sottocategorie);


--
-- TOC entry 3458 (class 2606 OID 57894)
-- Name: d_manuali d_manuali_desc_nome_documento_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_manuali
    ADD CONSTRAINT d_manuali_desc_nome_documento_key UNIQUE (desc_nome_documento);


--
-- TOC entry 3460 (class 2606 OID 57896)
-- Name: d_manuali d_manuali_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_manuali
    ADD CONSTRAINT d_manuali_pkey PRIMARY KEY (seq_id_manuali);


--
-- TOC entry 3462 (class 2606 OID 57898)
-- Name: d_marche_veicoli d_marche_veicoli_codice_marca_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_marche_veicoli
    ADD CONSTRAINT d_marche_veicoli_codice_marca_key UNIQUE (codice_marca);


--
-- TOC entry 3464 (class 2606 OID 57900)
-- Name: d_marche_veicoli d_marche_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_marche_veicoli
    ADD CONSTRAINT d_marche_veicoli_pkey PRIMARY KEY (seq_id_marche_veicoli);


--
-- TOC entry 3466 (class 2606 OID 57902)
-- Name: d_menu d_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_menu
    ADD CONSTRAINT d_menu_pkey PRIMARY KEY (seq_id_menu);


--
-- TOC entry 3468 (class 2606 OID 57904)
-- Name: d_menu d_menu_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_menu
    ADD CONSTRAINT d_menu_un UNIQUE (desc_menu, codice_ordinamento, codice_parent);


--
-- TOC entry 3470 (class 2606 OID 57906)
-- Name: d_modelli_veicoli d_modelli_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_modelli_veicoli
    ADD CONSTRAINT d_modelli_veicoli_pkey PRIMARY KEY (seq_id_modelli_veicoli);


--
-- TOC entry 3472 (class 2606 OID 57908)
-- Name: d_modelli_veicoli d_modelli_veicoli_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_modelli_veicoli
    ADD CONSTRAINT d_modelli_veicoli_un UNIQUE (fk_seq_id_marche_veicoli, desc_modello);


--
-- TOC entry 3474 (class 2606 OID 57910)
-- Name: d_profili d_profili_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_profili
    ADD CONSTRAINT d_profili_pkey PRIMARY KEY (seq_id_profili);


--
-- TOC entry 3476 (class 2606 OID 57912)
-- Name: d_profili d_profili_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_profili
    ADD CONSTRAINT d_profili_un UNIQUE (codice_profilo, codice_profilo_adfs);


--
-- TOC entry 3478 (class 2606 OID 57914)
-- Name: d_prosa_aggiornamenti d_prosa_aggiornamenti_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_aggiornamenti
    ADD CONSTRAINT d_prosa_aggiornamenti_key UNIQUE (codice);


--
-- TOC entry 3480 (class 2606 OID 57916)
-- Name: d_prosa_categoria_rco d_prosa_categoria_rco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_categoria_rco
    ADD CONSTRAINT d_prosa_categoria_rco_pkey PRIMARY KEY (id);


--
-- TOC entry 3482 (class 2606 OID 57918)
-- Name: d_prosa_codice_d d_prosa_codice_d_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_codice_d
    ADD CONSTRAINT d_prosa_codice_d_pkey PRIMARY KEY (codice);


--
-- TOC entry 3484 (class 2606 OID 57920)
-- Name: d_prosa_genere_veicoli d_prosa_genere_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_genere_veicoli
    ADD CONSTRAINT d_prosa_genere_veicoli_pkey PRIMARY KEY (genere);


--
-- TOC entry 3486 (class 2606 OID 57922)
-- Name: d_prosa_nazioni d_prosa_nazioni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_nazioni
    ADD CONSTRAINT d_prosa_nazioni_pkey PRIMARY KEY (codice_nazione);


--
-- TOC entry 3490 (class 2606 OID 57924)
-- Name: d_prosa_sanzioni_accessorie d_prosa_sanzioni_accessorie_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_sanzioni_accessorie
    ADD CONSTRAINT d_prosa_sanzioni_accessorie_un UNIQUE (seq_id_prosa_sanzioni_accessorie);


--
-- TOC entry 3488 (class 2606 OID 57926)
-- Name: d_prosa_sanzioni d_prosa_sanzioni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_sanzioni
    ADD CONSTRAINT d_prosa_sanzioni_pkey PRIMARY KEY (codice_infrazione);


--
-- TOC entry 3492 (class 2606 OID 57928)
-- Name: d_prosa_serie_veicoli d_prosa_serie_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_serie_veicoli
    ADD CONSTRAINT d_prosa_serie_veicoli_pkey PRIMARY KEY (serie);


--
-- TOC entry 3494 (class 2606 OID 57930)
-- Name: d_rel_profili_manuali d_rel_profili_manuali_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_rel_profili_manuali
    ADD CONSTRAINT d_rel_profili_manuali_pkey PRIMARY KEY (fk_seq_id_profili, fk_seq_id_manuali);


--
-- TOC entry 3496 (class 2606 OID 57932)
-- Name: d_rel_profili_menu d_rel_profili_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_rel_profili_menu
    ADD CONSTRAINT d_rel_profili_menu_pkey PRIMARY KEY (fk_seq_id_profili, fk_seq_id_menu);


--
-- TOC entry 3498 (class 2606 OID 57934)
-- Name: d_sanzioni_accessorie d_sanzioni_accessorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_sanzioni_accessorie
    ADD CONSTRAINT d_sanzioni_accessorie_pkey PRIMARY KEY (seq_id_sanzioni_accessorie);


--
-- TOC entry 3500 (class 2606 OID 57936)
-- Name: d_sottocategorie d_sottocategorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_sottocategorie
    ADD CONSTRAINT d_sottocategorie_pkey PRIMARY KEY (seq_id_sottocategorie);


--
-- TOC entry 3502 (class 2606 OID 57938)
-- Name: d_sottocategorie d_sottocategorie_seq_id_sottocategorie_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_sottocategorie
    ADD CONSTRAINT d_sottocategorie_seq_id_sottocategorie_key UNIQUE (seq_id_sottocategorie);


--
-- TOC entry 3504 (class 2606 OID 57940)
-- Name: d_stati_adi d_stati_adi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_stati_adi
    ADD CONSTRAINT d_stati_adi_pkey PRIMARY KEY (seq_id_stati_adi);


--
-- TOC entry 3506 (class 2606 OID 57942)
-- Name: d_stati_adi d_stati_adi_seq_id_stati_adi_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_stati_adi
    ADD CONSTRAINT d_stati_adi_seq_id_stati_adi_key UNIQUE (seq_id_stati_adi, codice_stato);


--
-- TOC entry 3508 (class 2606 OID 57944)
-- Name: d_stati_visure d_stati_visure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_stati_visure
    ADD CONSTRAINT d_stati_visure_pkey PRIMARY KEY (seq_id_stati_visure);


--
-- TOC entry 3510 (class 2606 OID 57946)
-- Name: d_stati_visure d_stati_visure_seq_id_stati_visure_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_stati_visure
    ADD CONSTRAINT d_stati_visure_seq_id_stati_visure_key UNIQUE (seq_id_stati_visure, codice_stato);


--
-- TOC entry 3512 (class 2606 OID 57948)
-- Name: d_tipo_visure d_tipo_visure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_tipo_visure
    ADD CONSTRAINT d_tipo_visure_pkey PRIMARY KEY (seq_id_tipo_visure);


--
-- TOC entry 3514 (class 2606 OID 57950)
-- Name: d_tipo_visure d_tipo_visure_seq_id_tipo_visure_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_tipo_visure
    ADD CONSTRAINT d_tipo_visure_seq_id_tipo_visure_key UNIQUE (seq_id_tipo_visure, codice_tipo);


--
-- TOC entry 3516 (class 2606 OID 57952)
-- Name: d_utenti d_utenti_codice_fiscale_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_utenti
    ADD CONSTRAINT d_utenti_codice_fiscale_key UNIQUE (codice_fiscale);


--
-- TOC entry 3518 (class 2606 OID 57954)
-- Name: d_utenti d_utenti_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_utenti
    ADD CONSTRAINT d_utenti_key UNIQUE (seq_id_utenti);


--
-- TOC entry 3520 (class 2606 OID 57956)
-- Name: d_utenti d_utenti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_utenti
    ADD CONSTRAINT d_utenti_pkey PRIMARY KEY (seq_id_utenti);


--
-- TOC entry 3524 (class 2606 OID 57958)
-- Name: d_visure d_visure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT d_visure_pkey PRIMARY KEY (seq_id_visure);


--
-- TOC entry 3525 (class 2606 OID 57959)
-- Name: d_adi d_adi_fk_comandi_zona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_fk_comandi_zona FOREIGN KEY (fk_seq_id_comandi_zona) REFERENCES public.d_comandi_zona(seq_id_comandi_zona) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3535 (class 2606 OID 57964)
-- Name: d_documenti d_documenti_fk_seq_id_categorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_fk_seq_id_categorie FOREIGN KEY (fk_seq_id_categorie) REFERENCES public.d_categorie(seq_id_categorie) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3536 (class 2606 OID 57969)
-- Name: d_documenti d_documenti_fk_seq_id_sottocategorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_fk_seq_id_sottocategorie FOREIGN KEY (fk_seq_id_sottocategorie) REFERENCES public.d_sottocategorie(seq_id_sottocategorie) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3526 (class 2606 OID 57974)
-- Name: d_adi fk_adi_d_utenti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT fk_adi_d_utenti FOREIGN KEY (fk_seq_id_utenti) REFERENCES public.d_utenti(seq_id_utenti) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3538 (class 2606 OID 57979)
-- Name: d_prosa_sanzioni_accessorie fk_codice_infrazione; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_prosa_sanzioni_accessorie
    ADD CONSTRAINT fk_codice_infrazione FOREIGN KEY (fk_codice_infrazione) REFERENCES public.d_prosa_sanzioni(codice_infrazione) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3528 (class 2606 OID 57984)
-- Name: d_adi_allegati fk_seq_id_adi_allegati; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_allegati
    ADD CONSTRAINT fk_seq_id_adi_allegati FOREIGN KEY (fk_seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3529 (class 2606 OID 57989)
-- Name: d_adi_localita fk_seq_id_adi_localita; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_localita
    ADD CONSTRAINT fk_seq_id_adi_localita FOREIGN KEY (seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3530 (class 2606 OID 57994)
-- Name: d_adi_notifiche fk_seq_id_adi_notifiche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_notifiche
    ADD CONSTRAINT fk_seq_id_adi_notifiche FOREIGN KEY (fk_seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3531 (class 2606 OID 57999)
-- Name: d_adi_vdc fk_seq_id_adi_vdc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_vdc
    ADD CONSTRAINT fk_seq_id_adi_vdc FOREIGN KEY (seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3532 (class 2606 OID 58004)
-- Name: d_adi_veicoli fk_seq_id_adi_veicoli; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_veicoli
    ADD CONSTRAINT fk_seq_id_adi_veicoli FOREIGN KEY (seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3534 (class 2606 OID 58009)
-- Name: d_adi_violazioni fk_seq_id_adi_violazioni; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_violazioni
    ADD CONSTRAINT fk_seq_id_adi_violazioni FOREIGN KEY (fk_seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3544 (class 2606 OID 58014)
-- Name: d_sottocategorie fk_seq_id_categorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_sottocategorie
    ADD CONSTRAINT fk_seq_id_categorie FOREIGN KEY (fk_seq_id_categorie) REFERENCES public.d_categorie(seq_id_categorie) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3533 (class 2606 OID 58019)
-- Name: d_adi_veicoli fk_seq_id_colori_veicoli; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi_veicoli
    ADD CONSTRAINT fk_seq_id_colori_veicoli FOREIGN KEY (fk_seq_id_colori_veicoli) REFERENCES public.d_colori_veicoli(seq_id_colori_veicoli) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3539 (class 2606 OID 58024)
-- Name: d_rel_profili_manuali fk_seq_id_manuali_rel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_rel_profili_manuali
    ADD CONSTRAINT fk_seq_id_manuali_rel FOREIGN KEY (fk_seq_id_manuali) REFERENCES public.d_manuali(seq_id_manuali) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3537 (class 2606 OID 58029)
-- Name: d_modelli_veicoli fk_seq_id_marche_veicoli; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_modelli_veicoli
    ADD CONSTRAINT fk_seq_id_marche_veicoli FOREIGN KEY (fk_seq_id_marche_veicoli) REFERENCES public.d_marche_veicoli(seq_id_marche_veicoli) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3541 (class 2606 OID 58034)
-- Name: d_rel_profili_menu fk_seq_id_menu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_rel_profili_menu
    ADD CONSTRAINT fk_seq_id_menu FOREIGN KEY (fk_seq_id_menu) REFERENCES public.d_menu(seq_id_menu) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3542 (class 2606 OID 58039)
-- Name: d_rel_profili_menu fk_seq_id_profili; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_rel_profili_menu
    ADD CONSTRAINT fk_seq_id_profili FOREIGN KEY (fk_seq_id_profili) REFERENCES public.d_profili(seq_id_profili) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3540 (class 2606 OID 58044)
-- Name: d_rel_profili_manuali fk_seq_id_profili_rel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_rel_profili_manuali
    ADD CONSTRAINT fk_seq_id_profili_rel FOREIGN KEY (fk_seq_id_profili) REFERENCES public.d_profili(seq_id_profili) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3543 (class 2606 OID 58049)
-- Name: d_sanzioni_accessorie fk_seq_id_sanzioni_accessorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_sanzioni_accessorie
    ADD CONSTRAINT fk_seq_id_sanzioni_accessorie FOREIGN KEY (fk_seq_id_violazione) REFERENCES public.d_adi_violazioni(seq_id_adi_violazioni) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3527 (class 2606 OID 58054)
-- Name: d_adi fk_seq_id_stati_adi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT fk_seq_id_stati_adi FOREIGN KEY (fk_seq_id_stati_adi) REFERENCES public.d_stati_adi(seq_id_stati_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3545 (class 2606 OID 58059)
-- Name: d_visure fk_seq_id_stati_visure; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT fk_seq_id_stati_visure FOREIGN KEY (fk_seq_id_stati_visure) REFERENCES public.d_stati_visure(seq_id_stati_visure) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3546 (class 2606 OID 58064)
-- Name: d_visure fk_seq_id_tipo_visure; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT fk_seq_id_tipo_visure FOREIGN KEY (fk_seq_id_tipo_visure) REFERENCES public.d_tipo_visure(seq_id_tipo_visure) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3547 (class 2606 OID 58069)
-- Name: d_visure fk_visure_d_utenti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT fk_visure_d_utenti FOREIGN KEY (fk_seq_id_utenti) REFERENCES public.d_utenti(seq_id_utenti) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2022-07-04 11:34:52 CEST

--
-- PostgreSQL database dump complete
--