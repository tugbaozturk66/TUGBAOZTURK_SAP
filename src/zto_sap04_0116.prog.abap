*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0116
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0116.

DATA: gv_carrname TYPE S_CARRNAME,
      gt_scarr TYPE TABLE OF scarr,
      gt_spfli TYPE TABLE OF spfli,
      gt_sflight TYPE TABLE OF sflight.

SELECT-OPTIONS: so_cname for gv_carrname.

START-OF-SELECTION.

SELECT * FROM scarr
  INTO TABLE gt_scarr
  WHERE carrname IN so_cname.

IF gt_scarr IS NOT INITIAL.

  SELECT * FROM spfli
    INTO TABLE gt_spfli
    FOR ALL ENTRIES IN gt_scarr
    WHERE carrid = gt_scarr-carrid.

  SELECT * FROM sflight
    INTO TABLE gt_sflight
    FOR ALL ENTRIES IN gt_scarr
    WHERE carrid = gt_scarr-carrid.

  BREAK-POINT.

ENDIF.
