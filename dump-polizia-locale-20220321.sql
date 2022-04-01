--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2022-03-21 01:05:35 CET

--
-- TOC entry 200 (class 1259 OID 50249)
-- Name: s_prog_adi; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_adi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- TOC entry 201 (class 1259 OID 50251)
-- Name: d_adi; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 202 (class 1259 OID 50260)
-- Name: s_prog_adi_allegati; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_adi_allegati
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 203 (class 1259 OID 50262)
-- Name: d_adi_allegati; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 204 (class 1259 OID 50271)
-- Name: d_adi_localita; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 205 (class 1259 OID 50279)
-- Name: s_prog_adi_notifiche; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_adi_notifiche
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 206 (class 1259 OID 50281)
-- Name: d_adi_notifiche; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_adi_notifiche (
    seq_id_adi_notifiche bigint DEFAULT nextval('public.s_prog_adi_notifiche'::regclass) NOT NULL,
    fk_seq_id_adi bigint NOT NULL,
    invio_ok boolean,
    tipo_notifica character varying(50),
    messaggio text
);


--
-- TOC entry 207 (class 1259 OID 50288)
-- Name: d_adi_vdc; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_adi_vdc (
    seq_id_adi bigint NOT NULL,
    codice_vdc bigint NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 208 (class 1259 OID 50293)
-- Name: d_adi_veicoli; Type: TABLE; Schema: public; Owner: -
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
    fk_seq_id_modelli_veicoli bigint NOT NULL,
    fk_seq_id_colori_veicoli bigint NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 209 (class 1259 OID 50298)
-- Name: s_prog_adi_violazioni; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_adi_violazioni
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 210 (class 1259 OID 50300)
-- Name: d_adi_violazioni; Type: TABLE; Schema: public; Owner: -
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
    importo_pagamento_minimo numeric(19,0) DEFAULT 0 NOT NULL,
    importo_pagamento_massimo numeric(19,0) DEFAULT 0 NOT NULL,
    importo_pagamento_scontato numeric(19,0) DEFAULT 0 NOT NULL,
    importo_pagamento_misura_ridotta numeric(19,0) DEFAULT 0 NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 211 (class 1259 OID 50314)
-- Name: s_prog_categorie; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_categorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 212 (class 1259 OID 50316)
-- Name: d_categorie; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 213 (class 1259 OID 50322)
-- Name: s_prog_colori_veicoli; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_colori_veicoli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 214 (class 1259 OID 50324)
-- Name: d_colori_veicoli; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 215 (class 1259 OID 50330)
-- Name: s_prog_comandi_zona; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_comandi_zona
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 216 (class 1259 OID 50332)
-- Name: d_comandi_zona; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 217 (class 1259 OID 50338)
-- Name: s_prog_contatti; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_contatti
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 218 (class 1259 OID 50340)
-- Name: d_contatti; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_contatti (
    seq_id_contatti bigint DEFAULT nextval('public.s_prog_contatti'::regclass) NOT NULL,
    desc_email character varying(100) NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 219 (class 1259 OID 50346)
-- Name: s_prog_credenziali_mctc; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_credenziali_mctc
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 220 (class 1259 OID 50348)
-- Name: d_credenziali_mctc; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 221 (class 1259 OID 50354)
-- Name: s_prog_documenti; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_documenti
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 222 (class 1259 OID 50356)
-- Name: d_documenti; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 223 (class 1259 OID 50365)
-- Name: s_prog_manuali; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_manuali
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 224 (class 1259 OID 50367)
-- Name: d_manuali; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_manuali (
    seq_id_manuali bigint DEFAULT nextval('public.s_prog_manuali'::regclass) NOT NULL,
    desc_nome_documento character varying(200) NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 225 (class 1259 OID 50373)
-- Name: s_prog_marche_veicoli; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_marche_veicoli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 226 (class 1259 OID 50375)
-- Name: d_marche_veicoli; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 227 (class 1259 OID 50381)
-- Name: s_prog_menu; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_menu
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 228 (class 1259 OID 50383)
-- Name: d_menu; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 229 (class 1259 OID 50392)
-- Name: s_prog_modelli_veicoli; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_modelli_veicoli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 230 (class 1259 OID 50394)
-- Name: d_modelli_veicoli; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 231 (class 1259 OID 50400)
-- Name: s_prog_profili; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_profili
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 232 (class 1259 OID 50402)
-- Name: d_profili; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 233 (class 1259 OID 50408)
-- Name: d_prosa_aggiornamenti; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_prosa_aggiornamenti (
    codice character varying(50) NOT NULL,
    descrizione character varying(100) NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50),
    cache_attiva boolean NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 50411)
-- Name: d_prosa_categoria_rco; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_prosa_categoria_rco (
    id character varying(10) NOT NULL,
    categoria character varying(100) NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 235 (class 1259 OID 50416)
-- Name: d_prosa_codice_d; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_prosa_codice_d (
    codice character varying(10) NOT NULL,
    descrizione character varying(100) NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 236 (class 1259 OID 50421)
-- Name: d_prosa_genere_veicoli; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 237 (class 1259 OID 50426)
-- Name: d_prosa_nazioni; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 238 (class 1259 OID 50431)
-- Name: d_prosa_sanzioni; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_prosa_sanzioni (
    codice_infrazione character varying(10) NOT NULL,
    descrizione_infrazione character varying(200) NOT NULL,
    articolo_infrazione character varying(20) NOT NULL,
    comma_infrazione character varying(20),
    decreto_legge character varying(200) NOT NULL,
    tipologia character varying(100) NOT NULL,
    tipo_regolamento character varying(100),
    importo_pagamento_minimo numeric(19,0) DEFAULT 0 NOT NULL,
    importo_pagamento_massimo numeric(19,0) DEFAULT 0 NOT NULL,
    importo_pagamento_scontato numeric(19,0) DEFAULT 0 NOT NULL,
    importo_pagamento_misura_ridotta numeric(19,0) DEFAULT 0 NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 239 (class 1259 OID 50443)
-- Name: s_prog_prosa_sanzioni_accessorie; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_prosa_sanzioni_accessorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 240 (class 1259 OID 50445)
-- Name: d_prosa_sanzioni_accessorie; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 241 (class 1259 OID 50452)
-- Name: d_prosa_serie_veicoli; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_prosa_serie_veicoli (
    serie character varying(1) NOT NULL,
    descrizione character varying(50) NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 242 (class 1259 OID 50457)
-- Name: d_rel_profili_manuali; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.d_rel_profili_manuali (
    fk_seq_id_profili bigint NOT NULL,
    fk_seq_id_manuali bigint NOT NULL,
    data_creazione timestamp without time zone DEFAULT now() NOT NULL,
    utente_creazione character varying(50) DEFAULT 'SYSTEM'::character varying NOT NULL,
    data_aggiornamento timestamp without time zone,
    utente_aggiornamento character varying(50)
);


--
-- TOC entry 243 (class 1259 OID 50462)
-- Name: d_rel_profili_menu; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 244 (class 1259 OID 50467)
-- Name: s_prog_sanzioni_accessorie; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_sanzioni_accessorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 245 (class 1259 OID 50469)
-- Name: d_sanzioni_accessorie; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 246 (class 1259 OID 50476)
-- Name: s_prog_sottocategorie; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_sottocategorie
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 247 (class 1259 OID 50478)
-- Name: d_sottocategorie; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 248 (class 1259 OID 50484)
-- Name: s_prog_stati_adi; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_stati_adi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 249 (class 1259 OID 50486)
-- Name: d_stati_adi; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 250 (class 1259 OID 50492)
-- Name: s_prog_stati_visure; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_stati_visure
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 251 (class 1259 OID 50494)
-- Name: d_stati_visure; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 252 (class 1259 OID 50500)
-- Name: s_prog_tipo_visure; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_tipo_visure
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 253 (class 1259 OID 50502)
-- Name: d_tipo_visure; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 254 (class 1259 OID 50508)
-- Name: s_prog_utenti; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_utenti
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 255 (class 1259 OID 50510)
-- Name: d_utenti; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 256 (class 1259 OID 50516)
-- Name: s_prog_visure; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.s_prog_visure
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 257 (class 1259 OID 50518)
-- Name: d_visure; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 3681 (class 0 OID 50251)
-- Dependencies: 201
-- Data for Name: d_adi; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3683 (class 0 OID 50262)
-- Dependencies: 203
-- Data for Name: d_adi_allegati; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3684 (class 0 OID 50271)
-- Dependencies: 204
-- Data for Name: d_adi_localita; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3686 (class 0 OID 50281)
-- Dependencies: 206
-- Data for Name: d_adi_notifiche; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3687 (class 0 OID 50288)
-- Dependencies: 207
-- Data for Name: d_adi_vdc; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3688 (class 0 OID 50293)
-- Dependencies: 208
-- Data for Name: d_adi_veicoli; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3690 (class 0 OID 50300)
-- Dependencies: 210
-- Data for Name: d_adi_violazioni; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3692 (class 0 OID 50316)
-- Dependencies: 212
-- Data for Name: d_categorie; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3694 (class 0 OID 50324)
-- Dependencies: 214
-- Data for Name: d_colori_veicoli; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_colori_veicoli VALUES (1, 'ACQUAMARINA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.879233', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (2, 'ALBICOCCA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.880383', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (3, 'AMARANTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.881348', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (4, 'AMBRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.882868', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (5, 'AMETISTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.884761', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (6, 'ANGURIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.885829', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (7, 'ANTRACITE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.886925', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (8, 'ARAGOSTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.887921', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (9, 'ARANCIONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.888832', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (10, 'ARDESIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.889749', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (11, 'ARGENTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.890531', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (12, 'ASPARAGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.891238', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (13, 'AVIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.891947', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (14, 'AVORIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.892744', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (15, 'AZALEA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.893604', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (16, 'AZZURRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.894395', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (17, 'AZZURRO FIORDALISO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.89518', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (18, 'BEIGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.895893', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (19, 'BEIGE VERDASTRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.896653', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (20, 'BEIGE-OLIVA CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.897348', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (21, 'BIANCO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.898087', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (22, 'BIANCO ANTI-FLASH', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.898802', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (23, 'BIANCO ANTICO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.899567', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (24, 'BIANCO DI TITANIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.900325', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (25, 'BIANCO DI ZINCO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.901119', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (26, 'BIANCO FANTASMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.901842', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (27, 'BIANCO FLOREALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.902498', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (28, 'BIANCO FUMO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.903331', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (29, 'BIANCO NAVAJO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.904079', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (30, 'BISCOTTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.904858', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (31, 'BISTRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.905577', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (32, 'BLU', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.906239', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (33, 'BLU ACCIAIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.906975', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (34, 'BLU ALICE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.907645', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (35, 'BLU BONDI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.908251', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (36, 'BLU CADETTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.908884', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (37, 'BLU CERULEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.909492', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (38, 'BLU COMANDO STELLARE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.910121', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (39, 'BLU DI PERSIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.910801', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (40, 'BLU DI PRUSSIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.911439', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (41, 'BLU DODGER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.912062', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (42, 'BLU ELETTRICO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.912634', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (43, 'BLU MARINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.913166', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (44, 'BLU MEDIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.913679', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (45, 'BLU NOTTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.914193', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (46, 'BLU OLTREMARE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.914808', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (47, 'BLU POLVERE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.915458', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (48, 'BLU POLVERE SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.916026', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (49, 'BLU REALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.916586', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (50, 'BLU SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.917113', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (51, 'BORDEAUX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.917699', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (52, 'BORGOGNA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.918338', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (53, 'BRONZO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.918993', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (54, 'BRONZO ANTICO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.919921', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (55, 'CAMOSCIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.922415', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (56, 'CARBONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.923024', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (57, 'CARDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.923663', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (58, 'CARMINIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.924249', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (59, 'CARTA DA ZUCCHERO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.924796', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (60, 'CASTAGNO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.9257', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (61, 'CASTAGNO CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.926412', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (62, 'CASTAGNO SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.927073', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (63, 'CATRAME', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.927711', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (64, 'CATRAME SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.92833', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (65, 'CELADON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.928982', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (66, 'CELESTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.929721', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (67, 'CERULEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.930381', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (68, 'CERULEO SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.93104', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (69, 'CHARTREUSE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.931681', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (70, 'CIANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.932305', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (71, 'CILIEGIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.93298', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (72, 'CIOCCOLATO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.933593', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (73, 'COBALTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.934269', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (74, 'CONCHIGLIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.934896', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (75, 'CORALLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.935446', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (76, 'CREMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.936151', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (77, 'CREMISI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.936793', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (78, 'DENIM', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.937395', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (79, 'DENIM CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.937947', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (80, 'ÉCRU', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.938621', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (81, 'ELIOTROPO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.939196', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (82, 'FIORE DI GRANTURCO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.939766', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (83, 'FOGLIA DI TÈ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.940405', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (84, 'FUCSIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.941011', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (85, 'FULVO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.941626', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (86, 'GAINSBORO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.942339', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (87, 'GIADA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.94307', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (88, 'GIALLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.943674', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (89, 'GIALLO MIELE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.944328', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (90, 'GIALLO NAPOLI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.945098', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (91, 'GIALLO PASTELLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.945792', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (92, 'GIALLO SABBIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.946505', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (93, 'GIALLO SCUOLABUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.947148', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (94, 'GIALLO SEGNALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.947907', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (95, 'GLICINE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.948593', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (96, 'GRANATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.949485', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (97, 'GRANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.950346', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (98, 'GRIGIO 5%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.951045', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (99, 'GRIGIO 10%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.951656', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (100, 'GRIGIO 15%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.952326', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (101, 'GRIGIO 20%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.95299', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (102, 'GRIGIO 25%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.953609', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (103, 'GRIGIO 30%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.954235', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (104, 'GRIGIO 35%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.954837', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (105, 'GRIGIO 40%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.955516', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (106, 'GRIGIO 50%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.956157', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (107, 'GRIGIO 60%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.956919', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (108, 'GRIGIO 70%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.957768', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (109, 'GRIGIO 75%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.958504', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (110, 'GRIGIO 80%', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.959298', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (111, 'GRIGIO ARDESIA CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.960036', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (112, 'GRIGIO ARDESIA SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.961212', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (113, 'GRIGIO ASPARAGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.96194', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (114, 'GRIGIO CENERE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.962767', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (115, 'GRIGIO TOPO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.963494', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (116, 'INCARNATO PRUGNA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.964023', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (117, 'INDACO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.964527', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (118, 'INDACO ELETTRICO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.965087', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (119, 'INDACO SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.96568', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (120, 'INTERNATIONAL KLEIN BLUE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.966243', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (121, 'ISABELLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.966802', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (122, 'KAKI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.967326', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (123, 'KAKI CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.96784', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (124, 'KAKI SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.968294', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (125, 'LAMPONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.968736', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (126, 'LAVANDA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.969261', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (127, 'LAVANDA PALLIDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.969732', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (128, 'LAVANDA ROSATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.970142', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (129, 'LILLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.970585', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (130, 'LIME', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.971116', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (131, 'LIMONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.971651', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (132, 'LIMONE CREMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.972177', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (133, 'LINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.97268', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (134, 'MAGENTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.973196', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (135, 'MAGENTA CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.973727', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (136, 'MAGNOLIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.974382', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (137, 'MALVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975056', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (138, 'MALVA CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.975743', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (139, 'MANDARINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.976406', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (140, 'MARRONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.977119', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (141, 'MARRONE CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.977747', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (142, 'MARRONE PASTELLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.978425', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (143, 'MARRONE SABBIA CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.979', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (144, 'MARRONE SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.979722', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (145, 'MARRONE-ROSSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.980338', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (146, 'MELANZANA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.980871', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (147, 'MOGANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.981373', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (148, 'NERO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.981859', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (149, 'OCRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.982305', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (150, 'OLIVINA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.982731', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (151, 'ORCHIDEA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.983162', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (152, 'ORO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.983596', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (153, 'ORO VECCHIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.984033', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (154, 'OTTONE ANTICO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.984471', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (155, 'PAPAIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.984907', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (156, 'PERA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.985381', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (157, 'PERVINCA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.985907', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (158, 'PESCA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.986398', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (159, 'PESCA SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.986879', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (160, 'PESCA-ARANCIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.987326', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (161, 'PESCA-GIALLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.987744', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (162, 'PISTACCHIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.988158', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (163, 'PLATINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.98867', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (164, 'PORPORA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.989357', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (165, 'PRUGNA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.990028', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (166, 'RAME', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.990595', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (167, 'REGISTRATION BLACK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.991211', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (168, 'ROSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.991937', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (169, 'ROSA ARANCIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.992606', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (170, 'ROSA MEDIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.99328', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (171, 'ROSA MOUNTBATTEN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.994098', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (172, 'ROSA PALLIDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.994976', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (173, 'ROSA PASTELLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.995739', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (174, 'ROSA SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.996454', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (175, 'ROSA SHOCKING', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.997269', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (176, 'ROSA VIVO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.998055', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (177, 'ROSSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.998767', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (178, 'ROSSO ARAGOSTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:06.999473', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (179, 'ROSSO CARDINALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.000261', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (180, 'ROSSO CORSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.001111', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (181, 'ROSSO FALUN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.001789', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (182, 'ROSSO FRAGOLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.002612', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (183, 'ROSSO FUOCO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.003338', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (184, 'ROSSO MATTONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.004069', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (185, 'ROSSO MATTONE CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.004831', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (186, 'ROSSO POMODORO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.005533', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (187, 'ROSSO POMPEIANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.006267', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (188, 'ROSSO ROSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.007066', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (189, 'ROSSO SANGUE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.007665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (190, 'ROSSO SEGNALE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.008294', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (191, 'ROSSO TIZIANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.008949', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (192, 'ROSSO VENEZIANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.009532', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (193, 'ROSSO VIOLETTO CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.010147', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (194, 'RUBINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.010966', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (195, 'SABBIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.011621', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (196, 'SALMONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.012195', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (197, 'SALMONE SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.012879', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (198, 'SANGRIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.013508', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (199, 'SCARLATTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.014162', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (200, 'SCARLATTO SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.014697', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (201, 'SENAPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.015354', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (202, 'SEPPIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.015966', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (203, 'SOLIDAGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.016477', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (204, 'SOLIDAGO SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.017015', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (205, 'TAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.01752', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (206, 'TÈ VERDE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.018037', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (207, 'TENNÉ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.018578', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (208, 'TERRA D''OMBRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.019113', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (209, 'TERRA D''OMBRA BRUCIATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.019616', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (210, 'TERRA DI SIENA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.020109', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (211, 'TERRA DI SIENA BRUCIATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.020599', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (212, 'TESTA DI MORO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.021115', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (213, 'TRONCO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.021626', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (214, 'TURCHESE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.022181', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (215, 'TURCHESE CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.022775', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (216, 'TURCHESE PALLIDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.023438', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (217, 'TURCHESE SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.02398', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (218, 'UOVO DI PETTIROSSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.024707', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (219, 'UOVO DI PETTIROSSO CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.025359', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (220, 'VERDE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.025984', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (221, 'VERDE CARAIBI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.027885', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (222, 'VERDE CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.028698', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (223, 'VERDE FORESTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.029354', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (224, 'VERDE MARINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.030464', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (225, 'VERDE MARINO MEDIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.032713', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (226, 'VERDE MARINO SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.03475', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (227, 'VERDE MENTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.036821', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (228, 'VERDE MENTA CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.037696', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (229, 'VERDE MUSCHIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.039253', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (230, 'VERDE OLIVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.040172', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (231, 'VERDE OLIVA SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.041266', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (232, 'VERDE OLIVASTRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.041827', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (233, 'VERDE PASTELLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.042433', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (234, 'VERDE PINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.04308', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (235, 'VERDE PRIMAVERA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.043839', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (236, 'VERDE PRIMAVERA SCURO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.044418', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (237, 'VERDE SMERALDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.044996', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (238, 'VERDE UFFICIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.045761', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (239, 'VERDE VERONESE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.04648', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (240, 'VERDE-GIALLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.047103', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (241, 'VERMIGLIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.04768', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (242, 'VINACCIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.048342', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (243, 'VIOLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.04897', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (244, 'VIOLA CHIARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.04958', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (245, 'VIOLA MELANZANA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.050246', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (246, 'VIOLETTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.051033', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (247, 'ZAFFERANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.051668', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (248, 'ZAFFERANO PROFONDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.052336', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_colori_veicoli VALUES (249, 'ZAFFIRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.053723', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3696 (class 0 OID 50332)
-- Dependencies: 216
-- Data for Name: d_comandi_zona; Type: TABLE DATA; Schema: public; Owner: -
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
-- TOC entry 3698 (class 0 OID 50340)
-- Dependencies: 218
-- Data for Name: d_contatti; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_contatti VALUES (1, 'Pl.gabinettocomando@comune.milano.it', '2022-03-15 14:08:07.085329', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_contatti VALUES (2, 'Pl.cooperazioni@comune.milano.it', '2022-03-15 14:08:07.086453', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_contatti VALUES (3, 'Pl.cocapoturno@comune.milano.it', '2022-03-15 14:08:07.087361', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3700 (class 0 OID 50348)
-- Dependencies: 220
-- Data for Name: d_credenziali_mctc; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_credenziali_mctc VALUES (1, 'CMMI000027', 'XXXXXX', '9999-12-31', '2022-03-15 14:08:07.08806', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3702 (class 0 OID 50356)
-- Dependencies: 222
-- Data for Name: d_documenti; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3704 (class 0 OID 50367)
-- Dependencies: 224
-- Data for Name: d_manuali; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3706 (class 0 OID 50375)
-- Dependencies: 226
-- Data for Name: d_marche_veicoli; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_marche_veicoli VALUES (3, 63, 'GREAT WALL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.089104', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (4, 64, 'ABARTH', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.090055', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (5, 65, 'ALFA ROMEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.090767', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (6, 66, 'ALPINA-BMW', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.091691', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (7, 67, 'ALTRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.092588', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (8, 68, 'ASTON MARTIN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.093258', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (9, 69, 'AUDI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.094382', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (10, 71, 'AUSTIN ROVER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.095963', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (11, 72, 'AUTOBIANCHI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.097673', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (12, 73, 'BENTLEY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.09885', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (13, 74, 'BMW', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.099902', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (14, 77, 'CADILLAC', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.100856', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (15, 79, 'CHEVROLET', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.101727', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (16, 80, 'CHRYSLER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.102744', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (17, 81, 'CITROEN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.103717', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (18, 83, 'CORVETTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.104431', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (19, 84, 'DACIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.105138', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (20, 85, 'DAEWOO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.105859', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (21, 86, 'DAIHATSU', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.106515', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (22, 87, 'DETOMASO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.107158', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (23, 88, 'DODGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.107786', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (24, 89, 'DR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.108502', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (25, 90, 'FERRARI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.109173', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (26, 91, 'FIAT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.109846', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (27, 92, 'FORD', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.110714', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (28, 93, 'HONDA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.111425', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (29, 94, 'HUMMER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.112206', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (30, 95, 'HYUNDAI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.112981', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (31, 96, 'INFINITI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.1138', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (32, 97, 'INNOCENTI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.114696', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (33, 98, 'ISUZU', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.115418', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (34, 99, 'IVECO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.116136', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (35, 100, 'JAGUAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.116807', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (36, 101, 'JEEP', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.117459', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (37, 102, 'KIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.118074', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (38, 103, 'LADA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.118669', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (39, 104, 'LAMBORGHINI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.119316', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (40, 105, 'LANCIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.119941', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (41, 106, 'LAND ROVER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.120619', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (42, 107, 'LEXUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.121312', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (43, 109, 'LOTUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.12197', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (44, 111, 'MASERATI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.122596', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (45, 113, 'MAZDA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.123141', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (46, 114, 'MERCEDES', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.123808', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (47, 115, 'MG', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.124441', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (48, 116, 'MINI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.125096', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (49, 117, 'MITSUBISHI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.12574', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (50, 119, 'NISSAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.126387', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (51, 120, 'OPEL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.127043', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (52, 122, 'PEUGEOT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.127658', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (53, 125, 'PORSCHE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.128352', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (54, 127, 'RENAULT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.129116', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (55, 128, 'ROLLS ROYCE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.129722', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (56, 129, 'ROVER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.130297', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (57, 130, 'SAAB', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.130836', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (58, 133, 'SEAT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.131404', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (59, 135, 'SIMCA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.13215', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (60, 136, 'SKODA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.132747', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (61, 137, 'SMART', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.133279', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (62, 138, 'SSANGYONG', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.133813', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (63, 139, 'SUBARU', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.134341', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (64, 141, 'SUZUKI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.13487', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (65, 144, 'TATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.135391', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (66, 145, 'TOYOTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.135982', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (67, 146, 'VOLKSWAGEN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.136594', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (68, 147, 'VOLVO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.137142', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (69, 148, 'BREMACH', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.137686', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (70, 151, 'DAF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.13827', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_marche_veicoli VALUES (71, 156, 'SCANIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.138846', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3708 (class 0 OID 50383)
-- Dependencies: 228
-- Data for Name: d_menu; Type: TABLE DATA; Schema: public; Owner: -
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
-- TOC entry 3710 (class 0 OID 50394)
-- Dependencies: 230
-- Data for Name: d_modelli_veicoli; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_modelli_veicoli VALUES (4, 4, '500', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.153462', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (5, 4, 'GRANDE PUNTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.154155', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (6, 5, '147', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.154671', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (7, 5, '159', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.155153', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (8, 5, '166', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.15559', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (9, 5, 'GT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.156061', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (10, 5, 'BRERA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.156541', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (11, 5, 'MONTREAL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.157028', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (12, 5, 'MITO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.15756', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (13, 5, 'CROSSWAGON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.158051', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (14, 5, '159 SW', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.158608', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (15, 5, 'GIULIETTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.159219', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (16, 5, 'SPIDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.159785', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (17, 5, 'SPORTWAGON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.160344', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (18, 5, '156', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.161003', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (19, 5, '164', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.16161', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (20, 5, '155', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.162207', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (21, 5, '75', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.162827', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (22, 5, '33', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.163537', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (23, 5, '146', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.164153', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (24, 6, 'D3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.164677', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (25, 6, 'B6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.165183', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (26, 6, 'B5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.165662', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (27, 6, 'B3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.166132', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (28, 8, 'DB7', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.166649', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (29, 8, 'V8 VANTAGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.167258', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (30, 8, 'DBS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.171315', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (31, 8, 'DB9', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.172105', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (32, 8, 'V12', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.172717', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (33, 8, 'RAPIDE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.173355', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (34, 9, 'A2', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.174024', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (35, 9, 'A3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.174586', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (36, 9, 'A4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.175221', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (37, 9, 'A5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.175861', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (38, 9, 'A6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.176443', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (39, 9, 'A8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.177159', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (40, 9, 'ALLROAD', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.177985', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (41, 9, 'AUDI 100', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.17869', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (42, 9, 'AUDI 80', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.180567', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (43, 9, 'A1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.181362', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (44, 9, 'Q5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.182106', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (45, 9, 'Q7', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.182746', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (46, 9, 'R8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.183418', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (47, 9, 'RS4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.184021', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (48, 9, 'RS6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.184787', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (49, 9, 'S3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.185367', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (50, 9, 'S4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.186023', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (51, 9, 'S5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.186596', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (52, 9, 'S6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.187209', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (53, 9, 'S8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.187802', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (54, 9, 'TT  COUPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.188447', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (55, 9, 'TT  SPIDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.189166', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (56, 48, 'MINI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.190043', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (57, 10, '3500 VITESSE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.190786', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (58, 10, 'MONTEGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.191473', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (59, 56, 'ROVER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.192219', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (60, 10, 'MINI METRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.192955', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (61, 11, 'Y 10', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.193631', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (62, 12, 'CONTINENTAL-FLYING SPUR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.19422', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (63, 12, 'AZURE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.194751', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (64, 12, 'ARNAGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.195454', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (65, 12, 'BROOKLAND', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.196084', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (66, 13, 'X1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.196921', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (67, 13, '116I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.197685', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (68, 13, '118I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.198335', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (69, 13, '120I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.198881', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (70, 13, '125I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.199418', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (71, 13, '130I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.200002', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (72, 13, '135I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.200631', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (73, 13, '316', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.201193', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (74, 13, '318', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.201894', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (75, 13, '320', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.202521', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (76, 13, '323', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.203136', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (77, 13, '325', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.203745', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (78, 13, '328', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.204425', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (79, 13, '335', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.205058', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (80, 13, '520', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.20574', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (81, 13, '523', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.206492', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (82, 13, '525', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.20714', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (83, 13, '528', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.207753', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (84, 13, '530', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.208437', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (85, 13, '535', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.209099', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (86, 13, '540', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.209779', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (87, 13, '545', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.210497', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (88, 13, '550I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.211243', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (89, 13, '630I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.211945', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (90, 13, '645I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.212615', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (91, 13, '650I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.21343', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (92, 13, '728', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.214237', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (93, 13, '730', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.214938', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (94, 13, '735', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.215603', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (95, 13, '740', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.216197', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (96, 13, '745', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.216806', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (97, 13, '750', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.217416', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (98, 13, '760I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.21799', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (99, 13, '840', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.218631', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (100, 13, 'M3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.219699', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (101, 13, 'M5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.220428', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (102, 13, 'M6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.221158', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (103, 13, 'X3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.22185', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (104, 13, 'X5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.222456', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (105, 13, 'X6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.223093', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (106, 13, 'Z3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.223705', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (107, 13, 'Z4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.224347', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (108, 13, 'Z8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.225046', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (109, 13, 'SERIE 1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.22572', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (110, 13, 'SERIE 3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.236507', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (111, 13, 'COUPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.237483', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (112, 13, 'SERIE 5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.238299', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (113, 13, 'SERIE 6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.239091', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (114, 13, 'SERIE 7', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.239908', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (115, 69, 'JOB X4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.24071', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (116, 69, 'JOB XTREME', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.241598', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (117, 7, 'ALTRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.242386', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (118, 14, 'BLS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.243258', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (119, 14, 'XLR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.244429', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (120, 14, 'ESCALADE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.245286', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (121, 14, 'SRX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.246069', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (122, 14, 'CTS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.246848', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (123, 14, 'SEVILLE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.247785', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (124, 14, 'STS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.248558', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (125, 15, '300', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.249326', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (126, 15, 'AVEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.250104', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (127, 15, 'CAMARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.25087', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (128, 15, 'CAPTIVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.251623', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (129, 15, 'CROSSFIRE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.252304', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (130, 15, 'CRUZE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.252931', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (131, 15, 'EPICA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.253576', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (132, 15, 'EVANDA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.254178', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (133, 15, 'GRAND VOYAGER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.254878', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (134, 15, 'KALOS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.255556', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (135, 15, 'LACETTI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.256192', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (136, 15, 'MATIZ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.256823', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (137, 15, 'NUBIRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.257403', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (138, 15, 'TACUMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.258028', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (139, 16, 'NEON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.258609', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (140, 16, 'PT CRUISER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.259177', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (141, 16, 'SEBRING', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.259761', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (142, 16, 'STRATUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.260489', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (143, 16, 'TRANS SPORT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.261216', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (144, 16, 'VISION', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.261957', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (145, 16, 'VOYAGER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.262621', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (146, 16, 'GRAND  VOYAGER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.263531', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (147, 16, 'CROSSFIRE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.264094', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (148, 17, 'AX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.264719', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (149, 17, 'BERLINGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.265395', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (150, 17, 'BX 16 TZI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.266039', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (151, 17, 'C1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.266664', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (152, 17, 'C2', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.267334', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (153, 17, 'C3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.268174', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (154, 17, 'C4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.268946', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (155, 17, 'C5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.269717', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (156, 17, 'C6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.27036', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (157, 17, 'C8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.271077', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (158, 17, 'C-CROSSER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.2717', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (159, 17, 'EVASION', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.272436', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (160, 17, 'SAXO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.273131', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (161, 17, 'XANTIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.273848', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (162, 17, 'XM', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.275127', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (163, 17, 'XSARA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.275847', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (164, 17, 'ZX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.2766', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (165, 17, 'XSARA PICASSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.277328', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (166, 17, 'JUMPY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.278024', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (167, 17, 'NEMO VAN ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.27872', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (168, 17, 'JUMPER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.279422', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (169, 17, 'C-ZERO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.280194', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (170, 18, 'CORVETTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.281065', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (171, 19, 'LOGAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.281712', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (172, 19, 'SANDERO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.282355', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (173, 19, 'DUSTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.283016', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (174, 19, 'LODGY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.283719', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (175, 20, 'ESPERO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.284411', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (176, 20, 'KALOS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.285067', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (177, 20, 'LACETTI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.285709', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (178, 20, 'LANOS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.286371', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (179, 20, 'LEGANZA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.28706', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (180, 20, 'MATIZ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.287721', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (181, 20, 'NEXIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.288368', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (182, 20, 'NUBIRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.289017', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (183, 20, 'TACUMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.289713', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (184, 20, 'EVANDA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.290412', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (185, 70, 'LF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.291104', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (186, 70, 'XF 105', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.291832', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (187, 70, 'CF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.292639', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (188, 21, 'TERIOS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.293322', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (189, 21, 'YRV', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.294167', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (190, 21, 'MATERIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.294939', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (191, 21, 'MOVE I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.295641', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (192, 21, 'SIRION', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.296286', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (193, 21, 'TREVIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.297094', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (194, 21, 'COPEN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.297808', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (195, 21, 'CUORE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.298578', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (196, 23, 'AVENGER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.299221', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (197, 23, 'JOURNEY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.299878', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (198, 23, 'CALIBER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.30052', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (199, 23, 'NITRO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.30116', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (200, 23, 'VAIPER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.301852', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (201, 24, 'DR5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.302575', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (202, 25, '360 MODENA F1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.303293', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (203, 25, 'F 430', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.304022', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (204, 25, '612', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.304631', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (205, 25, 'CALIFORNIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.305193', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (206, 25, '575M', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.305774', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (207, 25, 'BARCHETTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.306352', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (208, 25, '360', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.306893', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (209, 25, 'CHALLENGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.307466', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (210, 25, '599 GTB', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.308058', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (211, 25, 'F40', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.308609', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (212, 25, 'TESTAROSSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.30922', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (213, 25, '166 SPORT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.309803', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (214, 26, 'BRAVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.310378', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (215, 26, 'BRAVO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.310952', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (216, 26, 'CINQUECENTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.311561', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (217, 26, 'COUPE''', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.312097', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (218, 26, 'CROMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.312702', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (219, 26, 'DOBLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.313438', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (220, 26, 'DUCATO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.314071', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (221, 26, 'FIORINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.314631', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (222, 26, 'GRANDE PUNTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.315226', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (223, 26, 'IDEA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.315802', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (224, 26, 'MAREA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.316352', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (225, 26, 'MULTIPLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.316898', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (226, 26, 'PALIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.317447', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (227, 26, 'PALIO WEEKEND', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.317955', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (228, 26, 'PANDA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.31846', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (229, 26, 'PANDA VAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.318943', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (230, 26, 'PUNTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.319403', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (231, 26, 'PUNTO VAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.319896', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (232, 26, 'QUBO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.320374', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (233, 26, 'RITMO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.320822', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (234, 26, 'SCUDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.32125', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (235, 26, 'SEDICI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.321704', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (236, 26, 'SEICENTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.322227', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (237, 26, 'STILO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.322729', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (238, 26, 'STRADA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.323278', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (239, 26, 'TEMPRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.323852', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (240, 26, 'TIPO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.324404', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (241, 26, 'ULYSSE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.324983', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (242, 26, 'UNO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.325572', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (243, 26, '126', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.326099', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (244, 26, '127', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.326668', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (245, 26, 'FREEMONT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.327124', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (246, 26, 'STILO WAGON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.327599', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (247, 27, 'C-MAX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.328109', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (248, 27, 'COUGAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.32868', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (249, 27, 'ESCORT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.32924', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (250, 27, 'FIESTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.32976', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (251, 27, 'FIESTA VAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.330258', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (252, 27, 'FOCUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.33072', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (253, 27, 'FUSION', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.331152', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (254, 27, 'GALAXY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.33158', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (255, 27, 'KA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.331992', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (256, 27, 'KUGA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.332421', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (257, 27, 'MONDEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.332842', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (258, 27, 'ORION', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.333236', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (259, 27, 'PUMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.333611', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (260, 27, 'RANGER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.333988', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (261, 27, 'SCORPIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.334402', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (262, 27, 'SIERRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.334795', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (263, 27, 'S-MAX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.33518', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (264, 27, 'TOURNEO ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.335584', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (265, 27, 'TOURNEO CONNECT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.336031', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (266, 27, 'TRANSIT CHASSIS ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.336533', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (267, 27, 'TRANSIT COMBI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.337041', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (268, 27, 'TRANSIT CONNECT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.33752', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (269, 27, 'TRANSIT VAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.338143', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (270, 3, 'STEED', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.338752', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (271, 3, 'HOVER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.339364', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (272, 3, 'STEED SC', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.339912', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (273, 28, 'ACCORD', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.340381', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (274, 28, 'CIVIC', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.340833', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (275, 28, 'CONCERTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.341297', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (276, 28, 'CR-V', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.341742', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (277, 28, 'CRX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.342187', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (278, 28, 'FR-V', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.342642', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (279, 28, 'HR-V', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.343201', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (280, 28, 'INTEGRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.343738', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (281, 28, 'JAZZ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.34429', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (282, 28, 'LEGEND', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.344834', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (283, 28, 'LOGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.345404', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (284, 28, 'NSX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.346057', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (285, 28, 'PRELUDE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.346717', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (286, 28, 'S 2000', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.347304', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (287, 28, 'SHUTTLE ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.347899', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (288, 28, 'STREAM', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.348464', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (289, 28, 'CRZ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.349225', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (290, 28, 'INSIGHT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.349832', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (291, 29, 'H3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.350427', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (292, 29, 'H1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.350983', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (293, 29, 'H2', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.351583', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (294, 30, 'ACCENT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.352284', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (295, 30, 'ATOS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.352936', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (296, 30, 'COUPE''', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.35359', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (297, 30, 'ELANTRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.354179', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (298, 30, 'GETZ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.354739', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (299, 30, 'H-1', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.3553', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (300, 30, 'I10', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.355915', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (301, 30, 'I30', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.356506', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (302, 30, 'MATRIX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.357048', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (303, 30, 'PONY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.357705', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (304, 30, 'SANTA FE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.358347', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (305, 30, 'SANTAMO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.358997', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (306, 30, 'SONATA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.359611', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (307, 30, 'SONICA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.36024', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (308, 30, 'TERRACAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.360825', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (309, 30, 'TRAJET', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.361402', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (310, 30, 'TUCSON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.362174', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (311, 30, 'XG30', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.362845', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (312, 30, 'I20', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.363543', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (313, 30, 'IX35', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.364228', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (314, 30, 'IX20', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.364901', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (315, 30, 'I40', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.365489', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (316, 30, 'VELOSTAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.366012', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (317, 31, 'EX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.366552', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (318, 31, 'FX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.367187', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (319, 31, 'G', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.367704', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (320, 32, 'MINI COOPER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.368197', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (321, 32, 'ELBA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.368665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (322, 32, 'SMALL 500 LS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.369218', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (323, 32, 'SMALL 990 SE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.36975', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (324, 33, 'ASCENDER 7', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.370283', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (325, 33, 'PICK UP', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.370757', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (326, 33, 'D-MAX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.371255', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (327, 33, 'NKR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.371716', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (328, 33, 'NPR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.372185', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (329, 33, 'NQR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.37265', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (330, 33, 'TROPER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.373134', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (331, 34, 'LKW/TRUCKS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.373666', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (332, 34, '79-14', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.374164', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (333, 34, 'COMET', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.374733', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (334, 34, 'MASSIF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.375402', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (335, 34, 'CAMPAGNOLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.375946', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (336, 34, 'DAILY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.376457', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (337, 34, 'STRALIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.376964', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (338, 35, 'DAIMLER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.37744', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (339, 35, 'JAGUAR XJ6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.377916', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (340, 35, 'S-TYPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.378464', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (341, 35, 'XF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.379029', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (342, 35, 'XJ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.379597', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (343, 35, 'XJ6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.380287', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (344, 35, 'XJ8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.380866', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (345, 35, 'XK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.381368', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (346, 35, 'XK8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.381855', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (347, 35, 'XKR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.382372', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (348, 35, 'X-TYPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.38287', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (349, 35, 'X', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.383376', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (350, 36, 'CHEROKEE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.383883', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (351, 36, 'COMMANDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.384387', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (352, 36, 'COMPASS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.38489', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (353, 36, 'GRAND CHEROKEE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.385373', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (354, 36, 'PATRIOT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.385896', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (355, 36, 'WRANGLER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.386377', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (356, 37, 'CARENS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.386906', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (357, 37, 'CARNIVAL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.387408', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (358, 37, 'CEE D', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.387908', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (359, 37, 'CERATO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.388373', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (360, 37, 'CLARUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.388835', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (361, 37, 'JOICE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.389339', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (362, 37, 'K2500', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.389773', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (363, 37, 'MAGENTIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.390231', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (364, 37, 'OPIRUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.390702', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (365, 37, 'PICANTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.391153', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (366, 37, 'PRIDE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.39161', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (367, 37, 'RIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.392082', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (368, 37, 'SEPHIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.392527', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (369, 37, 'SHUMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.392997', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (370, 37, 'SORENTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.393463', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (371, 37, 'SOUL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.393961', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (372, 37, 'SPORTAGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.394416', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (373, 37, 'VENGA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.394925', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (374, 38, 'NIVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.395394', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (375, 38, 'SAMARA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.395837', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (376, 38, 'SERIE 100', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.396289', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (377, 39, 'GALLARDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.396757', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (378, 39, 'MURCIELAGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.39726', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (379, 40, 'BETA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.397746', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (380, 40, 'DEDRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.398306', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (381, 40, 'DELTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.398814', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (382, 40, 'GAMMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.399325', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (383, 40, 'K', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.399802', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (384, 40, 'LYBRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.400323', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (385, 40, 'MUSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.400789', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (386, 40, 'PHEDRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.401237', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (387, 40, 'PRISMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.401703', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (388, 40, 'RALLYE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.402179', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (389, 40, 'THEMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.402611', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (390, 40, 'THESIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.403069', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (391, 40, 'YPSILON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.403805', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (392, 40, 'ZETA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.404535', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (393, 40, 'FLAVIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.405231', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (394, 40, 'FULVIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.405962', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (395, 40, 'VOYAGER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.406721', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (396, 41, '88 REGULAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.407585', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (397, 41, 'DEFENDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.40846', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (398, 41, 'DISCOVERY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.409356', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (399, 41, 'FREELANDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.41014', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (400, 41, 'RANGE ROVER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.41083', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (401, 42, 'GS 300', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.411476', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (402, 42, 'GS 430', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.412149', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (403, 42, 'GS 450H', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.412816', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (404, 42, 'IS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.413543', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (405, 42, 'IS 250', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.414311', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (406, 42, 'LS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.415116', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (407, 42, 'RX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.415935', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (408, 42, 'SC 430', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.416798', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (409, 43, 'ELISE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.417625', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (410, 43, 'ESPRITE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.418338', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (411, 43, 'EUROPA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.419192', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (412, 43, 'EVORA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.42009', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (413, 43, 'EXIGE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.420922', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (414, 44, '3200', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.421761', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (415, 44, '4P', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.42262', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (416, 44, 'COUPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.423402', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (417, 44, 'GRAN TURISMO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.424257', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (418, 44, 'GRANSPORT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.425006', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (419, 44, 'QUATTROPORTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.425665', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (420, 44, 'SPIDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.426353', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (421, 44, 'SPYDER CAMBIOCORSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.427035', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (422, 45, '121', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.427676', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (423, 45, '323 F', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.42835', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (424, 45, '626', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.429049', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (425, 45, 'CX-7', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.429917', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (426, 45, 'DEMIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.430653', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (427, 45, 'MAZDA 2', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.431587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (428, 45, 'MAZDA 3', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.432213', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (429, 45, 'MAZDA ''5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.433007', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (430, 45, 'MAZDA 6 ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.433939', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (431, 45, 'MPV', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.434904', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (432, 45, 'MX - 5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.435773', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (433, 45, 'PREMACY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.436564', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (434, 45, 'RX-8', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.437479', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (435, 45, 'TRIBUTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.438303', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (436, 45, 'XEDOS 6', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.438979', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (437, 46, '190', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.439654', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (438, 46, '200 E', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.440278', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (439, 46, '230', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.440972', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (440, 46, '300 E', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.44167', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (441, 46, '300 SL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.442338', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (442, 46, '500', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.443223', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (443, 46, 'CL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.443979', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (444, 46, 'CLASSE A', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.444634', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (445, 46, 'CLASSE B', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.445344', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (446, 46, 'CLASSE C', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.446132', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (447, 46, 'CLASSE C SW', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.44703', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (448, 46, 'CLASSE E', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.447772', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (449, 46, 'CLASSE G', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.448566', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (450, 46, 'CLASSE GL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.449354', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (451, 46, 'CLASSE GLK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.449974', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (452, 46, 'CLASSE M', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.450635', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (453, 46, 'CLASSE R ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.451311', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (454, 46, 'CLASSE S', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.452015', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (455, 46, 'CLK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.452784', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (456, 46, 'CLS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.453518', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (457, 46, 'GLK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.454244', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (458, 46, 'SL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.454955', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (459, 46, 'SLK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.455609', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (460, 46, 'SLR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.456273', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (461, 46, 'SPRINTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.457029', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (462, 46, 'V', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.457988', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (463, 46, 'VANEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.459273', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (464, 46, 'VARIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.460528', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (465, 46, 'VIANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.461766', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (466, 46, 'VITO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.463232', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (467, 47, 'MGF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.464615', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (468, 47, 'ZR ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.465808', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (469, 47, 'ZT ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.467166', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (470, 47, 'ZS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.467981', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (471, 47, 'TF ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.468664', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (472, 48, 'COOPER D', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.46939', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (473, 48, 'COOPER S', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.470149', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (474, 48, 'ONE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.47088', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (475, 48, 'SPIKE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.471624', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (476, 48, 'BERLINA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.472344', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (477, 48, 'CABRIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.472974', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (478, 49, '3000 GT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.473641', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (479, 49, 'ASX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.474297', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (480, 49, 'CARISMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.474984', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (481, 49, 'COLT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.475639', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (482, 49, 'COOPER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.476259', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (483, 49, 'ECLIPSE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.476904', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (484, 49, 'GRANDIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.477492', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (485, 49, 'L 200', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.478061', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (486, 49, 'LANCER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.47865', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (487, 49, 'OUTLANDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.479269', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (488, 49, 'PAJERO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.479904', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (489, 49, 'SPACE STAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.480562', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (490, 49, 'SPACE WAGON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.481292', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (491, 49, 'MIEV', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.481919', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (492, 50, '200 SX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.482504', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (493, 50, '350Z', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.483073', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (494, 50, 'ALMERA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.483621', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (495, 50, 'ATLEON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.484191', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (496, 50, 'CABSTAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.484779', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (497, 50, 'CUBE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.485363', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (498, 50, 'GT-R', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.485876', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (499, 50, 'INTERSTAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.48641', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (500, 50, 'JUKE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.486976', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (501, 50, 'LEAF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.487613', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (502, 50, 'MAXIMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.4882', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (503, 50, 'MICRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.488772', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (504, 50, 'MURANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.489299', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (505, 50, 'NOTE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.489839', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (506, 50, 'NP 300', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.490447', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (507, 50, 'NU 200', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.49105', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (508, 50, 'PATHFINDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.491611', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (509, 50, 'PATROL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.492194', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (510, 50, 'PIXO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.492745', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (511, 50, 'PRIMASTAR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.493272', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (512, 50, 'PRIMERA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.493794', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (513, 50, 'QASHQAI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.494322', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (514, 50, 'SERENA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.494797', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (515, 50, 'TERRANO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.495247', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (516, 50, 'X-TRAIL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.495737', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (517, 51, 'AGILA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.496162', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (518, 51, 'AMPERA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.496573', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (519, 51, 'ANTARA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.496974', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (520, 51, 'ASTRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.497409', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (521, 51, 'ASTRAVAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.497867', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (522, 51, 'CALIBRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.498365', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (523, 51, 'COMBO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.498846', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (524, 51, 'CORSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.499296', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (525, 51, 'CORSAVAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.499758', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (526, 51, 'FRONTERA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.500265', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (527, 51, 'GT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.50075', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (528, 51, 'INSIGNA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.501201', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (529, 51, 'MERIVA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.501689', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (530, 51, 'MOVARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.502204', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (531, 51, 'OMEGA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.502744', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (532, 51, 'SIGNUM', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.503318', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (533, 51, 'SINTRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.503836', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (534, 51, 'SPEEDSTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.504323', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (535, 51, 'TIGRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.504879', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (536, 51, 'VECTRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.505522', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (537, 51, 'VIVARO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.50629', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (538, 51, 'ZAFIRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.506865', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (539, 51, 'KADETT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.507408', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (540, 52, '1007', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.50797', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (541, 52, '106', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.508475', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (542, 52, '107', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.508973', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (543, 52, '205', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.509469', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (544, 52, '206', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.509992', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (545, 52, '207', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.510537', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (546, 52, '3008', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.511072', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (547, 52, '306', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.511554', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (548, 52, '307', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.512026', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (549, 52, '308', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.51247', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (550, 52, '309', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.513029', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (551, 52, '4007', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.513691', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (552, 52, '405', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.51436', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (553, 52, '406', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.514961', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (554, 52, '407', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.515497', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (555, 52, '605', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.516088', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (556, 52, '607', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.516659', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (557, 52, '806', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.521375', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (558, 52, '807', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.522134', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (559, 52, 'PARTNER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.522987', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (560, 52, 'RANCH', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.523624', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (561, 52, '208', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.524248', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (562, 52, '508', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.524845', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (563, 52, 'RCZ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.530107', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (564, 52, '5008', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.530767', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (565, 52, 'BIPPER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.531409', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (566, 52, 'PATNER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.532011', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (567, 52, 'EXPERT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.532565', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (568, 52, 'ION', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.533108', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (569, 53, '911', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.533633', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (570, 53, 'BOXSTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.534129', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (571, 53, 'CAYMAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.534593', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (572, 53, 'CAYMAN S', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.53503', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (573, 53, 'CAYENNE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.535538', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (574, 54, '19', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.536084', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (575, 54, '21', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.536543', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (576, 54, '21 NEVADA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.537064', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (577, 54, 'AVANTIME', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.537635', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (578, 54, 'BIPPER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.538171', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (579, 54, 'BOXER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.538733', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (580, 54, 'CLIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.539402', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (581, 54, 'ESPACE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.539957', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (582, 54, 'EXPERT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.540473', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (583, 54, 'GRAND ESPACE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.541055', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (584, 54, 'GRAND SCENIC', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.541669', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (585, 54, 'KANGOO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.542193', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (586, 54, 'KOLEOS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.54283', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (587, 54, 'LAGUNA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.543366', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (588, 54, 'MEGANE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.543857', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (589, 54, 'MEGANE SW', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.544324', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (590, 54, 'MODUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.544793', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (591, 54, 'PARTNER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.545255', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (592, 54, 'RANCH', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.545715', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (593, 54, 'SAFRANE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.546212', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (594, 54, 'SCENIC', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.546717', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (595, 54, 'SUPER5', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.547233', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (596, 54, 'TWINGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.547709', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (597, 54, 'VEL SATIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.548145', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (598, 54, 'WIND', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.548575', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (599, 56, '111', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.549038', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (600, 56, '114I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.549476', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (601, 56, '200', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.549926', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (602, 56, '211I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.550382', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (603, 56, '214', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.550817', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (604, 56, '216', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.551234', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (605, 56, '25', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.551673', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (606, 56, '414', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.552113', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (607, 56, '416', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.552583', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (608, 56, '45', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.553042', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (609, 56, '618', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.553552', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (610, 56, '620', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.554129', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (611, 56, '75', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.554712', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (612, 56, '75 TOURER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.555267', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (613, 56, '820 TI LUSSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.555969', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (614, 56, 'ROVER 827', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.556543', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (615, 56, 'STREETWISE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.557129', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (616, 56, 'STREETWISE  S', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.557683', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (617, 56, 'TOURER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.558279', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (618, 57, '900', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.558825', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (619, 57, '900 I', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.559455', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (620, 57, '900 S', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.560003', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (621, 57, '9000 CS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.560491', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (622, 57, '09-mar', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.560947', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (623, 57, '09-mag', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.5614', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (624, 57, '09-lug', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.561855', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (625, 71, 'G 420', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.562294', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (626, 71, 'R 500', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.562785', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (627, 71, 'P 380', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.563271', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (628, 71, 'R 620', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.563812', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (629, 58, 'ALHAMBRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.564291', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (630, 58, 'ALTEA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.564782', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (631, 58, 'AROSA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.565278', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (632, 58, 'COPA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.565733', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (633, 58, 'CORDOBA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.566174', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (634, 58, 'EXEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.566644', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (635, 58, 'FREE TRACK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.567111', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (636, 58, 'IBIZA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.567554', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (637, 58, 'LEON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.567992', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (638, 58, 'MARBELLA 900', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.568422', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (639, 58, 'MII', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.568926', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (640, 58, 'TOLEDO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.569427', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (641, 59, '1000 LS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.569909', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (642, 60, 'CITIGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.570445', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (643, 60, 'FABIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.570988', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (644, 60, 'FAVORIT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.571591', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (645, 60, 'FELICIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.572211', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (646, 60, 'FORMAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.572883', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (647, 60, 'OCTAVIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.573406', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (648, 60, 'ROOMSTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.573969', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (649, 60, 'SUPERB', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.574463', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (650, 60, 'YETI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.574978', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (651, 61, 'FORFOUR', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.575495', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (652, 61, 'FORTWO CABRIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.576073', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (653, 61, 'FORTWO COUPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.576561', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (654, 61, 'ROADSTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.577073', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (655, 61, 'SMART', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.577582', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (656, 61, 'SMART CABRIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.578115', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (657, 61, 'SMART CITY-COUPE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.578591', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (658, 61, 'SMART SPIDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.579056', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (659, 62, 'ACTYON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.579505', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (660, 62, 'KYRON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.579956', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (661, 62, 'REXTON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.580412', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (662, 62, 'RODIUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.580872', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (663, 63, 'FORESTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.581323', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (664, 63, 'G3X JUSTY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.581803', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (665, 63, 'IMPREZA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.582264', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (666, 63, 'JUSTY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.58274', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (667, 63, 'LEGACY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.583283', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (668, 63, 'OUTBACK', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.58402', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (669, 63, 'TRIBECA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.584536', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (670, 63, 'VIVIO 660', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.585022', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (671, 64, 'ALTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.585502', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (672, 64, 'BALENO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.586011', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (673, 64, 'GRAN VITARA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.58651', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (674, 64, 'IGNIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.587065', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (675, 64, 'JIMNY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.587633', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (676, 64, 'LIANA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.588159', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (677, 64, 'MARUTI 800', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.588697', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (678, 64, 'SPLASH', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.589406', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (679, 64, 'SWIFT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.589999', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (680, 64, 'SX4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.590538', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (681, 64, 'VITARA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.591095', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (682, 64, 'WAGON R', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.591649', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (683, 65, 'INDICA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.592184', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (684, 65, 'INDIGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.592779', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (685, 65, 'SAFARI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.593388', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (686, 66, 'AURIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.593891', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (687, 66, 'AVENSIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.594408', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (688, 66, 'AYGO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.594936', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (689, 66, 'CARINA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.595442', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (690, 66, 'CELICA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.595935', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (691, 66, 'COROLLA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.596443', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (692, 66, 'GT86', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.596927', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (693, 66, 'HIACE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.597378', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (694, 66, 'HILUX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.597797', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (695, 66, 'IQ', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.598251', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (696, 66, 'LAND CRUISER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.598726', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (697, 66, 'MR 2   SPIDER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.599169', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (698, 66, 'PASEO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.599609', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (699, 66, 'PICNIC', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.600053', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (700, 66, 'PREVIA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.600506', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (701, 66, 'PRIUS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.600963', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (702, 66, 'RAV4', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.601407', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (703, 66, 'SUPRA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.601856', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (704, 66, 'URBAN CRUISER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.602343', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (705, 66, 'VERSO-S', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.602805', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (706, 66, 'YARIS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.603275', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (707, 66, 'YARIS VERSO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.603759', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (708, 67, 'BORA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.604378', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (709, 67, 'BORA VARIANT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.60503', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (710, 67, 'CADDY', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.605746', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (711, 67, 'CORRADO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.606423', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (712, 67, 'CRAFTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.60708', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (713, 67, 'CROSS GOLF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.607569', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (714, 67, 'EOS', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.608069', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (715, 67, 'FOX', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.608547', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (716, 67, 'GAMMA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.608987', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (717, 67, 'GOLF', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.609574', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (718, 67, 'GOLF CABRIO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.610046', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (719, 67, 'GOLF GTI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.610578', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (720, 67, 'GOLF VARIANT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.611052', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (721, 67, 'JETTA', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.61151', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (722, 67, 'LUPO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.611963', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (723, 67, 'MAGGIOLINO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.612406', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (724, 67, 'MULTIVAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.612832', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (725, 67, 'NEW BEETLE', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.613257', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (726, 67, 'NUOVA UP', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.613709', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (727, 67, 'PASSAT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.614193', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (728, 67, 'PASSAT ALLTRAC', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.61472', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (729, 67, 'PASSAT VARIANT', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.615237', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (730, 67, 'PHAETON', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.615755', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (731, 67, 'POLO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.616242', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (732, 67, 'POLO GTI', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.616689', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (733, 67, 'SCIROCCO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.617147', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (734, 67, 'SHARAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.617587', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (735, 67, 'TIGUAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.618035', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (736, 67, 'TOUAREG', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.618476', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (737, 67, 'TOURAN', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.618964', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (738, 67, 'TRANSPORTER', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.619456', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (739, 67, 'VENTO', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.619981', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (740, 68, '240', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.62046', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (741, 68, '440', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.621026', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (742, 68, '460', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.621634', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (743, 68, '480', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.622235', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (744, 68, '850', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.622861', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (745, 68, '940', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.623391', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (746, 68, '960', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.623944', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (747, 68, 'C30', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.624506', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (748, 68, 'C70', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.62511', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (749, 68, 'S40', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.625656', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (750, 68, 'S60', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.62626', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (751, 68, 'S70', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.626774', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (752, 68, 'S80', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.62729', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (753, 68, 'V40', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.627836', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (754, 68, 'V50', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.628384', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (755, 68, 'V70', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.628929', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (756, 68, 'XC60', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.629423', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (757, 68, 'XC70', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.629911', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (758, 68, 'XC90', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.630353', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (759, 68, 'FL', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.630775', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (760, 68, 'FM', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.631219', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_modelli_veicoli VALUES (761, 68, 'FH', '2022-03-15', '9999-12-31', '2022-03-15 14:08:07.63166', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3712 (class 0 OID 50402)
-- Dependencies: 232
-- Data for Name: d_profili; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_profili VALUES (2, 'AGENTEPL', 'Agente PL', 'adi_agentePL', true, true, true, '2022-03-15 14:08:07.632118', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (3, 'SUPERVISOREZONA', 'Supervisore di Zona', 'adi_supervisoreZona', false, true, false, '2022-03-15 14:08:07.63274', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (4, 'STATISTICHE', 'Utente Statistiche', 'adi_statistiche', false, false, false, '2022-03-15 14:08:07.633205', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (1, 'AMMINISTRATORE', 'Amministratore', 'adi_admins', false, false, false, '2022-03-15 14:08:07.633658', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (5, 'GEV', 'Guardia Ecologica Volontaria', 'adi_gev', true, true, true, '2022-03-15 14:08:07.634105', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_profili VALUES (6, 'ERMES', 'Agente Annonaria', 'adi_ermes', true, true, true, '2022-03-15 14:08:07.634541', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3713 (class 0 OID 50408)
-- Dependencies: 233
-- Data for Name: d_prosa_aggiornamenti; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_prosa_aggiornamenti VALUES ('CODICI_D', 'Codici D', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('SERIE_VEICOLI', 'Serie Veicoli', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('NAZIONI', 'Nazioni', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('GENERE_VEICOLI', 'Genere Veicoli', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('CATEGORIE_RCO', 'Categorie RCO', NULL, NULL, false);
INSERT INTO public.d_prosa_aggiornamenti VALUES ('SANZIONI', 'Sanzioni', NULL, NULL, false);


--
-- TOC entry 3714 (class 0 OID 50411)
-- Dependencies: 234
-- Data for Name: d_prosa_categoria_rco; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3715 (class 0 OID 50416)
-- Dependencies: 235
-- Data for Name: d_prosa_codice_d; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3716 (class 0 OID 50421)
-- Dependencies: 236
-- Data for Name: d_prosa_genere_veicoli; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3717 (class 0 OID 50426)
-- Dependencies: 237
-- Data for Name: d_prosa_nazioni; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3718 (class 0 OID 50431)
-- Dependencies: 238
-- Data for Name: d_prosa_sanzioni; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3720 (class 0 OID 50445)
-- Dependencies: 240
-- Data for Name: d_prosa_sanzioni_accessorie; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3721 (class 0 OID 50452)
-- Dependencies: 241
-- Data for Name: d_prosa_serie_veicoli; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3722 (class 0 OID 50457)
-- Dependencies: 242
-- Data for Name: d_rel_profili_manuali; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3723 (class 0 OID 50462)
-- Dependencies: 243
-- Data for Name: d_rel_profili_menu; Type: TABLE DATA; Schema: public; Owner: -
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
-- TOC entry 3725 (class 0 OID 50469)
-- Dependencies: 245
-- Data for Name: d_sanzioni_accessorie; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3727 (class 0 OID 50478)
-- Dependencies: 247
-- Data for Name: d_sottocategorie; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3729 (class 0 OID 50486)
-- Dependencies: 249
-- Data for Name: d_stati_adi; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_stati_adi VALUES (3, 'I', 'In attesa di firma', '2022-03-15 14:08:07.663822', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_stati_adi VALUES (2, 'F', 'Firmato', '2022-03-15 14:08:07.664479', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_stati_adi VALUES (1, 'S', 'Sostituito con VDC', '2022-03-15 14:08:07.664925', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3731 (class 0 OID 50494)
-- Dependencies: 251
-- Data for Name: d_stati_visure; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.d_stati_visure VALUES (1, 'E', 'Eseguito', '2022-03-15 14:08:07.665357', 'SYSTEM', NULL, NULL);
INSERT INTO public.d_stati_visure VALUES (2, 'W', 'Errore', '2022-03-15 14:08:07.665946', 'SYSTEM', NULL, NULL);


--
-- TOC entry 3733 (class 0 OID 50502)
-- Dependencies: 253
-- Data for Name: d_tipo_visure; Type: TABLE DATA; Schema: public; Owner: -
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
-- TOC entry 3735 (class 0 OID 50510)
-- Dependencies: 255
-- Data for Name: d_utenti; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3737 (class 0 OID 50518)
-- Dependencies: 257
-- Data for Name: d_visure; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 200
-- Name: s_prog_adi; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_adi', 1, false);


--
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 202
-- Name: s_prog_adi_allegati; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_adi_allegati', 1, false);


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 205
-- Name: s_prog_adi_notifiche; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_adi_notifiche', 1, false);


--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 209
-- Name: s_prog_adi_violazioni; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_adi_violazioni', 1, false);


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 211
-- Name: s_prog_categorie; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_categorie', 1, false);


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 213
-- Name: s_prog_colori_veicoli; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_colori_veicoli', 249, true);


--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 215
-- Name: s_prog_comandi_zona; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_comandi_zona', 35, true);


--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 217
-- Name: s_prog_contatti; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_contatti', 3, true);


--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 219
-- Name: s_prog_credenziali_mctc; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_credenziali_mctc', 2, false);


--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 221
-- Name: s_prog_documenti; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_documenti', 1, false);


--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 223
-- Name: s_prog_manuali; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_manuali', 1, false);


--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 225
-- Name: s_prog_marche_veicoli; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_marche_veicoli', 156, true);


--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 227
-- Name: s_prog_menu; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_menu', 22, true);


--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 229
-- Name: s_prog_modelli_veicoli; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_modelli_veicoli', 761, true);


--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 231
-- Name: s_prog_profili; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_profili', 6, false);


--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 239
-- Name: s_prog_prosa_sanzioni_accessorie; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_prosa_sanzioni_accessorie', 1, false);


--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 244
-- Name: s_prog_sanzioni_accessorie; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_sanzioni_accessorie', 1, false);


--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 246
-- Name: s_prog_sottocategorie; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_sottocategorie', 1, false);


--
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 248
-- Name: s_prog_stati_adi; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_stati_adi', 3, false);


--
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 250
-- Name: s_prog_stati_visure; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_stati_visure', 2, false);


--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 252
-- Name: s_prog_tipo_visure; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_tipo_visure', 12, false);


--
-- TOC entry 3765 (class 0 OID 0)
-- Dependencies: 254
-- Name: s_prog_utenti; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_utenti', 1, false);


--
-- TOC entry 3766 (class 0 OID 0)
-- Dependencies: 256
-- Name: s_prog_visure; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.s_prog_visure', 1, false);


--
-- TOC entry 3523 (class 2606 OID 50528)
-- Name: d_visure bigint_seq_id_visure_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT bigint_seq_id_visure_key UNIQUE (seq_id_visure);


--
-- TOC entry 3411 (class 2606 OID 50530)
-- Name: d_adi_allegati d_adi_allegati_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_allegati
    ADD CONSTRAINT d_adi_allegati_pkey PRIMARY KEY (seq_id_adi_allegati);


--
-- TOC entry 3413 (class 2606 OID 50532)
-- Name: d_adi_allegati d_adi_allegati_seq_id_adi_allegati_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_allegati
    ADD CONSTRAINT d_adi_allegati_seq_id_adi_allegati_key UNIQUE (seq_id_adi_allegati);


--
-- TOC entry 3405 (class 2606 OID 50534)
-- Name: d_adi d_adi_codice_adi_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_codice_adi_key UNIQUE (codice_adi);


--
-- TOC entry 3415 (class 2606 OID 50536)
-- Name: d_adi_localita d_adi_localita_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_localita
    ADD CONSTRAINT d_adi_localita_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3417 (class 2606 OID 50538)
-- Name: d_adi_notifiche d_adi_notifiche_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_notifiche
    ADD CONSTRAINT d_adi_notifiche_pkey PRIMARY KEY (seq_id_adi_notifiche);


--
-- TOC entry 3407 (class 2606 OID 50540)
-- Name: d_adi d_adi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3409 (class 2606 OID 50542)
-- Name: d_adi d_adi_seq_id_adi_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_seq_id_adi_key UNIQUE (seq_id_adi);


--
-- TOC entry 3419 (class 2606 OID 50544)
-- Name: d_adi_vdc d_adi_vdc_codice_vdc_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_vdc
    ADD CONSTRAINT d_adi_vdc_codice_vdc_key UNIQUE (codice_vdc);


--
-- TOC entry 3421 (class 2606 OID 50546)
-- Name: d_adi_vdc d_adi_vdc_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_vdc
    ADD CONSTRAINT d_adi_vdc_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3423 (class 2606 OID 50548)
-- Name: d_adi_veicoli d_adi_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_veicoli
    ADD CONSTRAINT d_adi_veicoli_pkey PRIMARY KEY (seq_id_adi);


--
-- TOC entry 3425 (class 2606 OID 50550)
-- Name: d_adi_violazioni d_adi_violazioni_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_violazioni
    ADD CONSTRAINT d_adi_violazioni_pkey PRIMARY KEY (seq_id_adi_violazioni);


--
-- TOC entry 3427 (class 2606 OID 50552)
-- Name: d_categorie d_categorie_desc_categoria_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_desc_categoria_key UNIQUE (desc_categoria);


--
-- TOC entry 3429 (class 2606 OID 50554)
-- Name: d_categorie d_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_pkey PRIMARY KEY (seq_id_categorie);


--
-- TOC entry 3431 (class 2606 OID 50556)
-- Name: d_categorie d_categorie_seq_id_categorie_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_seq_id_categorie_key UNIQUE (seq_id_categorie);


--
-- TOC entry 3433 (class 2606 OID 50558)
-- Name: d_categorie d_categorie_unique_desc_categoria; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_categorie
    ADD CONSTRAINT d_categorie_unique_desc_categoria UNIQUE (desc_categoria);


--
-- TOC entry 3435 (class 2606 OID 50560)
-- Name: d_colori_veicoli d_colori_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_colori_veicoli
    ADD CONSTRAINT d_colori_veicoli_pkey PRIMARY KEY (seq_id_colori_veicoli);


--
-- TOC entry 3437 (class 2606 OID 50562)
-- Name: d_colori_veicoli d_colori_veicoli_un; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_colori_veicoli
    ADD CONSTRAINT d_colori_veicoli_un UNIQUE (desc_colore);


--
-- TOC entry 3439 (class 2606 OID 50564)
-- Name: d_comandi_zona d_comandi_zona_codice_unita_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_comandi_zona
    ADD CONSTRAINT d_comandi_zona_codice_unita_key UNIQUE (codice_unita);


--
-- TOC entry 3441 (class 2606 OID 50566)
-- Name: d_comandi_zona d_comandi_zona_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_comandi_zona
    ADD CONSTRAINT d_comandi_zona_pkey PRIMARY KEY (seq_id_comandi_zona);


--
-- TOC entry 3443 (class 2606 OID 50568)
-- Name: d_contatti d_contatti_desc_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_contatti
    ADD CONSTRAINT d_contatti_desc_email_key UNIQUE (desc_email);


--
-- TOC entry 3445 (class 2606 OID 50570)
-- Name: d_contatti d_contatti_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_contatti
    ADD CONSTRAINT d_contatti_pkey PRIMARY KEY (seq_id_contatti);


--
-- TOC entry 3447 (class 2606 OID 50572)
-- Name: d_contatti d_contatti_seq_id_contatti_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_contatti
    ADD CONSTRAINT d_contatti_seq_id_contatti_key UNIQUE (seq_id_contatti);


--
-- TOC entry 3449 (class 2606 OID 50574)
-- Name: d_credenziali_mctc d_credenziali_mctc_desc_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_credenziali_mctc
    ADD CONSTRAINT d_credenziali_mctc_desc_username_key UNIQUE (desc_username);


--
-- TOC entry 3451 (class 2606 OID 50576)
-- Name: d_credenziali_mctc d_credenziali_mctc_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_credenziali_mctc
    ADD CONSTRAINT d_credenziali_mctc_pkey PRIMARY KEY (seq_id_credenziali_mctc);


--
-- TOC entry 3453 (class 2606 OID 50578)
-- Name: d_documenti d_documenti_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_pkey PRIMARY KEY (seq_id_documenti);


--
-- TOC entry 3455 (class 2606 OID 50580)
-- Name: d_documenti d_documenti_un; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_un UNIQUE (seq_id_documenti, desc_nome_documento, fk_seq_id_categorie, fk_seq_id_sottocategorie);


--
-- TOC entry 3457 (class 2606 OID 50582)
-- Name: d_manuali d_manuali_desc_nome_documento_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_manuali
    ADD CONSTRAINT d_manuali_desc_nome_documento_key UNIQUE (desc_nome_documento);


--
-- TOC entry 3459 (class 2606 OID 50584)
-- Name: d_manuali d_manuali_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_manuali
    ADD CONSTRAINT d_manuali_pkey PRIMARY KEY (seq_id_manuali);


--
-- TOC entry 3461 (class 2606 OID 50586)
-- Name: d_marche_veicoli d_marche_veicoli_codice_marca_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_marche_veicoli
    ADD CONSTRAINT d_marche_veicoli_codice_marca_key UNIQUE (codice_marca);


--
-- TOC entry 3463 (class 2606 OID 50588)
-- Name: d_marche_veicoli d_marche_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_marche_veicoli
    ADD CONSTRAINT d_marche_veicoli_pkey PRIMARY KEY (seq_id_marche_veicoli);


--
-- TOC entry 3465 (class 2606 OID 50590)
-- Name: d_menu d_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_menu
    ADD CONSTRAINT d_menu_pkey PRIMARY KEY (seq_id_menu);


--
-- TOC entry 3467 (class 2606 OID 50592)
-- Name: d_menu d_menu_un; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_menu
    ADD CONSTRAINT d_menu_un UNIQUE (desc_menu, codice_ordinamento, codice_parent);


--
-- TOC entry 3469 (class 2606 OID 50594)
-- Name: d_modelli_veicoli d_modelli_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_modelli_veicoli
    ADD CONSTRAINT d_modelli_veicoli_pkey PRIMARY KEY (seq_id_modelli_veicoli);


--
-- TOC entry 3471 (class 2606 OID 50596)
-- Name: d_modelli_veicoli d_modelli_veicoli_un; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_modelli_veicoli
    ADD CONSTRAINT d_modelli_veicoli_un UNIQUE (fk_seq_id_marche_veicoli, desc_modello);


--
-- TOC entry 3473 (class 2606 OID 50598)
-- Name: d_profili d_profili_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_profili
    ADD CONSTRAINT d_profili_pkey PRIMARY KEY (seq_id_profili);


--
-- TOC entry 3475 (class 2606 OID 50600)
-- Name: d_profili d_profili_un; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_profili
    ADD CONSTRAINT d_profili_un UNIQUE (codice_profilo, codice_profilo_adfs);


--
-- TOC entry 3477 (class 2606 OID 50602)
-- Name: d_prosa_aggiornamenti d_prosa_aggiornamenti_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_aggiornamenti
    ADD CONSTRAINT d_prosa_aggiornamenti_key UNIQUE (codice);


--
-- TOC entry 3479 (class 2606 OID 50604)
-- Name: d_prosa_categoria_rco d_prosa_categoria_rco_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_categoria_rco
    ADD CONSTRAINT d_prosa_categoria_rco_pkey PRIMARY KEY (id);


--
-- TOC entry 3481 (class 2606 OID 50606)
-- Name: d_prosa_codice_d d_prosa_codice_d_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_codice_d
    ADD CONSTRAINT d_prosa_codice_d_pkey PRIMARY KEY (codice);


--
-- TOC entry 3483 (class 2606 OID 50608)
-- Name: d_prosa_genere_veicoli d_prosa_genere_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_genere_veicoli
    ADD CONSTRAINT d_prosa_genere_veicoli_pkey PRIMARY KEY (genere);


--
-- TOC entry 3485 (class 2606 OID 50610)
-- Name: d_prosa_nazioni d_prosa_nazioni_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_nazioni
    ADD CONSTRAINT d_prosa_nazioni_pkey PRIMARY KEY (codice_nazione);


--
-- TOC entry 3489 (class 2606 OID 50612)
-- Name: d_prosa_sanzioni_accessorie d_prosa_sanzioni_accessorie_un; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_sanzioni_accessorie
    ADD CONSTRAINT d_prosa_sanzioni_accessorie_un UNIQUE (seq_id_prosa_sanzioni_accessorie);


--
-- TOC entry 3487 (class 2606 OID 50614)
-- Name: d_prosa_sanzioni d_prosa_sanzioni_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_sanzioni
    ADD CONSTRAINT d_prosa_sanzioni_pkey PRIMARY KEY (codice_infrazione);


--
-- TOC entry 3491 (class 2606 OID 50616)
-- Name: d_prosa_serie_veicoli d_prosa_serie_veicoli_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_serie_veicoli
    ADD CONSTRAINT d_prosa_serie_veicoli_pkey PRIMARY KEY (serie);


--
-- TOC entry 3493 (class 2606 OID 50618)
-- Name: d_rel_profili_manuali d_rel_profili_manuali_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_rel_profili_manuali
    ADD CONSTRAINT d_rel_profili_manuali_pkey PRIMARY KEY (fk_seq_id_profili, fk_seq_id_manuali);


--
-- TOC entry 3495 (class 2606 OID 50620)
-- Name: d_rel_profili_menu d_rel_profili_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_rel_profili_menu
    ADD CONSTRAINT d_rel_profili_menu_pkey PRIMARY KEY (fk_seq_id_profili, fk_seq_id_menu);


--
-- TOC entry 3497 (class 2606 OID 50622)
-- Name: d_sanzioni_accessorie d_sanzioni_accessorie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_sanzioni_accessorie
    ADD CONSTRAINT d_sanzioni_accessorie_pkey PRIMARY KEY (seq_id_sanzioni_accessorie);


--
-- TOC entry 3499 (class 2606 OID 50624)
-- Name: d_sottocategorie d_sottocategorie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_sottocategorie
    ADD CONSTRAINT d_sottocategorie_pkey PRIMARY KEY (seq_id_sottocategorie);


--
-- TOC entry 3501 (class 2606 OID 50626)
-- Name: d_sottocategorie d_sottocategorie_seq_id_sottocategorie_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_sottocategorie
    ADD CONSTRAINT d_sottocategorie_seq_id_sottocategorie_key UNIQUE (seq_id_sottocategorie);


--
-- TOC entry 3503 (class 2606 OID 50628)
-- Name: d_stati_adi d_stati_adi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_stati_adi
    ADD CONSTRAINT d_stati_adi_pkey PRIMARY KEY (seq_id_stati_adi);


--
-- TOC entry 3505 (class 2606 OID 50630)
-- Name: d_stati_adi d_stati_adi_seq_id_stati_adi_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_stati_adi
    ADD CONSTRAINT d_stati_adi_seq_id_stati_adi_key UNIQUE (seq_id_stati_adi, codice_stato);


--
-- TOC entry 3507 (class 2606 OID 50632)
-- Name: d_stati_visure d_stati_visure_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_stati_visure
    ADD CONSTRAINT d_stati_visure_pkey PRIMARY KEY (seq_id_stati_visure);


--
-- TOC entry 3509 (class 2606 OID 50634)
-- Name: d_stati_visure d_stati_visure_seq_id_stati_visure_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_stati_visure
    ADD CONSTRAINT d_stati_visure_seq_id_stati_visure_key UNIQUE (seq_id_stati_visure, codice_stato);


--
-- TOC entry 3511 (class 2606 OID 50636)
-- Name: d_tipo_visure d_tipo_visure_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_tipo_visure
    ADD CONSTRAINT d_tipo_visure_pkey PRIMARY KEY (seq_id_tipo_visure);


--
-- TOC entry 3513 (class 2606 OID 50638)
-- Name: d_tipo_visure d_tipo_visure_seq_id_tipo_visure_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_tipo_visure
    ADD CONSTRAINT d_tipo_visure_seq_id_tipo_visure_key UNIQUE (seq_id_tipo_visure, codice_tipo);


--
-- TOC entry 3515 (class 2606 OID 50640)
-- Name: d_utenti d_utenti_codice_codana_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_utenti
    ADD CONSTRAINT d_utenti_codice_codana_key UNIQUE (codice_codana);


--
-- TOC entry 3517 (class 2606 OID 50642)
-- Name: d_utenti d_utenti_codice_fiscale_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_utenti
    ADD CONSTRAINT d_utenti_codice_fiscale_key UNIQUE (codice_fiscale);


--
-- TOC entry 3519 (class 2606 OID 50644)
-- Name: d_utenti d_utenti_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_utenti
    ADD CONSTRAINT d_utenti_key UNIQUE (seq_id_utenti);


--
-- TOC entry 3521 (class 2606 OID 50646)
-- Name: d_utenti d_utenti_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_utenti
    ADD CONSTRAINT d_utenti_pkey PRIMARY KEY (seq_id_utenti);


--
-- TOC entry 3525 (class 2606 OID 50648)
-- Name: d_visure d_visure_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT d_visure_pkey PRIMARY KEY (seq_id_visure);


--
-- TOC entry 3526 (class 2606 OID 50649)
-- Name: d_adi d_adi_fk_comandi_zona; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT d_adi_fk_comandi_zona FOREIGN KEY (fk_seq_id_comandi_zona) REFERENCES public.d_comandi_zona(seq_id_comandi_zona) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3537 (class 2606 OID 50654)
-- Name: d_documenti d_documenti_fk_seq_id_categorie; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_fk_seq_id_categorie FOREIGN KEY (fk_seq_id_categorie) REFERENCES public.d_categorie(seq_id_categorie) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3538 (class 2606 OID 50659)
-- Name: d_documenti d_documenti_fk_seq_id_sottocategorie; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_documenti
    ADD CONSTRAINT d_documenti_fk_seq_id_sottocategorie FOREIGN KEY (fk_seq_id_sottocategorie) REFERENCES public.d_sottocategorie(seq_id_sottocategorie) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3527 (class 2606 OID 50664)
-- Name: d_adi fk_adi_d_utenti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT fk_adi_d_utenti FOREIGN KEY (fk_seq_id_utenti) REFERENCES public.d_utenti(seq_id_utenti) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3540 (class 2606 OID 50669)
-- Name: d_prosa_sanzioni_accessorie fk_codice_infrazione; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_prosa_sanzioni_accessorie
    ADD CONSTRAINT fk_codice_infrazione FOREIGN KEY (fk_codice_infrazione) REFERENCES public.d_prosa_sanzioni(codice_infrazione) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3529 (class 2606 OID 50674)
-- Name: d_adi_allegati fk_seq_id_adi_allegati; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_allegati
    ADD CONSTRAINT fk_seq_id_adi_allegati FOREIGN KEY (fk_seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3530 (class 2606 OID 50679)
-- Name: d_adi_localita fk_seq_id_adi_localita; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_localita
    ADD CONSTRAINT fk_seq_id_adi_localita FOREIGN KEY (seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3531 (class 2606 OID 50684)
-- Name: d_adi_notifiche fk_seq_id_adi_notifiche; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_notifiche
    ADD CONSTRAINT fk_seq_id_adi_notifiche FOREIGN KEY (fk_seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3532 (class 2606 OID 50689)
-- Name: d_adi_vdc fk_seq_id_adi_vdc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_vdc
    ADD CONSTRAINT fk_seq_id_adi_vdc FOREIGN KEY (seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3533 (class 2606 OID 50694)
-- Name: d_adi_veicoli fk_seq_id_adi_veicoli; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_veicoli
    ADD CONSTRAINT fk_seq_id_adi_veicoli FOREIGN KEY (seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3536 (class 2606 OID 50699)
-- Name: d_adi_violazioni fk_seq_id_adi_violazioni; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_violazioni
    ADD CONSTRAINT fk_seq_id_adi_violazioni FOREIGN KEY (fk_seq_id_adi) REFERENCES public.d_adi(seq_id_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3546 (class 2606 OID 50704)
-- Name: d_sottocategorie fk_seq_id_categorie; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_sottocategorie
    ADD CONSTRAINT fk_seq_id_categorie FOREIGN KEY (fk_seq_id_categorie) REFERENCES public.d_categorie(seq_id_categorie) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3534 (class 2606 OID 50709)
-- Name: d_adi_veicoli fk_seq_id_colori_veicoli; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_veicoli
    ADD CONSTRAINT fk_seq_id_colori_veicoli FOREIGN KEY (fk_seq_id_colori_veicoli) REFERENCES public.d_colori_veicoli(seq_id_colori_veicoli) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3541 (class 2606 OID 50714)
-- Name: d_rel_profili_manuali fk_seq_id_manuali_rel; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_rel_profili_manuali
    ADD CONSTRAINT fk_seq_id_manuali_rel FOREIGN KEY (fk_seq_id_manuali) REFERENCES public.d_manuali(seq_id_manuali) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3539 (class 2606 OID 50719)
-- Name: d_modelli_veicoli fk_seq_id_marche_veicoli; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_modelli_veicoli
    ADD CONSTRAINT fk_seq_id_marche_veicoli FOREIGN KEY (fk_seq_id_marche_veicoli) REFERENCES public.d_marche_veicoli(seq_id_marche_veicoli) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3543 (class 2606 OID 50724)
-- Name: d_rel_profili_menu fk_seq_id_menu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_rel_profili_menu
    ADD CONSTRAINT fk_seq_id_menu FOREIGN KEY (fk_seq_id_menu) REFERENCES public.d_menu(seq_id_menu) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3535 (class 2606 OID 50729)
-- Name: d_adi_veicoli fk_seq_id_modelli_veicoli; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi_veicoli
    ADD CONSTRAINT fk_seq_id_modelli_veicoli FOREIGN KEY (fk_seq_id_modelli_veicoli) REFERENCES public.d_modelli_veicoli(seq_id_modelli_veicoli) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3544 (class 2606 OID 50734)
-- Name: d_rel_profili_menu fk_seq_id_profili; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_rel_profili_menu
    ADD CONSTRAINT fk_seq_id_profili FOREIGN KEY (fk_seq_id_profili) REFERENCES public.d_profili(seq_id_profili) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3542 (class 2606 OID 50739)
-- Name: d_rel_profili_manuali fk_seq_id_profili_rel; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_rel_profili_manuali
    ADD CONSTRAINT fk_seq_id_profili_rel FOREIGN KEY (fk_seq_id_profili) REFERENCES public.d_profili(seq_id_profili) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3545 (class 2606 OID 50744)
-- Name: d_sanzioni_accessorie fk_seq_id_sanzioni_accessorie; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_sanzioni_accessorie
    ADD CONSTRAINT fk_seq_id_sanzioni_accessorie FOREIGN KEY (fk_seq_id_violazione) REFERENCES public.d_adi_violazioni(seq_id_adi_violazioni) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3528 (class 2606 OID 50749)
-- Name: d_adi fk_seq_id_stati_adi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_adi
    ADD CONSTRAINT fk_seq_id_stati_adi FOREIGN KEY (fk_seq_id_stati_adi) REFERENCES public.d_stati_adi(seq_id_stati_adi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3547 (class 2606 OID 50754)
-- Name: d_visure fk_seq_id_stati_visure; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT fk_seq_id_stati_visure FOREIGN KEY (fk_seq_id_stati_visure) REFERENCES public.d_stati_visure(seq_id_stati_visure) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3548 (class 2606 OID 50759)
-- Name: d_visure fk_seq_id_tipo_visure; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT fk_seq_id_tipo_visure FOREIGN KEY (fk_seq_id_tipo_visure) REFERENCES public.d_tipo_visure(seq_id_tipo_visure) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3549 (class 2606 OID 50764)
-- Name: d_visure fk_visure_d_utenti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.d_visure
    ADD CONSTRAINT fk_visure_d_utenti FOREIGN KEY (fk_seq_id_utenti) REFERENCES public.d_utenti(seq_id_utenti) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2022-03-21 01:05:35 CET

--
-- PostgreSQL database dump complete
--

