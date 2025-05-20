*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0053
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0053.
*matnr n 7
*werks  n 4
*lgort  n 4
*menge  c1

TYPES: BEGIN OF gty_structure,
         matnr TYPE n LENGTH 10,
         werks TYPE n LENGTH 4,
         lgort TYPE n LENGTH 4,
         menge TYPE c LENGTH 2,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure.



gs_structure-matnr    = '1000000000'.
gs_structure-werks    = '1001'.
gs_structure-lgort    = '1001'.
gs_structure-menge    = '3'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-matnr    = '1000000001'.
gs_structure-werks    = '1001'.
gs_structure-lgort    = '1002'.
gs_structure-menge    = '10'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-matnr    = '1000000002'.
gs_structure-werks    = '1001'.
gs_structure-lgort    = '1003'.
gs_structure-menge    = '8'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.
gs_structure-matnr    = '1000000003'.
gs_structure-werks    = '1001'.
gs_structure-lgort    = '1004'.
gs_structure-menge    = '1'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.
gs_structure-matnr    = '1000000004'.
gs_structure-werks    = '1001'.
gs_structure-lgort    = '1001'.
gs_structure-menge    = '12'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

*LOOP AT gt_table INTO gs_structure.
*
*  WRITE: gs_structure-matnr,gs_structure-werks, gs_structure-lgort, gs_structure-menge.
*
*
*  SKIP.
*
*ENDLOOP.

*dahili tabloda loop yapılarak lgort 1003 den büyük kaç tane değer olduğu
*tespit edilip write ile çıktı alınacak. Ayrıca debugda gösterim sağlanacak.
DATA : gv_cnt TYPE i,
      gv_string TYPE string.

*LOOP AT gt_table INTO gs_structure.
*IF gs_structure-lgort > 1001.
*   WRITE: gs_structure-matnr,gs_structure-werks, gs_structure-lgort, gs_structure-menge.
*   SKIP.
*    ADD 1 TO gv_cnt.
*  ENDIF.
*ENDLOOP.
**gv_string = gv_cnt.
*WRITE : / '1003 den buyuk Igort sayisi:', gv_cnt.
