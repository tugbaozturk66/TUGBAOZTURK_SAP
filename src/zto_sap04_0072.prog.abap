*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0072
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0072.

*scarr tablosunun dahili tablosunu tanımlayın, select ile
*currcode carrname kolonlarını  bu tabloya atın ve debugda gösterim sağlayın

DATA : gs_scarr TYPE scarr,
       gt_table TYPE TABLE OF scarr.
SELECT currcode carrname FROM scarr
  INTO CORRESPONDING FIELDS OF TABLE gt_table.
BREAK-POINT.
