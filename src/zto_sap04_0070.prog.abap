*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0070
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0070.

*Sbook tablosundan 200 veri çekelim. Bookid kolonu 20 ile 30 arası olanların
*carrid connid fldate bookid ve customid kolonlarını görüntleyelim

DATA : gs_str   TYPE sbook,
       gt_table TYPE TABLE OF sbook.

SELECT  * FROM sbook
  INTO TABLE gt_table
  UP TO 200 ROWS.

LOOP AT gt_table INTO gs_str.
  IF gs_str-bookid >= 20 AND gs_str-bookid =< 30.
    WRITE: gs_str-carrid,
           gs_str-connid,
           gs_str-fldate,
           gs_str-bookid,
           gs_str-customid.
    SKIP.
  ENDIF.
ENDLOOP.
