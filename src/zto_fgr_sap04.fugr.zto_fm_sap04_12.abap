FUNCTION ZTO_FM_SAP04_12.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_SYMBOL) TYPE  CHAR1
*"     REFERENCE(IV_NUMBER1) TYPE  INT4
*"     REFERENCE(IV_NUMBER2) TYPE  INT4
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  INT4
*"  EXCEPTIONS
*"      SIFIRA_BOLME_ISLEMI
*"      BOS_ISLEM_SEMBOLU
*"      YANLIS_ISLEM_SEMBOLU
*"----------------------------------------------------------------------
IF iv_symbol = ' ' AND iv_number2 = 0 .
RAISE sifira_bolme_islemi.
ENDIF.

IF iv_symbol IS INITIAL.
RAISE bos_islem_sembolu.
ENDIF.

IF iv_symbol = '+'.
  ev_result = iv_number1 + iv_number2.
ELSEIF iv_symbol = '-'.
  ev_result = iv_number1 - iv_number2.
ELSEIF iv_symbol = '*'.
  ev_result = iv_number1 * iv_number2.
ELSEIF iv_symbol = '/'.
  ev_result = iv_number1 / iv_number2.
ELSE.
  RAISE yanlis_islem_sembolu .

ENDIF.




ENDFUNCTION.
