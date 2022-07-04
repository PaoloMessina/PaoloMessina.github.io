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

INSERT INTO public.d_colori_veicoli VALUES (1, 'AMARANTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (2, 'ARANCIONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (3, 'AVORIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (4, 'AZZURRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (5, 'BEIGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (6, 'BIANCO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (7, 'BLU', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (8, 'BLU ELETTRICO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (9, 'BLU SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (10, 'BORDEAUX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (11, 'CELESTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (12, 'GIALLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (13, 'GLICINE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (14, 'GRANATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (15, 'GRIGIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (16, 'KAKI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (17, 'LILLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (18, 'MAGENTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (19, 'MARRONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (20, 'MARRONE CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (21, 'MARRONE SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (22, 'NERO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (23, 'OCRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (24, 'ORO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (25, 'RAME', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (26, 'ROSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (27, 'ROSSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (28, 'VERDE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (29, 'VIOLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (30, 'VIOLETTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3694 (class 0 OID 57642)
-- Dependencies: 216
-- Data for Name: d_comandi_zona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_comandi_zona VALUES (1, '31', 'LH010', 'COMANDO DECENTRATO 1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.055439', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (2, '32', 'LH011', 'COMANDO DECENTRATO 2', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.056749', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (3, '33', 'LH012', 'COMANDO DECENTRATO 3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.057527', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (4, '34', 'LH013', 'COMANDO DECENTRATO 4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.0582', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (5, '35', 'LH014', 'COMANDO DECENTRATO 5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.058835', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (6, '36', 'LH015', 'COMANDO DECENTRATO 6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.059496', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (7, '37', 'LH016', 'COMANDO DECENTRATO 7', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.06031', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (8, '38', 'LH017', 'COMANDO DECENTRATO 8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.061304', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (9, '39', 'LH018', 'COMANDO DECENTRATO 9', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.062214', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (10, '31', 'LH077', 'UNITA'' INFORMATICA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.063042', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (11, '31', 'LH065', 'UNITA'' ACCERTAMENTI TRIBUTI COSAP', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.063983', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (12, '31', 'LH058', 'UNITA'' AFFARI GIURIDICI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.064715', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (13, '31', 'LH079', 'UNITA'' AMMINISTRATIVA E CONTABILE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.065466', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (14, '02', 'LH019', 'UNITA'' ANNORATIA E COMMERCIALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.066233', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (15, '31', 'LH068', 'UNITA'' ANTICORRUZIONE E QUALITA''', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.066962', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (16, '31', 'LH038', 'UNITA'' CENTRALE INFORMATIVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.067707', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (17, '31', 'LH041', 'UNITA'' CENTRALE OPERATIVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.068426', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (18, '22', 'LH074', 'UNITA'' CONTENZIOSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.069321', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (19, '38', 'LH049', 'UNITA'' COORDINAMENTO SICUREZZA TERRITOR INTEGRATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.070079', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (20, '26', 'LH055', 'UNITA'' G.E.V.', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.07092', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (21, '31', 'LH064', 'UNITA'' GABINETTO DI POLIZIA LOCALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.071768', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (22, '31', 'LH078', 'UNITA'' GARE BENI DI SERVIZI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.072514', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (23, '31', 'LH056', 'UNITA'' GESTIONE DEL PERSONALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.07329', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (24, '22', 'LH071', 'UNITA'' GESTIONE VERBALI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.074043', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (25, '01', 'LH066', 'UNITA'' INVESTIGAZIONI E PREVENZIONI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.074811', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (26, '34', 'LH076', 'UNITA'' LOGISTICA E DOTAZIONI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.075808', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (27, '01', 'LH080', 'UNITA'' OPERATIVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.07685', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (28, '31', 'LH061', 'UNITA'' PERSONALE DISTAC PRESSO L''AUTORITA'' GIUDIZ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.078318', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (29, '31', 'LH057', 'UNITA'' PIANIFICAZIONE SERVIZI DEL PERSONALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.079528', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (30, '31', 'LH069', 'UNITA'' PROVACY ED ACCESSO ATTI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.080569', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (31, '01', 'LH020', 'UNITA'' RADIOMOBILE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.081579', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (32, '21', 'LH067', 'UNITA'' RIMOZIONI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.082341', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (33, '22', 'LH072', 'UNITA'' RISCOSSIONI E RELAZIONI CON IL PUBBLICO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.083129', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (34, '35', 'LH063', 'UNITA'' SCUOLA DEL CORPO EDUCAZIONE STRADALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.083849', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_comandi_zona VALUES (35, '22', 'LH073', 'UNITA'' TELECAMERE E REGOLAMENTI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.084561', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3696 (class 0 OID 57650)
-- Dependencies: 218
-- Data for Name: d_contatti; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_contatti VALUES (1, 'Pl.gabinettocomando@comune.milano.it', '2022-03-15 14:08:07.085329', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_contatti VALUES (2, 'Pl.cooperazioni@comune.milano.it', '2022-03-15 14:08:07.086453', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_contatti VALUES (3, 'Pl.cocapoturno@comune.milano.it', '2022-03-15 14:08:07.087361', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3698 (class 0 OID 57658)
-- Dependencies: 220
-- Data for Name: d_credenziali_mctc; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_credenziali_mctc VALUES (1, 'CMMI000027', 'XXXXXX', '9999-12-31', '2022-03-15 14:08:07.08806', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3700 (class 0 OID 57666)
-- Dependencies: 222
-- Data for Name: d_documenti; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3702 (class 0 OID 57677)
-- Dependencies: 224
-- Data for Name: d_manuali; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3704 (class 0 OID 57685)
-- Dependencies: 226
-- Data for Name: d_marche_veicoli; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_marche_veicoli VALUES (1, 1, 'ABARTH', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (2, 2, 'AIXAM', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (3, 3, 'ALFA ROMEO', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (4, 4, 'ALPINA-BMW', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (5, 5, 'ASTON MARTIN', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (6, 6, 'AUDI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (7, 7, 'AUSTIN ROVER', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (8, 8, 'BENTLEY', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (9, 9, 'BMW', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (10, 10, 'BREMACH', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (11, 11, 'CADILLAC', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (12, 12, 'CHEVROLET', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (13, 13, 'CHRYSLER', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (14, 14, 'CITROEN', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (15, 15, 'CORVETTE', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (16, 16, 'CUPRA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (17, 17, 'DACIA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (18, 18, 'DAEWOO', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (19, 19, 'DAF', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (20, 20, 'DAIHATSU', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (21, 21, 'DODGE', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (22, 22, 'DR', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (23, 23, 'FERRARI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (24, 24, 'FIAT', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (25, 25, 'FISKER', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (26, 26, 'FORD', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (28, 28, 'GREAT WALL', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (29, 29, 'HONDA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (30, 30, 'HUMMER', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (31, 31, 'HYUNDAI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (32, 32, 'INFINITI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (33, 33, 'INNOCENTI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (34, 34, 'ISUZU', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (35, 35, 'IVECO', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (36, 36, 'JAGUAR', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (37, 37, 'JEEP', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (38, 38, 'KIA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (39, 39, 'LADA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (40, 40, 'LAMBORGHINI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (41, 41, 'LANCIA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (42, 42, 'LAND ROVER', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (43, 43, 'LEXUS', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (44, 44, 'LIGIER', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (45, 45, 'LOTUS', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (46, 46, 'MASERATI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (47, 47, 'MAZDA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (48, 48, 'MERCEDES', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (49, 49, 'MG', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (50, 50, 'MINI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (51, 51, 'MITSUBISHI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (52, 52, 'NISSAN', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (53, 53, 'OPEL', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (54, 54, 'PEUGEOT', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (55, 55, 'PORSCHE', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (56, 56, 'RENAULT', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (57, 57, 'ROVER', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (58, 58, 'SAAB', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (59, 59, 'SCANIA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (60, 60, 'SEAT', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (61, 61, 'SIMCA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (62, 62, 'SKODA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (63, 63, 'SMART', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (64, 64, 'SSANGYONG', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (65, 65, 'SUBARU', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (66, 66, 'SUZUKI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (67, 67, 'TATA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (68, 68, 'TESLA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (69, 69, 'TOYOTA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (70, 70, 'VOLKSWAGEN', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (71, 71, 'VOLVO', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (72, 72, 'ZD', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (73, 73, 'APRILIA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (74, 74, 'ASKOLL', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (75, 75, 'BENELLI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (76, 76, 'BUELL', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (77, 77, 'CASALINI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (78, 78, 'CHATENET', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (79, 79, 'DERBI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (80, 80, 'DUCATI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (81, 81, 'GILERA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (82, 82, 'GOVECS', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (83, 83, 'GUZZI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (84, 84, 'HARLEY-DAVIDSON', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (85, 85, 'HUSQVARNA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (86, 86, 'ITALCAR', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (87, 87, 'KAWASAKI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (88, 88, 'KTM', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (89, 89, 'KYMCO', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (90, 90, 'MALAGUTI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (91, 91, 'META', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (92, 92, 'MOTO MORINI', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (93, 93, 'PIAGGIO', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (94, 94, 'POLARIS', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (95, 95, 'SYM', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (96, 96, 'TOWNLIFE', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (97, 97, 'TRIUMPH', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (98, 98, 'VYRUS', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (99, 99, 'YAMAHA', '2022-07-04', '9999-12-31', '2022-07-04 11:21:48.353665', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3706 (class 0 OID 57693)
-- Dependencies: 228
-- Data for Name: d_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_menu VALUES (3, 'Archivio ADI e Visure', '', 'assets/svg/wireless-patrol.svg#archivio-e-visure', 3, 0, false, '2022-03-15 14:08:07.139489', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (6, 'Gestione MCTC', 'gestione-mctc', NULL, 1, 2, false, '2022-03-15 14:08:07.140309', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (7, 'Gestione Contatti', 'gestione-contatti', NULL, 2, 2, false, '2022-03-15 14:08:07.140921', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (8, 'Ricerca ADI', 'ricerca-adi', NULL, 1, 3, false, '2022-03-15 14:08:07.14157', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (9, 'Ricerca Visure', 'ricerca-visure', NULL, 2, 3, false, '2022-03-15 14:08:07.142175', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (10, 'Archivio Documenti', 'archivio-documenti', NULL, 1, 5, false, '2022-03-15 14:08:07.142942', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (11, 'Gestisci Categorie', 'gestisci-categorie', NULL, 2, 5, false, '2022-03-15 14:08:07.143646', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (1, 'Overview', 'overview', 'assets/svg/wireless-patrol.svg#overview', 1, 0, false, '2022-03-15 14:08:07.144192', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (4, 'Statistiche', 'statistiche', 'assets/svg/wireless-patrol.svg#statistiche', 4, 0, false, '2022-03-15 14:08:07.144728', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (5, 'Documenti', '', 'assets/svg/wireless-patrol.svg#documenti', 5, 0, false, '2022-03-15 14:08:07.145467', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (12, 'Marche e Modelli', 'marche-modelli', NULL, 4, 2, false, '2022-03-15 14:08:07.146187', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (2, 'Amministrazione', '', 'assets/svg/wireless-patrol.svg#amministrazione', 2, 0, false, '2022-03-15 14:08:07.14711', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (13, 'Colori', 'gestione-colori', NULL, 5, 2, false, '2022-03-15 14:08:07.147815', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (14, 'Gestione Utenti', 'gestione-utenti', NULL, 3, 2, false, '2022-03-15 14:08:07.148439', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (15, 'Dashboard', 'dashboard-statistiche', NULL, 1, 4, false, '2022-03-15 14:08:07.149059', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (16, 'Elenco', 'elenco-statistiche', NULL, 2, 4, false, '2022-03-15 14:08:07.149762', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (17, 'Sanzioni', 'sanzioni', NULL, 1, 0, true, '2022-03-15 14:08:07.150479', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (18, 'Archivio Sanzioni', 'archivio-sanzioni', NULL, 1, 0, true, '2022-03-15 14:08:07.151126', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (19, 'Visure', 'visure', NULL, 1, 0, true, '2022-03-15 14:08:07.151746', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (20, 'Prontuario', 'prontuario', NULL, 1, 0, true, '2022-03-15 14:08:07.152303', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (21, 'Commercio', 'commercio', NULL, 1, 0, true, '2022-03-15 14:08:07.15288', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_menu VALUES (22, 'Prosa', 'gestione-prosa', NULL, 6, 2, false, '2022-03-15 14:08:07.147815', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3708 (class 0 OID 57704)
-- Dependencies: 230
-- Data for Name: d_modelli_veicoli; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_modelli_veicoli VALUES (1, 1, 'ZOE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (2, 1, '500', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (3, 1, 'GRANDE PUNTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (4, 2, 'CITY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (5, 3, '147', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (6, 3, '159', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (7, 3, '166', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (8, 3, 'GT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (9, 3, 'BRERA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (10, 3, 'MONTREAL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (11, 3, 'MITO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (12, 3, 'CROSSWAGON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (13, 3, '159 SW', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (14, 3, 'GIULIETTA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (15, 3, 'SPIDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (16, 3, 'SPORTWAGON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (17, 3, '156', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (18, 3, '164', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (19, 3, '155', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (20, 3, '75', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (21, 3, '33', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (22, 3, '146', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (23, 3, 'STELVIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (24, 4, 'D3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (25, 4, 'B6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (26, 4, 'B5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (27, 4, 'B3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (28, 5, 'DB7', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (29, 5, 'V8 VANTAGE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (30, 5, 'DBS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (31, 5, 'DB9', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (32, 5, 'V12', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (33, 5, 'RAPIDE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (34, 6, 'A2', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (35, 6, 'A3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (36, 6, 'A4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (37, 6, 'A5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (38, 6, 'A6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (39, 6, 'A8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (40, 6, 'ALLROAD', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (41, 6, 'AUDI 100', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (42, 6, 'AUDI 80', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (43, 6, 'A1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (44, 6, 'Q1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (45, 6, 'Q2', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (46, 6, 'Q3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (47, 6, 'Q4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (48, 6, 'Q5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (49, 6, 'Q7', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (50, 6, 'Q8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (51, 6, 'R8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (52, 6, 'RS4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (53, 6, 'RS6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (54, 6, 'S3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (55, 6, 'S4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (56, 6, 'S5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (57, 6, 'S6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (58, 6, 'S8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (59, 6, 'TT  COUPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (60, 6, 'TT  SPIDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (61, 7, 'MINI METRO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (62, 7, '3500 VITESSE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (63, 7, 'MONTEGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (64, 8, 'CONTINENTAL-FLYING SPUR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (65, 8, 'AZURE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (66, 8, 'ARNAGE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (67, 8, 'BROOKLAND', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (68, 9, 'X1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (69, 9, '116I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (70, 9, '118I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (71, 9, '120I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (72, 9, '125I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (73, 9, '130I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (74, 9, '135I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (75, 9, '216', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (76, 9, '316', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (77, 9, '318', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (78, 9, '320', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (79, 9, '323', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (80, 9, '325', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (81, 9, '328', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (82, 9, '330', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (83, 9, '335', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (84, 9, '420', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (85, 9, '430', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (86, 9, '520', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (87, 9, '523', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (88, 9, '525', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (89, 9, '528', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (90, 9, '530', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (91, 9, '535', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (92, 9, '540', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (93, 9, '545', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (94, 9, '550I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (95, 9, '630I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (96, 9, '645I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (97, 9, '650I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (98, 9, '728', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (99, 9, '730', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (100, 9, '735', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (101, 9, '740', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (102, 9, '745', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (103, 9, '750', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (104, 9, '760I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (105, 9, '840', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (106, 9, 'M3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (107, 9, 'M5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (108, 9, 'M6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (109, 9, 'X2', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (110, 9, 'X3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (111, 9, 'X4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (112, 9, 'X5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (113, 9, 'X6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (114, 9, 'X7', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (115, 9, 'X8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (116, 9, 'Z3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (117, 9, 'Z4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (118, 9, 'Z8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (119, 9, 'SERIE 1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (120, 9, 'SERIE 3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (121, 9, 'COUPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (122, 9, 'SERIE 5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (123, 9, 'SERIE 6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (124, 9, 'SERIE 7', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (125, 9, 'GS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (126, 9, 'R1100R', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (127, 10, 'JOB X4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (128, 10, 'JOB XTREME', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (129, 11, 'BLS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (130, 11, 'XLR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (131, 11, 'ESCALADE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (132, 11, 'SRX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (133, 11, 'CTS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (134, 11, 'SEVILLE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (135, 11, 'STS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (136, 12, '300', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (137, 12, 'AVEO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (138, 12, 'CAMARO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (139, 12, 'CAPTIVA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (140, 12, 'CROSSFIRE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (141, 12, 'CRUZE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (142, 12, 'EPICA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (143, 12, 'EVANDA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (144, 12, 'GRAND VOYAGER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (145, 12, 'KALOS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (146, 12, 'LACETTI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (147, 12, 'MATIZ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (148, 12, 'NUBIRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (149, 12, 'ORLANDO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (150, 12, 'TACUMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (151, 12, 'SPARK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (152, 13, 'NEON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (153, 13, 'PT CRUISER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (154, 13, 'SEBRING', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (155, 13, 'STRATUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (156, 13, 'TRANS SPORT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (157, 13, 'VISION', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (158, 13, 'VOYAGER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (159, 13, 'GRAND  VOYAGER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (160, 13, 'CROSSFIRE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (161, 14, 'AX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (162, 14, 'BERLINGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (163, 14, 'BX 16 TZI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (164, 14, 'C1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (165, 14, 'C2', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (166, 14, 'C3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (167, 14, 'C4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (168, 14, 'C5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (169, 14, 'C6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (170, 14, 'C8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (171, 14, 'DS4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (172, 14, 'DS5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (173, 14, 'DS7', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (174, 14, 'DS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (175, 14, 'C-CROSSER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (176, 14, 'EVASION', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (177, 14, 'SAXO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (178, 14, 'XANTIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (179, 14, 'XM', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (180, 14, 'XSARA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (181, 14, 'ZX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (182, 14, 'XSARA PICASSO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (183, 14, 'JUMPY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (184, 14, 'NEMO VAN ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (185, 14, 'JUMPER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (186, 14, 'C-ZERO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (187, 14, 'SPACETOURER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (188, 15, 'CORVETTE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (189, 16, 'LEON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (190, 16, 'BORN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (191, 16, 'ATECA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (192, 16, 'FORMENTOR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (193, 17, 'LOGAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (194, 17, 'SANDERO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (195, 17, 'DUSTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (196, 17, 'LODGY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (197, 17, 'DOKKER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (198, 17, 'JOGGER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (199, 18, 'ESPERO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (200, 18, 'KALOS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (201, 18, 'LACETTI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (202, 18, 'LANOS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (203, 18, 'LEGANZA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (204, 18, 'MATIZ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (205, 18, 'NEXIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (206, 18, 'NUBIRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (207, 18, 'TACUMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (208, 18, 'EVANDA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (209, 19, 'LF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (210, 19, 'XF 105', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (211, 19, 'CF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (212, 20, 'TERIOS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (213, 20, 'YRV', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (214, 20, 'MATERIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (215, 20, 'MOVE I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (216, 20, 'SIRION', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (217, 20, 'TREVIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (218, 20, 'COPEN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (219, 20, 'CUORE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (220, 21, 'AVENGER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (221, 21, 'JOURNEY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (222, 21, 'CALIBER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (223, 21, 'NITRO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (224, 21, 'VAIPER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (225, 22, 'DR5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (226, 23, '360 MODENA F1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (227, 23, 'F8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (228, 23, 'F 430', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (229, 23, '612', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (230, 23, 'CALIFORNIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (231, 23, '575M', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (232, 23, 'BARCHETTA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (233, 23, '360', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (234, 23, 'ROMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (235, 23, 'CHALLENGE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (236, 23, '599 GTB', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (237, 23, 'F40', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (238, 23, 'TESTAROSSA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (239, 23, '166 SPORT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (240, 24, 'BRAVA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (241, 24, 'BRAVO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (242, 24, 'CINQUECENTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (243, 24, 'CINQUECENTO L', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (244, 24, 'COUPE''', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (245, 24, 'CROMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (246, 24, 'DOBLO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (247, 24, 'DUCATO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (248, 24, 'FIORINO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (249, 24, 'GRANDE PUNTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (250, 24, 'IDEA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (251, 24, 'MAREA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (252, 24, 'MULTIPLA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (253, 24, 'PALIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (254, 24, 'PALIO WEEKEND', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (255, 24, 'PANDA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (256, 24, 'PANDA VAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (257, 24, 'PUNTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (258, 24, 'PUNTO VAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (259, 24, 'QUBO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (260, 24, 'RITMO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (261, 24, 'SCUDO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (262, 24, 'SEDICI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (263, 24, 'SEICENTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (264, 24, 'STILO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (265, 24, 'STRADA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (266, 24, 'TEMPRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (267, 24, 'TIPO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (268, 24, 'ULYSSE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (269, 24, 'UNO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (270, 24, '126', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (271, 24, '127', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (272, 24, 'FREEMONT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (273, 24, 'TALENTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (274, 24, 'STILO WAGON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (275, 25, 'KARMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (276, 26, 'C-MAX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (277, 26, 'COUGAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (278, 26, 'ECOSPORT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (279, 26, 'ESCORT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (280, 26, 'FIESTA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (281, 26, 'FIESTA VAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (282, 26, 'FOCUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (283, 26, 'FUSION', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (284, 26, 'GALAXY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (285, 26, 'KA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (286, 26, 'KUGA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (287, 26, 'MONDEO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (288, 26, 'MUSTANG', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (289, 26, 'ORION', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (290, 26, 'PUMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (291, 26, 'RANGER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (292, 26, 'SCORPIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (293, 26, 'SIERRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (294, 26, 'S-MAX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (295, 26, 'TOURNEO ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (296, 26, 'TOURNEO CONNECT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (297, 26, 'TRANSIT CHASSIS ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (298, 26, 'TRANSIT COMBI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (299, 26, 'TRANSIT CONNECT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (300, 26, 'TRANSIT VAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (301, 26, 'VIGNALE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (302, 28, 'STEED', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (303, 28, 'HOVER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (304, 28, 'STEED SC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (305, 28, 'HORNET', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (306, 29, 'ZOOMER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (307, 29, 'ACCORD', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (308, 29, 'CIVIC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (309, 29, 'CONCERTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (310, 29, 'CR-V', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (311, 29, 'CRX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (312, 29, 'FR-V', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (313, 29, 'HR-V', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (314, 29, 'INTEGRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (315, 29, 'JAZZ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (316, 29, 'LEGEND', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (317, 29, 'LOGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (318, 29, 'NSX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (319, 29, 'PRELUDE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (320, 29, 'S 2000', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (321, 29, 'SHUTTLE ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (322, 29, 'STREAM', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (323, 29, 'CRZ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (324, 29, 'INSIGHT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (325, 30, 'H3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (326, 30, 'H1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (327, 30, 'H2', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (328, 31, 'ACCENT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (329, 31, 'ATOS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (330, 31, 'COUPE''', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (331, 31, 'ELANTRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (332, 31, 'GETZ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (333, 31, 'H-1', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (334, 31, 'I10', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (335, 31, 'I20', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (336, 31, 'I40', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (337, 31, 'I30', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (338, 31, 'KONA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (339, 31, 'MATRIX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (340, 31, 'PONY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (341, 31, 'SANTA FE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (342, 31, 'SANTAMO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (343, 31, 'SONATA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (344, 31, 'SONICA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (345, 31, 'TERRACAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (346, 31, 'TRAJET', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (347, 31, 'TUCSON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (348, 31, 'XG30', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (349, 31, 'IX35', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (350, 31, 'IX20', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (351, 31, 'VELOSTAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (352, 32, 'EX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (353, 32, 'FX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (354, 32, 'G', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (355, 33, 'MINI COOPER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (356, 33, 'ELBA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (357, 33, 'SMALL 500 LS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (358, 33, 'SMALL 990 SE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (359, 34, 'ASCENDER 7', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (360, 34, 'PICK UP', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (361, 34, 'D-MAX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (362, 34, 'NKR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (363, 34, 'NPR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (364, 34, 'NQR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (365, 34, 'TROPER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (366, 35, 'LKW/TRUCKS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (367, 35, '79-14', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (368, 35, 'COMET', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (369, 35, 'MASSIF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (370, 35, 'CAMPAGNOLA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (371, 35, 'DAILY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (372, 35, 'STRALIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (373, 36, 'DAIMLER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (374, 36, 'JAGUAR XJ6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (375, 36, 'F-TYPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (376, 36, 'S-TYPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (377, 36, 'XF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (378, 36, 'XJ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (379, 36, 'XJ6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (380, 36, 'XJ8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (381, 36, 'XK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (382, 36, 'XK8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (383, 36, 'XKR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (384, 36, 'X-TYPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (385, 36, 'X', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (386, 37, 'CHEROKEE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (387, 37, 'COMMANDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (388, 37, 'COMPASS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (389, 37, 'GRAND CHEROKEE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (390, 37, 'PATRIOT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (391, 37, 'WRANGLER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (392, 37, 'RENEGADE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (393, 38, 'CARENS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (394, 38, 'CARNIVAL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (395, 38, 'CEE D', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (396, 38, 'CERATO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (397, 38, 'CLARUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (398, 38, 'JOICE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (399, 38, 'K2500', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (400, 38, 'MAGENTIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (401, 38, 'OPIRUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (402, 38, 'PICANTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (403, 38, 'PRIDE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (404, 38, 'RIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (405, 38, 'SEPHIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (406, 38, 'SHUMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (407, 38, 'SORENTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (408, 38, 'SOUL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (409, 38, 'SPORTAGE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (410, 38, 'STONIC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (411, 38, 'VENGA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (412, 39, 'NIVA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (413, 39, 'SAMARA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (414, 39, 'SERIE 100', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (415, 40, 'GALLARDO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (416, 40, 'HURACAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (417, 40, 'MURCIELAGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (418, 40, 'URUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (419, 41, 'BETA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (420, 41, 'DEDRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (421, 41, 'DELTA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (422, 41, 'GAMMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (423, 41, 'K', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (424, 41, 'LYBRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (425, 41, 'MUSA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (426, 41, 'PHEDRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (427, 41, 'PRISMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (428, 41, 'RALLYE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (429, 41, 'THEMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (430, 41, 'THESIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (431, 41, 'YPSILON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (432, 41, 'ZETA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (433, 41, 'FLAVIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (434, 41, 'FULVIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (435, 41, 'VOYAGER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (436, 42, '88 REGULAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (437, 42, 'DEFENDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (438, 42, 'DISCOVERY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (439, 42, 'FREELANDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (440, 42, 'RANGE ROVER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (441, 43, 'GS 300', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (442, 43, 'GS 430', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (443, 43, 'GS 450H', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (444, 43, 'IS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (445, 43, 'IS 250', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (446, 43, 'LS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (447, 43, 'RX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (448, 43, 'SC 430', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (449, 44, 'JS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (450, 44, 'JS50', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (451, 45, 'ELISE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (452, 45, 'ESPRITE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (453, 45, 'EUROPA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (454, 45, 'EVORA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (455, 45, 'EXIGE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (456, 46, '3200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (457, 46, '4P', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (458, 46, 'COUPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (459, 46, 'GHIBLI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (460, 46, 'GRAN TURISMO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (461, 46, 'GRANSPORT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (462, 46, 'LEVANTE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (463, 46, 'QUATTROPORTE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (464, 46, 'SPIDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (465, 46, 'SPYDER CAMBIOCORSA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (466, 47, '121', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (467, 47, '323 F', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (468, 47, '626', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (469, 47, 'CX-7', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (470, 47, 'DEMIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (471, 47, 'MAZDA 2', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (472, 47, 'MAZDA 3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (473, 47, 'MAZDA ''5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (474, 47, 'MAZDA 6 ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (475, 47, 'MPV', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (476, 47, 'MX - 5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (477, 47, 'PREMACY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (478, 47, 'RX-8', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (479, 47, 'TRIBUTE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (480, 47, 'XEDOS 6', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (481, 48, 'A140', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (482, 48, 'A150', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (483, 48, 'A170', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (484, 48, 'A180D', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (485, 48, 'A250', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (486, 48, 'AMG', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (487, 48, 'B160', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (488, 48, 'B170', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (489, 48, 'B180', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (490, 48, 'B200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (491, 48, 'C200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (492, 48, 'C220', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (493, 48, 'C220D', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (494, 48, 'C250', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (495, 48, 'C320', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (496, 48, 'E200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (497, 48, 'E250', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (498, 48, 'E280', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (499, 48, 'E320', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (500, 48, 'E350', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (501, 48, 'GLA180', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (502, 48, 'GLA200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (503, 48, 'GLC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (504, 48, 'GLC250', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (505, 48, 'GLC350', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (506, 48, 'GLE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (507, 48, 'GLE250', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (508, 48, 'GLE350', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (509, 48, '190', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (510, 48, '200 E', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (511, 48, '230', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (512, 48, '300 E', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (513, 48, '300 SL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (514, 48, '500', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (515, 48, 'CL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (516, 48, 'CLASSE A', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (517, 48, 'CLASSE B', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (518, 48, 'CLASSE C', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (519, 48, 'CLASSE C SW', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (520, 48, 'CLASSE E', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (521, 48, 'CLASSE G', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (522, 48, 'CLASSE GL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (523, 48, 'CLASSE GLK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (524, 48, 'CLASSE M', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (525, 48, 'CLASSE R ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (526, 48, 'CLASSE S', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (527, 48, 'CLK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (528, 48, 'CLS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (529, 48, 'GLK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (530, 48, 'SL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (531, 48, 'SLK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (532, 48, 'SLR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (533, 48, 'SPRINTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (534, 48, 'V', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (535, 48, 'VANEO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (536, 48, 'VARIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (537, 48, 'VIANO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (538, 48, 'VITO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (539, 49, 'MGF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (540, 49, 'ZR ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (541, 49, 'ZT ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (542, 49, 'ZS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (543, 49, 'TF ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (544, 50, 'CLUBMAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (545, 50, 'COUNTRYMAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (546, 50, 'COOPER D', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (547, 50, 'COOPER S', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (548, 50, 'ONE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (549, 50, 'SPIKE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (550, 50, 'BERLINA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (551, 50, 'CABRIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (552, 50, 'MINI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (553, 51, '3000 GT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (554, 51, 'ASX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (555, 51, 'CARISMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (556, 51, 'COLT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (557, 51, 'COOPER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (558, 51, 'ECLIPSE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (559, 51, 'GRANDIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (560, 51, 'L 200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (561, 51, 'LANCER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (562, 51, 'OUTLANDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (563, 51, 'PAJERO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (564, 51, 'SPACE STAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (565, 51, 'SPACE WAGON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (566, 51, 'MIEV', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (567, 52, '200 SX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (568, 52, '350Z', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (569, 52, 'ALMERA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (570, 52, 'ATLEON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (571, 52, 'CABSTAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (572, 52, 'CUBE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (573, 52, 'EVALIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (574, 52, 'GT-R', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (575, 52, 'INTERSTAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (576, 52, 'JUKE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (577, 52, 'LEAF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (578, 52, 'MAXIMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (579, 52, 'MICRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (580, 52, 'MURANO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (581, 52, 'NOTE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (582, 52, 'NP 300', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (583, 52, 'NU 200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (584, 52, 'PATHFINDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (585, 52, 'PATROL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (586, 52, 'PIXO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (587, 52, 'PRIMASTAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (588, 52, 'PRIMERA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (589, 52, 'QASHQAI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (590, 52, 'SERENA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (591, 52, 'TERRANO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (592, 52, 'TOWNSTAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (593, 52, 'X-TRAIL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (594, 53, 'AGILA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (595, 53, 'AMPERA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (596, 53, 'ANTARA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (597, 53, 'ASTRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (598, 53, 'ASTRAVAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (599, 53, 'CALIBRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (600, 53, 'COMBO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (601, 53, 'CORSA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (602, 53, 'CORSAVAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (603, 53, 'CROSSLAND', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (604, 53, 'FRONTERA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (605, 53, 'GT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (606, 53, 'INSIGNA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (607, 53, 'MERIVA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (608, 53, 'MOVARO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (609, 53, 'OMEGA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (610, 53, 'SIGNUM', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (611, 53, 'SINTRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (612, 53, 'SPEEDSTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (613, 53, 'TIGRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (614, 53, 'VECTRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (615, 53, 'VIVARO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (616, 53, 'ZAFIRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (617, 53, 'KADETT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (618, 53, 'MOKKA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (619, 54, '1007', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (620, 54, '106', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (621, 54, '107', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (622, 54, '205', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (623, 54, '206', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (624, 54, '207', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (625, 54, '3008', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (626, 54, '306', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (627, 54, '307', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (628, 54, '308', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (629, 54, '309', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (630, 54, '4007', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (631, 54, '405', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (632, 54, '406', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (633, 54, '407', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (634, 54, '605', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (635, 54, '607', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (636, 54, '806', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (637, 54, '807', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (638, 54, 'PARTNER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (639, 54, 'RANCH', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (640, 54, '208', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (641, 54, '508', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (642, 54, 'RCZ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (643, 54, '5008', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (644, 54, 'BIPPER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (645, 54, 'PATNER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (646, 54, 'EXPERT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (647, 54, 'ION', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (648, 54, 'RIFTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (649, 54, 'TRAVELLER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (650, 55, '911', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (651, 55, 'BOXSTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (652, 55, 'CAYMAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (653, 55, 'CAYMAN S', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (654, 55, 'CAYENNE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (655, 55, 'MACAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (656, 55, 'PANAMERA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (657, 55, 'TAYCAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (658, 56, '19', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (659, 56, '21', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (660, 56, '21 NEVADA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (661, 56, 'AVANTIME', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (662, 56, 'BIPPER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (663, 56, 'BOXER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (664, 56, 'CLIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (665, 56, 'ESPACE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (666, 56, 'EXPERT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (667, 56, 'GRAND ESPACE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (668, 56, 'GRAND SCENIC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (669, 56, 'KANGOO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (670, 56, 'KOLEOS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (671, 56, 'LAGUNA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (672, 56, 'MEGANE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (673, 56, 'MEGANE SW', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (674, 56, 'MODUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (675, 56, 'PARTNER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (676, 56, 'RANCH', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (677, 56, 'SAFRANE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (678, 56, 'SCENIC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (679, 56, 'SUPER5', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (680, 56, 'TALISMAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (681, 56, 'TWINGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (682, 56, 'VEL SATIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (683, 56, 'WIND', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (684, 56, 'KADJAR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (685, 56, 'TWIZY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (686, 56, 'MASTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (687, 56, 'ZOE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (688, 56, 'ARKANA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (689, 57, 'ROVER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (690, 57, '111', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (691, 57, '114I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (692, 57, '200', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (693, 57, '211I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (694, 57, '214', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (695, 57, '216', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (696, 57, '25', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (697, 57, '414', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (698, 57, '416', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (699, 57, '618', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (700, 57, '620', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (701, 57, '75 TOURER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (702, 57, '820 TI LUSSO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (703, 57, 'ROVER 827', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (704, 57, 'STREETWISE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (705, 57, 'STREETWISE  S', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (706, 57, 'TOURER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (707, 58, '900', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (708, 58, '900 I', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (709, 58, '900 S', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (710, 58, '9000 CS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (711, 58, '95', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (712, 59, 'G 420', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (713, 59, 'R 500', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (714, 59, 'P 380', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (715, 59, 'R 620', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (716, 60, 'ALHAMBRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (717, 60, 'ALTEA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (718, 60, 'ARONA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (719, 60, 'AROSA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (720, 60, 'COPA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (721, 60, 'CORDOBA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (722, 60, 'EXEO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (723, 60, 'FREE TRACK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (724, 60, 'IBIZA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (725, 60, 'LEON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (726, 60, 'MARBELLA 900', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (727, 60, 'MII', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (728, 60, 'TOLEDO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (729, 61, '1000 LS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (730, 62, 'KAMIQ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (731, 62, 'CITIGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (732, 62, 'FABIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (733, 62, 'FAVORIT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (734, 62, 'FELICIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (735, 62, 'FORMAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (736, 62, 'KAROQ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (737, 62, 'OCTAVIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (738, 62, 'ROOMSTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (739, 62, 'SUPERB', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (740, 62, 'YETI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (741, 63, 'FORFOUR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (742, 63, 'FORTWO CABRIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (743, 63, 'FORTWO COUPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (744, 63, 'ROADSTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (745, 63, 'SMART', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (746, 63, 'SMART CABRIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (747, 63, 'SMART CITY-COUPE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (748, 63, 'SMART SPIDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (749, 64, 'ACTYON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (750, 64, 'KORANDO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (751, 64, 'KYRON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (752, 64, 'REXTON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (753, 64, 'RODIUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (754, 65, 'FORESTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (755, 65, 'G3X JUSTY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (756, 65, 'IMPREZA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (757, 65, 'JUSTY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (758, 65, 'LEGACY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (759, 65, 'OUTBACK', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (760, 65, 'TRIBECA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (761, 65, 'VIVIO 660', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (762, 66, 'ALTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (763, 66, 'BALENO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (764, 66, 'GRAN VITARA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (765, 66, 'IGNIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (766, 66, 'JIMNY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (767, 66, 'LIANA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (768, 66, 'MARUTI 800', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (769, 66, 'SPLASH', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (770, 66, 'SWIFT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (771, 66, 'SX4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (772, 66, 'VITARA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (773, 66, 'WAGON R', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (774, 67, 'INDICA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (775, 67, 'INDIGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (776, 67, 'SAFARI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (777, 68, 'MODEL 3', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (778, 68, 'MODEL S', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (779, 68, 'MODEL X', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (780, 68, 'MODEL Y', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (781, 69, 'AURIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (782, 69, 'AVENSIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (783, 69, 'AYGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (784, 69, 'CARINA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (785, 69, 'CELICA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (786, 69, 'C-HR', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (787, 69, 'COROLLA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (788, 69, 'GT86', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (789, 69, 'HIACE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (790, 69, 'HILUX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (791, 69, 'IQ', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (792, 69, 'LAND CRUISER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (793, 69, 'MR 2   SPIDER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (794, 69, 'PASEO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (795, 69, 'PICNIC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (796, 69, 'PREVIA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (797, 69, 'PROACE CITY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (798, 69, 'PRIUS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (799, 69, 'RAV4', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (800, 69, 'SUPRA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (801, 69, 'URBAN CRUISER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (802, 69, 'VERSO-S', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (803, 69, 'YARIS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (804, 69, 'YARIS VERSO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (805, 70, 'BORA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (806, 70, 'BORA VARIANT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (807, 70, 'CADDY', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (808, 70, 'CORRADO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (809, 70, 'CRAFTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (810, 70, 'CROSS GOLF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (811, 70, 'EOS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (812, 70, 'FOX', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (813, 70, 'GAMMA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (814, 70, 'GOLF', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (815, 70, 'GOLF CABRIO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (816, 70, 'GOLF GTI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (817, 70, 'GOLF VARIANT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (818, 70, 'JETTA', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (819, 70, 'LUPO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (820, 70, 'MAGGIOLINO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (821, 70, 'MULTIVAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (822, 70, 'NEW BEETLE', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (823, 70, 'NUOVA UP', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (824, 70, 'PASSAT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (825, 70, 'PASSAT ALLTRAC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (826, 70, 'PASSAT VARIANT', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (827, 70, 'PHAETON', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (828, 70, 'POLO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (829, 70, 'POLO GTI', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (830, 70, 'SCIROCCO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (831, 70, 'SHARAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (832, 70, 'TAIGO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (833, 70, 'TIGUAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (834, 70, 'TOUAREG', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (835, 70, 'TOURAN', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (836, 70, 'TRANSPORTER', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (837, 70, 'VENTO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (838, 70, 'T-CROSS', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (839, 70, 'T-ROC', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (840, 70, 'UP!', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (841, 71, '240', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (842, 71, '440', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (843, 71, '460', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (844, 71, '480', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (845, 71, '850', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (846, 71, '940', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (847, 71, '960', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (848, 71, 'C30', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (849, 71, 'C70', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (850, 71, 'S40', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (851, 71, 'S60', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (852, 71, 'S70', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (853, 71, 'S80', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (854, 71, 'V40', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (855, 71, 'V50', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (856, 71, 'V70', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (857, 71, 'XC40', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (858, 71, 'XC60', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (859, 71, 'XC70', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (860, 71, 'XC90', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (861, 71, 'FL', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (862, 71, 'FM', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (863, 71, 'FH', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (864, 72, 'ICARO', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (865, 73, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (866, 74, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (867, 75, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (868, 76, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (869, 77, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (870, 78, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (871, 79, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (872, 80, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (873, 81, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (874, 82, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (875, 83, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (876, 84, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (877, 85, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (878, 86, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (879, 87, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (880, 88, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (881, 89, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (882, 44, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (883, 90, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (884, 91, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (885, 92, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (886, 93, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (887, 94, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (888, 95, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (889, 96, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (890, 97, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (891, 98, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (892, 99, '-', '2022-07-04', '9999-12-31', '2022-07-04 11:33:58.092587', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3710 (class 0 OID 57712)
-- Dependencies: 232
-- Data for Name: d_profili; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_profili VALUES (1, 'AMMINISTRATORE', 'Amministratore', 'adi_admins', false, false, false, '2022-03-15 14:08:07.633658', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (2, 'AGENTEPL', 'Agente PL', 'adi_agentePL', true, true, true, '2022-03-15 14:08:07.632118', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (3, 'SUPERVISOREZONA', 'Supervisore di Zona', 'adi_supervisoreZona', false, true, false, '2022-03-15 14:08:07.63274', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (4, 'STATISTICHE', 'Utente Statistiche', 'adi_statistiche', false, false, false, '2022-03-15 14:08:07.633205', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (5, 'GEV', 'Guardia Ecologica Volontaria', 'adi_gev', true, true, true, '2022-03-15 14:08:07.634105', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (6, 'ERMES', 'Agente Annonaria', 'adi_ermes', true, true, true, '2022-03-15 14:08:07.634541', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3711 (class 0 OID 57718)
-- Dependencies: 233
-- Data for Name: d_prosa_aggiornamenti; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_prosa_aggiornamenti VALUES ('CODICI_D', 'Codici D', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('SERIE_VEICOLI', 'Serie Veicoli', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('NAZIONI', 'Nazioni', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('GENERE_VEICOLI', 'Genere Veicoli', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('CATEGORIE_RCO', 'Categorie RCO', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('SANZIONI', 'Sanzioni', NULL, NULL, false);


--
-- TOC entry 3712 (class 0 OID 57721)
-- Dependencies: 234
-- Data for Name: d_prosa_categoria_rco; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3713 (class 0 OID 57726)
-- Dependencies: 235
-- Data for Name: d_prosa_codice_d; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3714 (class 0 OID 57731)
-- Dependencies: 236
-- Data for Name: d_prosa_genere_veicoli; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3715 (class 0 OID 57736)
-- Dependencies: 237
-- Data for Name: d_prosa_nazioni; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3716 (class 0 OID 57741)
-- Dependencies: 238
-- Data for Name: d_prosa_sanzioni; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3718 (class 0 OID 57755)
-- Dependencies: 240
-- Data for Name: d_prosa_sanzioni_accessorie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3719 (class 0 OID 57762)
-- Dependencies: 241
-- Data for Name: d_prosa_serie_veicoli; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3720 (class 0 OID 57767)
-- Dependencies: 242
-- Data for Name: d_rel_profili_manuali; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3721 (class 0 OID 57772)
-- Dependencies: 243
-- Data for Name: d_rel_profili_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_rel_profili_menu VALUES (1, 16, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.635017', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 17, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.635622', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 18, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.636097', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 19, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.636539', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 20, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.636973', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 17, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.637468', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 18, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.638002', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 19, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.638593', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 20, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.639258', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 1, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.639807', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 2, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.640306', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 3, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.64078', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 5, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.641214', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 1, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.641694', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 3, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.642162', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 1, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.642763', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 3, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.643297', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 4, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.643804', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (4, 4, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.644313', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 6, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.644774', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 7, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.645251', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 8, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.645762', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 9, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.64624', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 10, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.646633', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 11, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.647011', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 8, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.647417', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (2, 9, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.647845', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 8, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.64831', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 4, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.64879', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 12, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.649259', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 13, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.649698', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 14, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.650125', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 15, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.650558', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (1, 15, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.651001', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 16, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.65142', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 17, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.651849', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 18, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.652336', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 19, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.652824', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (3, 20, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.653275', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (4, 15, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.653733', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (4, 16, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.654234', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (4, 17, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.654731', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (4, 18, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.655251', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (4, 19, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.655869', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (4, 20, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.656493', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (5, 1, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.657071', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (5, 3, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.657659', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (5, 8, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.658209', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (5, 17, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.658668', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (5, 18, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.65916', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 1, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.659744', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 3, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.660221', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 8, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.660693', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 9, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.661133', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 17, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.661561', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 18, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.661982', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 19, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.662471', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 20, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.662892', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_rel_profili_menu VALUES (6, 21, '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.663307', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3723 (class 0 OID 57779)
-- Dependencies: 245
-- Data for Name: d_sanzioni_accessorie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3725 (class 0 OID 57788)
-- Dependencies: 247
-- Data for Name: d_sottocategorie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3727 (class 0 OID 57796)
-- Dependencies: 249
-- Data for Name: d_stati_adi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_stati_adi VALUES (1, 'F', 'Firmato', '2022-03-15 14:08:07.664479', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_stati_adi VALUES (2, 'S', 'Sostituito con VDC', '2022-03-15 14:08:07.664925', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_stati_adi VALUES (3, 'I', 'Non firmato', '2022-03-15 14:08:07.663822', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3729 (class 0 OID 57804)
-- Dependencies: 251
-- Data for Name: d_stati_visure; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_stati_visure VALUES (1, 'E', 'Eseguito', '2022-03-15 14:08:07.665357', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_stati_visure VALUES (2, 'W', 'Errore', '2022-03-15 14:08:07.665946', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3731 (class 0 OID 57812)
-- Dependencies: 253
-- Data for Name: d_tipo_visure; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.d_tipo_visure VALUES (1, 'REVRCA', 'Controllo Assicurazione e Revisione', '2022-03-15 14:08:07.666413', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (2, 'FURTO', 'Controllo Veicolo Rubato', '2022-03-15 14:08:07.666984', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (3, 'SOSTA', 'Permesso Sosta', '2022-03-15 14:08:07.667432', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (4, 'EUCARIS', 'Eucaris', '2022-03-15 14:08:07.667862', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (5, 'TARGA_PROVA', 'Targa Prova', '2022-03-15 14:08:07.668262', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (6, 'PATENTE', 'Patente', '2022-03-15 14:08:07.668733', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (7, 'PROPRIETA_AUTOVEICOLO', 'Visura Proprietà Autoveicolo', '2022-03-15 14:08:07.669269', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (8, 'PROPRIETA_MOTOVEICOLO', 'Visura Proprietà Motoveicolo', '2022-03-15 14:08:07.669735', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (9, 'PROPRIETA_RIMORCHIO', 'Visura Proprietà Rimorchio', '2022-03-15 14:08:07.67021', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (10, 'PROPRIETA_CICLOMOTORE', 'Visura Proprietà Ciclomotore', '2022-03-15 14:08:07.670643', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_tipo_visure VALUES (11, 'PROPRIETA', 'Visura Proprietà', '2022-03-15 14:08:07.671269', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3733 (class 0 OID 57820)
-- Dependencies: 255
-- Data for Name: d_utenti; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3735 (class 0 OID 57828)
-- Dependencies: 257
-- Data for Name: d_visure; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 200
-- Name: s_prog_adi; Type: SEQUENCE SET; Schema: public; Owner: postgres
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
