CREATE TABLE public.d_zone (
	codice_prosa varchar(2) NOT NULL,
	etichetta varchar(5) NOT NULL,
	data_creazione timestamp NOT NULL DEFAULT now(),
	utente_creazione varchar(50) NOT NULL DEFAULT 'SYSTEM'::character varying,
	data_aggiornamento timestamp NULL,
	utente_aggiornamento varchar(50) NULL
);

ALTER TABLE public.d_zone ADD CONSTRAINT d_zone_pk PRIMARY KEY (codice_prosa);
ALTER TABLE public.d_zone ADD CONSTRAINT d_zone_un UNIQUE (codice_prosa,etichetta);

INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('01', 'URM');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('02', 'UAC');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('21', 'RIM');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('22', 'SPS');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('26', 'AUS');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('28', 'GEV');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('31', 'CD1');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('32', 'CD2');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('33', 'CD3');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('34', 'CD4');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('35', 'CD5');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('36', 'CD6');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('37', 'CD7');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('38', 'CD8');
INSERT INTO public.d_zone (codice_prosa, etichetta) VALUES('39', 'CD9');

ALTER TABLE public.d_comandi_zona ADD CONSTRAINT d_comandi_zona_fk FOREIGN KEY (codice_prosa) REFERENCES public.d_zone(codice_prosa);