*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0087
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0087.

*Alıştırma – 7: Yeni bir rapor oluşturun ve SFLIGHT isimli database tablosundan bütün satırları çekerek
*ekrana yazdırın.

DATA : gs_sflight TYPE sflight,
       gt_sflight TYPE TABLE OF sflight.

START-OF-SELECTION.

SELECT * FROM sflight INTO TABLE gt_sflight.

LOOP AT gt_sflight INTO gs_sflight FROM 1 TO 10.
  WRITE : gs_sflight-carrid,
          gs_sflight-connid,
          gs_sflight-fldate.

  SKIP.
  CLEAR : gs_sflight.


ENDLOOP.
