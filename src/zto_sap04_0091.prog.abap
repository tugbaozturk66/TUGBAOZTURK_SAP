*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0091
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0091.

*Alıştırma – 11: SE11 işlem kodu ile bir SCARR tablosunu ile ayni satir yapısına sahip yeni bir database
*tablosu tanımlayın. (SCARR tablosundaki data elementler kullanılabilir) yeni bir program oluşturun.
*Program içerisinde öncelikle SCARR tablosundan bütün satırları okuyun. Okunan satırların tamamına
*yeni oluşturduğunuz tablonun içine kaydedin. (Insert)

DATA : gs_scarr TYPE scarr,
       gt_scarr TYPE TABLE OF scarr.

START-OF-SELECTION.

SELECT * FROM scarr INTO TABLE gt_scarr.

LOOP AT gt_scarr INTO gs_scarr.
INSERT ZTO_SAP04_SCARR FROM gs_scarr .
ENDLOOP.
