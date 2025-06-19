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

*PERFORM sonuc .
*
*FORM sonuc .
*  DATA : lv_sonuc TYPE i.
*  lv_sonuc = p_1 + p_2 .
**  WRITE : gv_sonuc.
*
*  ADD 10 To lv_sonuc .
*  ADD 10 To lv_sonuc .
*  WRITE : lv_sonuc .
*
*ENDFORM.
