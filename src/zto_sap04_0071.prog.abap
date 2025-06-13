*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0071
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0071.

*scarr tablosunda ki verileri sadece select kullanarak görüntü alalım.
*tablo tanımlamayalım. Sadece structer kullanalım

DATA : gs_scarr TYPE scarr.

SELECT  * FROM scarr INTO gs_scarr.

     WRITE: gs_scarr-carrid,
     gs_scarr-carrname,
     gs_scarr-currcode.
    SKIP.

  ENDSELECT.
*
*LOOP AT gt_table INTO gs_str.
*  IF gs_str-bookid >= 20 AND gs_str-bookid =< 30.
*    WRITE: gs_str-carrid,
*           gs_str-connid,
*           gs_str-fldate,
*           gs_str-bookid,
*           gs_str-customid.
*    SKIP.
*  ENDIF.
*ENDLOOP.
*
*SELECT gt_table INTO gs_str UP TO 200 ROWS .
*ENDSELECT
