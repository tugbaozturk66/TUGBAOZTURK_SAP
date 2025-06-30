FUNCTION ZTO_FM_SAP04_08.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_NO) TYPE  NUMC1
*"  EXPORTING
*"     REFERENCE(EV_DAY) TYPE  CHAR15
*"  EXCEPTIONS
*"      WRONG_NUMBER
*"----------------------------------------------------------------------

CASE iv_no.
  WHEN 1.
    Ev_day ='Pazartesi'.
  WHEN 2.
    Ev_day ='Sali'.
  WHEN 3.
    Ev_day ='Carsamba'.
  WHEN 4.
    Ev_day ='Persembe'.
  WHEN 5.
    Ev_day ='Cuma'.
  WHEN 6.
    Ev_day ='Cumartesi'.
  WHEN 7.
    Ev_day ='Pazar'.
  WHEN OTHERS.
    RAISE wrong_number.
ENDCASE.



ENDFUNCTION.
