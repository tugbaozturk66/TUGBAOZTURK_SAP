*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0068
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0068.

*scarr tablosunun dahili
*tablosunu oluşturup dataların hepsini çekin .
*Carrid kolonu AA olanın Currcode kolonu ABC olsun. Read Table kullanın

*TYPES: BEGIN OF gty_str,
*         carrid TYPE c LENGTH 3,
*         carrname    TYPE c LENGTH 255,
*         currcode  TYPE c LENGTH 5,
*       END OF gty_str.

DATA: gs_scarr TYPE Scarr,
      gt_table TYPE TABLE OF scarr.

SELECT  * FROM scarr
  INTO TABLE gt_table.


READ TABLE gt_table INTO gs_scarr WITH KEY carrid = 'AA'.
IF sy-subrc is INITIAL.
  gs_scarr-currcode = 'ABC'.
  MODIFY gt_table FROM gs_scarr INDEX sy-tabix.
CLEAR gs_scarr.
ENDIF.

BREAK-POINT.
