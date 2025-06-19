*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0127
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0127.

*Alıştırma – 1: Yeni bir rapor oluşturun ve kullanıcıdan Select-Options yardımıyla 1 adet “CARRID” alın.
*Alınan veriyi kullanarak SCARR, SPFLI ve SFLIGHT tablolarından tüm satırları okuyun ve ekrana yazdırın.

*DATA: gv_carrid  TYPE s_carr_id,
*      gt_scarr   TYPE TABLE OF scarr,
*      gt_spfli   TYPE TABLE OF spfli,
*      gt_sflight TYPE TABLE OF sflight.
*
*SELECT-OPTIONS: so_car FOR gv_carrid.
*
*
*
*START-OF-SELECTION.
*
*  SELECT * FROM scarr
*    INTO TABLE gt_scarr
*    WHERE carrid IN so_car.
*
*  SELECT * FROM spfli
*    INTO TABLE gt_spfli
*    WHERE carrid IN so_car.
*
*  SELECT * FROM sflight
*    INTO TABLE gt_sflight
*    WHERE carrid IN so_car.
*
*  BREAK-POINT.

PARAMETERS : p_carrid TYPE s_carr_id.
START-OF-SELECTION.

DATA: gs_scarr TYPE scarr,
      gt_scarr TYPE TABLE OF scarr,
      gs_spfli TYPE spfli,
      gt_spfli TYPE TABLE OF spfli,
      gs_sflight TYPE sflight,
      gt_sflight TYPE TABLE OF sflight.

SELECT * FROM scarr INTO TABLE gt_scarr WHERE carrid = p_carrid.
LOOP AT gt_scarr INTO gs_scarr.
WRITE : gs_scarr-carrid ,
        gs_scarr-carrname ,
        gs_scarr-currcode ,
        gs_scarr-url .
ENDLOOP.

SELECT * FROM spfli INTO TABLE gt_spfli WHERE carrid = p_carrid.
LOOP AT gt_spfli INTO gs_spfli.
WRITE : gs_spfli-carrid ,
        gs_spfli-connid ,
        gs_spfli-distance ,
        gs_spfli-fltime .
ENDLOOP.

SELECT * FROM sflight INTO TABLE gt_sflight WHERE carrid = p_carrid.
LOOP AT gt_sflight INTO gs_sflight.
WRITE : gs_sflight-carrid ,
        gs_sflight-fldate ,
        gs_sflight-currency ,
        gs_sflight-connid .
ENDLOOP.
