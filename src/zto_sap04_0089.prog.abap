*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0089
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0089.

*Alıştırma – 9: Yeni bir rapor oluşturun. Rapor içerisinde 1 adet parametre tanımlayın. Kullanıcıdan bir
*uçuş şirketi bilgisi (carrid) alin. Gelen bilgi doğrultusunda rapor içerisinde SPFLI tablosunda uçuş şirketi
*kullanıcının girdiği ile ayni olan satırları çekin. Okunan satir sayısını kullanarak kullanıcıya information
*mesajı verin.

PARAMETERS : p_carrid TYPE S_CARR_ID.

DATA : gs_spfli TYPE spfli ,
       gt_spfli TYPE TABLE OF spfli,
       gv_satir TYPE n LENGTH 3,
       gv_message TYPE string.

START-OF-SELECTION.

SELECT * FROM spfli INTO TABLE gt_spfli WHERE carrid = p_carrid.

DESCRIBE TABLE gt_spfli LINES gv_satir.

*gv_satir = lines(gv_spfli).

MESSAGE :  gv_satir TYPE 'I' DISPLAY LIKE 'E'.
