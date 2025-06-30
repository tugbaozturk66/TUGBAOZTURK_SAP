*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0121_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0121_01.

*include ZTO_SAP04_0121_01_top.
*
*INCLUDE zto_sap04_0121_01_top. "Selection screen tanimlamalari ve diger bütün degisken tanimlamalari.
*INCLUDE zmc_sap04_121_f01.
*
*
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
