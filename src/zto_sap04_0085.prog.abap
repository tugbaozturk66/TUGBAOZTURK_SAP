*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0085
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0085.

*Alıştırma – 5: Yeni bir rapor oluşturun ve SCARR isimli database tablosundan bütün satırları çekerek
*ekrana yazdırın.

DATA : gs_scarr TYPE scarr,
       gt_SCARR TYPE TABLE OF scarr.

START-OF-SELECTION.

SELECT * FROM scarr INTO TABLE gt_SCARR.

  LOOP AT gt_SCARR INTO gs_scarr.
    WRITE : gs_scarr-carrid,
            gs_scarr-carrname,
            gs_scarr-currcode,
            gs_scarr-url.
    SKIP.

  ENDLOOP.
