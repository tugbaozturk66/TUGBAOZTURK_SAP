*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0126_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0126_1.

PARAMETERS : p_carrid TYPE s_carr_id,
             p_connid TYPE s_conn_id,
             p_time_D TYPE sy-uzeit,
             p_time_A TYPE sy-uzeit.
DATA : gs_spfli TYPE spfli,
      gv_fltime TYPE S_FLTIME,
      gv_fltime_changed TYPE xfeld.

START-OF-SELECTION.
SELECT SINGLE * FROM  spfli into gs_spfli WHERE carrid = p_carrid AND connid = p_connid.

CALL FUNCTION 'ZTO_FM_SAP04_04'
  EXPORTING
    iv_dep_time             = p_time_D
    iv_arr_time             = p_time_A
 IMPORTING
   EV_FLTIME               = gv_fltime
   EV_FLTIME_CHANGED       = gv_fltime_changed
  CHANGING
    cs_spfli                = gs_spfli .

BREAK-POINT.

IF gv_fltime_changed = abap_true.
MODIFY spfli FROM gs_spfli.
ENDIF.
