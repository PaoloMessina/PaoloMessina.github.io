ALTER TABLE public.d_comandi_zona DROP CONSTRAINT d_comandi_zona_un;

ALTER TABLE public.d_comandi_zona ADD CONSTRAINT d_comandi_zona_un UNIQUE (codice_prosa,desc_unita,data_fine_validita);

ALTER TABLE public.d_comandi_zona ALTER COLUMN codice_unita DROP NOT NULL;

ALTER TABLE public.d_comandi_zona ALTER COLUMN data_inizio_validita TYPE timestamp USING data_inizio_validita::timestamp;

ALTER TABLE public.d_comandi_zona ALTER COLUMN data_fine_validita TYPE timestamp USING data_fine_validita::timestamp;
