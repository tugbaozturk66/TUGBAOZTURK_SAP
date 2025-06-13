*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0079
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0079.

TYPES: BEGIN OF gty_str,
         adres  TYPE c LENGTH 30,
         carrid TYPE c LENGTH 3,
         tel    TYPE c LENGTH 12,
         url    TYPE c LENGTH 255,
       END OF gty_str.

DATA: gs_str TYPE gty_str,
      gt_table TYPE TABLE OF gty_str.

SELECT carrid url FROM scarr
  INTO CORRESPONDING FIELDS OF TABLE gt_table.

LOOP AT gt_table INTO gs_str.

  WRITE: gs_str-carrid,
         gs_str-url.

  SKIP.
  CLEAR: gs_str.
ENDLOOP.

"==============================eger cekecegimiz tablo tipinde internal tablo olusturp icine belli kolonlari atmak istersek=================

*DATA: gs_str TYPE scarr,
*      gt_table TYPE TABLE OF scarr.
*
*SELECT carrid url FROM scarr
*  INTO CORRESPONDING FIELDS OF TABLE gt_table.
*
*LOOP AT gt_table INTO gs_str.
*
*  WRITE: gs_str-carrid,
*         gs_str-url.
*
*  SKIP.
*  CLEAR: gs_str.
*ENDLOOP.
