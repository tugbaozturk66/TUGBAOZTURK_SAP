*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0094
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0094.

*Alıştırma – 14: Yeni bir rapor oluşturun. Rapor içerisinde 2 adet parametre tanımlayın. Kullanıcıdan bir
*uçuş şirketi bilgisi (carrid) ve yeni bir Currency alin. Kendi oluşturduğunuz ve SCARR ile ayni satir
*yapısına sahip olan database tablosunda kullanıcının girdiği uçuş şirketi ile ayni uçuş şirketi bilgisine
*sahip olan satırların “Currency” kolonlarını TL ile değiştirin. (Set-Update).


PARAMETERS : p_carrid TYPE s_carr_id,
             p_curr   TYPE s_currcode.

DATA : gs_scarr TYPE scarr,
       gt_scarr TYPE scarr.

START-OF-SELECTION.

  SELECT SINGLE * FROM zto_sap04_scarr INTO gs_scarr WHERE carrid = p_carrid AND currcode = p_curr .

  IF sy-subrc = 0.
    UPDATE zto_sap04_scarr SET currcode = 'USD' WHERE carrid = p_carrid.
    MESSAGE 'Islem basariyla gerceklestirildi ' TYPE 'I'.
  ELSE.
    MESSAGE 'Islem basarisiz oldu ' TYPE 'I' DISPLAY LIKE 'E'.
  ENDIF.
