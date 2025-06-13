*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0115_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0115_01.

PARAMETERS : p_carrid TYPE s_carr_id,
             p_inc_1  RADIOBUTTON GROUP abc,
             p_exc_1  RADIOBUTTON GROUP abc,
*             p_connid TYPE s_conn_id,
             p_connid TYPE ZTO_SAP04_DE_NEW,
             p_inc_2  RADIOBUTTON GROUP def,
             p_exc_2  RADIOBUTTON GROUP def.

TYPES : BEGIN OF gty_str_carrid,
          sign   TYPE c LENGTH 1,
          option TYPE c LENGTH 2,
          low    TYPE s_carr_id,
          high   TYPE s_carr_id,
        END OF gty_str_carrid.

TYPES : BEGIN OF gty_str_connid,
          sign   TYPE c LENGTH 1,
          option TYPE c LENGTH 2,
          low    TYPE s_conn_id,
          high   TYPE s_conn_id,
        END OF gty_str_connid.

DATA :gs_selopt_carrid TYPE gty_str_carrid,
      gs_selopt_connid TYPE gty_str_connid,
*      gt_selopt_carrid TYPE TABLE OF gty_str_carrid,
      gt_selopt_carrid TYPE RANGE OF s_carr_id,
*      gt_selopt_connid TYPE TABLE OF gty_str_connid,
      gt_selopt_connid TYPE RANGE OF s_conn_id,
      gs_sflight TYPE sflight,
      gt_sflight TYPE TABLE OF sflight.
START-OF-SELECTION.

IF p_carrid Is NOT INITIAL.
  IF p_inc_1 = abap_true.
     gs_selopt_carrid-sign = 'I'.
  ELSE.
    gs_selopt_carrid-sign = 'E'.
  ENDIF.
  gs_selopt_carrid-option = 'EQ'.
  gs_selopt_carrid-low = p_carrid.
  APPEND gs_selopt_carrid TO gt_selopt_carrid.
  CLEAR : gs_selopt_carrid.

ENDIF.

IF p_connid Is NOT INITIAL.
  IF p_inc_2 = abap_true.
     gs_selopt_connid-sign = 'I'.
  ELSE.
    gs_selopt_connid-sign = 'E'.
  ENDIF.
  gs_selopt_connid-option = 'EQ'.
  gs_selopt_connid-low = p_connid.
  APPEND gs_selopt_connid TO gt_selopt_connid.
  CLEAR : gs_selopt_connid.

ENDIF.

SELECT * FROM sflight INTO TABLE gt_sflight WHERE carrid IN gt_selopt_carrid AND connid IN gt_selopt_connid.

LOOP AT gt_sflight INTO gs_sflight.
  WRITE : gs_sflight-carrid,
          gs_sflight-connid,
          gs_sflight-fldate.
  SKIP.

ENDLOOP.
