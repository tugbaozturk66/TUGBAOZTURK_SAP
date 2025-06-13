FUNCTION ZTO_FM_SAP04_001.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_NUMBER_1) TYPE  INT4
*"     REFERENCE(IV_NUMBER_2) TYPE  INT4
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  INT4
*"----------------------------------------------------------------------

ev_result = iv_number_1 + iv_number_2.




ENDFUNCTION.
