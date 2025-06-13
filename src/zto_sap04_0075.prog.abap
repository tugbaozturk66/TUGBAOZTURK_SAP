*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0075
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0075.

DATA : gv_str   TYPE zto_sap04_db_02,
       gt_table TYPE TABLE OF zto_sap04_db_02.

SELECT * FROM ZTO_SAP04_DB_02 " SELECT * FROM ZTO_SAP04_DB_02 INTO TABLE gt_table . bu kod b utun tabloyu getiriyor where ile kosul veriyoruz.
  INTO TABLE gt_table
  WHERE id > 10002.
*BREAK-POINT.

LOOP AT gt_table INTO gv_str.
  WRITE :  gv_str-id ,
  gv_str-name ,
  gv_str-surname ,
  gv_str-job ,
  gv_str-salary ,
  gv_str-curr ,
  gv_str-gsm ,
  gv_str-e_mail .

  SKIP.
  ULINE.
  CLEAR : gv_str.


ENDLOOP.
