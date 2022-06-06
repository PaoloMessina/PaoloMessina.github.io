ALTER TABLE public.d_adi_veicoli ADD desc_modello varchar(200) NOT null default '';
ALTER TABLE public.d_adi_veicoli ADD desc_marca varchar(200) NOT NULL default '';
ALTER TABLE public.d_adi_veicoli DROP CONSTRAINT fk_seq_id_modelli_veicoli;
ALTER TABLE public.d_adi_veicoli DROP COLUMN fk_seq_id_modelli_veicoli;

UPDATE public.d_adi_veicoli SET desc_marca = 'FIAT';
UPDATE public.d_adi_veicoli SET desc_modello = 'PANDA';
