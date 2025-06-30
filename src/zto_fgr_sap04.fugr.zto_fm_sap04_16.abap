FUNCTION zto_fm_sap04_16.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IS_STRAVELAG) TYPE  ZTO_STRAVELAG
*"  EXPORTING
*"     REFERENCE(EV_ANSWER) TYPE  CHAR1
*"----------------------------------------------------------------------


  DATA: ls_stravelag TYPE ZTO_STRAVELAG.
ls_stravelag = is_stravelag.
  p_url_2 = ls_stravelag-url.
CALL SELECTION-SCREEN 2027 STARTING AT 5 5 ENDING AT 105 7 .
  IF p_url_2 IS NOT INITIAL.
    IF sy-subrc IS INITIAL.
      ls_STRAVELAG-eski_url = ls_STRAVELAG-url .
      ls_stravelag-url = p_url_2 .
      MODIFY zto_stravelag FROM ls_stravelag.
    ENDIF.


  ENDIF.

ENDFUNCTION.
