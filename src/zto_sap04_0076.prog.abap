*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0076
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0076.

DATA : gs_scarr TYPE scarr,
      gt_scarr TYPE TABLE OF scarr.

*SELECT * FROM scarr
*  INTO TABLE gt_scarr.
SELECT * FROM scarr
  INTO TABLE gt_scarr
  UP TO 3 ROWS.

LOOP AT gt_scarr INTO gs_scarr.
 WRITE : gs_scarr-carrid,
         gs_scarr-carrname,
         gs_scarr-currcode,
         gs_scarr-url.
 SKIP.
 CLEAR : gs_scarr.
ENDLOOP.
