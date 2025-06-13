*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0078
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0078.

TYPES: BEGIN OF gty_str,
         sirket TYPE c LENGTH 3,
         web    TYPE c LENGTH 255,
         hucre  TYPE c LENGTH 3,
       END OF gty_str.

DATA: gs_scarr TYPE gty_str,
      gt_table TYPE TABLE OF gty_str.

SELECT carrid url FROM scarr
  INTO TABLE gt_table.

LOOP AT gt_table INTO gs_scarr.

  WRITE: gs_scarr-sirket,
         gs_scarr-web.

  SKIP.
  CLEAR: gs_scarr.
ENDLOOP.
