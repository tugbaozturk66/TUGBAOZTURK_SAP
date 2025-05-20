*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0054
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0054.

TYPES: BEGIN OF gty_structure,
         index        TYPE n LENGTH 3,
         birinci_sayi TYPE n LENGTH 10,
         ikinci_sayi  TYPE n LENGTH 10,
         islem        TYPE c LENGTH 1,
         sonuc        TYPE n LENGTH 10,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure.

gs_structure-index        = '001'.
gs_structure-birinci_sayi = '8'.
gs_structure-ikinci_sayi  = '21'.
gs_structure-islem        = '+'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-index        = '002'.
gs_structure-birinci_sayi = '12'.
gs_structure-ikinci_sayi  = '5'.
gs_structure-islem        = '-'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-index        = '003'.
gs_structure-birinci_sayi = '54'.
gs_structure-ikinci_sayi  = '2'.
gs_structure-islem        = '*'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-index        = '004'.
gs_structure-birinci_sayi = '10'.
gs_structure-ikinci_sayi  = '10'.
gs_structure-islem        = '/'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-index        = '005'.
gs_structure-birinci_sayi = '6'.
gs_structure-ikinci_sayi  = '93'.
gs_structure-islem        = '+'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

*LOOP AT gt_table INTO gs_structure.
*
*  WRITE: gs_structure-index,gs_structure-birinci_sayi, gs_structure-ikinci_sayi, gs_structure-islem.
*
*  SKIP.
*
*ENDLOOP.

LOOP AT gt_table INTO gs_structure.
  IF gs_structure-islem = '+'.
gs_structure-sonuc = gs_structure-birinci_sayi + gs_structure-ikinci_sayi.
WRITE: gs_structure-index,gs_structure-birinci_sayi, gs_structure-ikinci_sayi, gs_structure-islem, gs_structure-sonuc.
  ENDIF.
    IF gs_structure-islem = '-'.
gs_structure-sonuc = gs_structure-birinci_sayi - gs_structure-ikinci_sayi.
WRITE: gs_structure-index,gs_structure-birinci_sayi, gs_structure-ikinci_sayi, gs_structure-islem, gs_structure-sonuc.
  ENDIF.
    IF gs_structure-islem = '*'.
gs_structure-sonuc = gs_structure-birinci_sayi * gs_structure-ikinci_sayi.
WRITE: gs_structure-index,gs_structure-birinci_sayi, gs_structure-ikinci_sayi, gs_structure-islem, gs_structure-sonuc.
  ENDIF.
    IF gs_structure-islem = '/'.
gs_structure-sonuc = gs_structure-birinci_sayi / gs_structure-ikinci_sayi.
WRITE: gs_structure-index,gs_structure-birinci_sayi, gs_structure-ikinci_sayi, gs_structure-islem, gs_structure-sonuc.
  ENDIF.
  SKIP.

ENDLOOP.
