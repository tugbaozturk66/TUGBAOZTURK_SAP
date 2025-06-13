*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0093
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0093.

*Alıştırma – 13: SE11 işlem kodu ile bir SFLIGHT tablosunu ile ayni satir yapısına sahip yeni bir database
*tablosu tanımlayın. (SFLIGHT tablosundaki data elementler kullanılabilir) yeni bir program oluşturun.
*Program içerisinde öncelikle SFLIGHT tablosundan bütün satırları okuyun. Okunan satırların tamamına
*yeni oluşturduğunuz tablonun içine kaydedin. (Insert)

DATA : gs_sflight TYPE sflight,
       gt_sflight TYPE TABLE OF sflight.

START-OF-SELECTION.

SELECT * FROM sflight INTO TABLE gt_sflight.

LOOP AT gt_sflight INTO gs_sflight.
INSERT ZTO_SAP04sflight FROM gs_sflight .
ENDLOOP.
