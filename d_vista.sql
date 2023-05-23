--vw_lista_adi
DROP VIEW public.vw_lista_adi;
-- public.vw_lista_adi source
CREATE
OR REPLACE VIEW public.vw_lista_adi
AS
SELECT dadi.seq_id_adi,
       dadi.codice_adi,
       dadi.matricola,
       dutenti.codice_codana,
       dutenti.codice_fiscale,
       dutenti.desc_nome,
       dutenti.desc_cognome,
       dutenti.username_firma_digitale,
       dutenti.data_creazione as data_creazione_utente,
       dutenti.data_aggiornamento as data_aggiornamento_utente,
       dadi.dispositivo,
       dadi.data_firma,
       vdc.codice_vdc,
       dcz.seq_id_comandi_zona,
       dcz.codice_prosa,
       dcz.codice_unita,
       dcz.desc_unita,
       dstatiadi.codice_stato,
       dstatiadi.desc_stato,
       dadi.data_rilevamento,
       daveicoli.codice_serie,
       daveicoli.desc_serie,
       daveicoli.codice_genere,
       daveicoli.desc_genere,
       daveicoli.desc_modello,
       daveicoli.desc_marca,
       daveicoli.desc_targa,
       dcv.seq_id_colori_veicoli,
       dcv.desc_colore,
       daveicoli.codice_nazione,
       daveicoli.desc_nazione,
       dalocalita.codice_toponomastica,
       dalocalita.codice_via,
       dalocalita.desc_via,
       dalocalita.codice_via_2,
       dalocalita.desc_via_2,
       dalocalita.codice_d,
       dalocalita.desc_codice_d,
       dalocalita.numero_civico,
       dalocalita.coordinate_x,
       dalocalita.coordinate_y,
       daviolazioni.codice_infrazione,
       daviolazioni.descrizione_infrazione,
       daviolazioni.punti,
       daviolazioni.tipologia,
       daviolazioni.tipo_regolamento,
       daviolazioni.articolo_infrazione,
       daviolazioni.comma_infrazione,
       daviolazioni.decreto_legge,
       daviolazioni.importo_pagamento_minimo,
       daviolazioni.importo_pagamento_massimo,
       daviolazioni.importo_pagamento_scontato,
       daviolazioni.importo_pagamento_misura_ridotta,
       dadi.data_inizio_validita,
       dadi.data_fine_validita,
       vw_vsa.desc_sanzione_accessoria
FROM d_adi dadi
         JOIN d_adi_veicoli daveicoli ON dadi.seq_id_adi = daveicoli.seq_id_adi
         JOIN d_colori_veicoli dcv ON daveicoli.fk_seq_id_colori_veicoli = dcv.seq_id_colori_veicoli
         JOIN d_adi_localita dalocalita ON dadi.seq_id_adi = dalocalita.seq_id_adi
         JOIN d_stati_adi dstatiadi ON dadi.fk_seq_id_stati_adi = dstatiadi.seq_id_stati_adi
         JOIN d_comandi_zona dcz ON dadi.fk_seq_id_comandi_zona = dcz.seq_id_comandi_zona
         JOIN d_utenti dutenti ON dadi.fk_seq_id_utenti = dutenti.seq_id_utenti
         JOIN d_adi_violazioni daviolazioni ON dadi.seq_id_adi = daviolazioni.fk_seq_id_adi
         LEFT JOIN d_adi_vdc vdc ON dadi.seq_id_adi = vdc.seq_id_adi
         LEFT JOIN vw_sanzioni_accessorie vw_vsa ON vw_vsa.fk_seq_id_violazione = daviolazioni.seq_id_adi_violazioni
ORDER BY dadi.data_rilevamento DESC;
