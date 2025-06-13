*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0125
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0125.

PARAMETERS: p_1 TYPE i,
            p_2 TYPE i.

DATA: gv_result TYPE i.

START-OF-SELECTION.

gv_result = 20.

CLEAR: gv_result.

  CALL FUNCTION 'ZTO_FM_SAP04_02'
    EXPORTING
      iv_number_1 = p_1
      iv_number_2 = p_2
    IMPORTING
      ev_result   = gv_result.


  WRITE: gv_result.
