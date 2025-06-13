*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0114
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0114.

DATA: gs_scarr TYPE scarr,
      gt_scarr TYPE TABLE OF scarr,
      gv_carrid TYPE s_carr_id.

*SELECT-OPTIONS: so_carid FOR gs_scarr-carrid.
SELECT-OPTIONS: so_carid FOR gv_carrid.
*SELECT-OPTIONS: so_carid FOR scarr-carrid.

START-OF-SELECTION.

  SELECT * FROM scarr
    INTO TABLE gt_scarr
    WHERE carrid IN so_carid.

  LOOP AT gt_scarr INTO gs_scarr.
    WRITE: gs_scarr-carrid,
           gs_scarr-carrname.

    SKIP.
    CLEAR: gs_scarr.
  ENDLOOP.
