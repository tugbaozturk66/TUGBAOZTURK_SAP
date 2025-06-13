*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0097
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0097.

*Alıştırma – 17: Yeni bir rapor oluşturun. Rapor içerisinde 1 adet parametre tanımlayın. Kullanıcıdan bir
*Currency alin. Kendi oluşturduğunuz ve SCARR ile ayni satir yapısına sahip olan database tablosunda
*kullanıcının girdiği Currency ile ayni Currency bilgisine sahip olan satırları kalıcı olarak silin. (Delete)

PARAMETERS : p_curr TYPE S_CURRCODE.
START-OF-SELECTION.
DELETE FROM zto_SAP04_SCARR WHERE currcode = p_curr.

IF sy-subrc IS INITIAL.
MESSAGE 'islem basarili' TYPE 'S'.
ELSE.
MESSAGE 'islem basarisiz' TYPE 'S'.
ENDIF.
