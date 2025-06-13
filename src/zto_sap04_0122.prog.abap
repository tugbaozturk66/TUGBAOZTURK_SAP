*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0122
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0122.

DATA: gs_sflight TYPE sflight,
      gt_sflight TYPE TABLE OF sflight,
      gv_carrid TYPE s_carr_id.


SELECT-OPTIONS: so_carid FOR gv_carrid.


START-OF-SELECTION.

  SELECT * FROM sflight
    INTO TABLE gt_sflight
    WHERE carrid IN so_carid.

  LOOP AT gt_sflight INTO gs_sflight.
    WRITE: gs_sflight-carrid.

    SKIP.
    CLEAR: gs_sflight.
  ENDLOOP.
