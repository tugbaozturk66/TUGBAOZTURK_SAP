*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0121
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0121.

DATA : gv_1 TYPE i VALUE 5,
       gv_2 TYPE i VALUE 10.
START-OF-SELECTION.

PERFORM sum.
PERFORM sub.


FORM sum .
DATA : lv_result TYPE i.
lv_result = gv_1 + gv_2 .
PERFORM display USING lv_result.
ENDFORM.


FORM display  USING    p_lv_result.
WRITE : p_lv_result.
ENDFORM.

FORM sub .
DATA : lv_result TYPE i.
lv_result = gv_1 - gv_2 .
PERFORM display USING lv_result.
ENDFORM.
