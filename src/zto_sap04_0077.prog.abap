*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0077
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0077.

DATA : gs_scarr TYPE scarr,
      gt_scarr TYPE TABLE OF scarr.

*SELECT * FROM scarr
*  INTO TABLE gt_scarr.
*SELECT * FROM scarr
*  INTO TABLE gt_scarr
*  UP TO 3 ROWS.

*SELECT SINGLE * FROM scarr  " kosul vermezsem ilk satiri ceker sadece
*  INTO gs_scarr .

SELECT SINGLE * FROM scarr
  INTO gs_scarr
  WHERE carrid = 'LH'.

  "sonra loop ile yazdiramadik dogal olarak bug ekraninda gördük sonra

*LOOP AT gt_scarr INTO gs_scarr.
* WRITE : gs_scarr-carrid,
*         gs_scarr-carrname,
*         gs_scarr-currcode,
*         gs_scarr-url.
* SKIP.
* CLEAR : gs_scarr.
*ENDLOOP.
