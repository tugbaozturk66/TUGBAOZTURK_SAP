*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0092
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0092.

*Alıştırma – 12: SE11 işlem kodu ile bir SPFLI tablosunu ile ayni satir yapısına sahip yeni bir database
*tablosu tanımlayın. (SPFLI tablosundaki data elementler kullanılabilir) yeni bir program oluşturun.
*Program içerisinde öncelikle SPFLI tablosundan bütün satırları okuyun. Okunan satırların tamamına
*yeni oluşturduğunuz tablonun içine kaydedin. (Insert)

DATA : gs_spfli TYPE spfli,
       gt_spfli TYPE TABLE OF spfli.

START-OF-SELECTION.

SELECT * FROM spfli INTO TABLE gt_spfli.

LOOP AT gt_spfli INTO gs_spfli.
INSERT ZTO_SAP04_spfli FROM gs_spfli .
ENDLOOP.
