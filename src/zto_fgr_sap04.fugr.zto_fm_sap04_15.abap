FUNCTION ZTO_FM_SAP04_15.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  EXPORTING
*"     REFERENCE(EV_URL) TYPE  S_URL
*"     REFERENCE(EV_ANS) TYPE  CHAR1
*"----------------------------------------------------------------------
call SELECTION-SCREEN 2026 STARTING AT 5 5 ENDING AT 105 7.

ev_url = p_url.
ev_ans = sy-subrc.




ENDFUNCTION.
