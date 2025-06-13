*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0117
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0117.

PARAMETERS: p_1 TYPE i,
            p_2 TYPE i.

*DATA: gv_result TYPE i.

START-OF-SELECTION.

  PERFORM sum.

*  WRITE: gv_result.

*  WRITE: lv_result.

FORM sum.

  DATA: lv_result TYPE i.

  lv_result = p_1 + p_2.

  ADD 10 TO lv_result.

  ADD 10 TO lv_result.

  WRITE: lv_result.

ENDFORM.
