*&---------------------------------------------------------------------*
*&  Include           ZTO_SAP04_0121_1_F01
*&---------------------------------------------------------------------*

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
