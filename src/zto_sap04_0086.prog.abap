*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0086
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0086.

*Alıştırma – 6: Yeni bir rapor oluşturun ve SPFLI isimli database tablosundan bütün satırları çekerek
*ekrana yazdırın.

DATA : gs_spfli TYPE SPFLI,
       gt_spfli TYPE TABLE OF SPFLI.

START-OF-SELECTION.

SELECT * FROM SPFLI INTO TABLE gt_spfli.

LOOP AT gt_spfli INTO gs_spfli.
  WRITE : gs_spfli-carrid,
          gs_spfli-airpfrom,
          gs_spfli-airpto.

  CLEAR : gs_spfli.
  SKIP.

ENDLOOP.
