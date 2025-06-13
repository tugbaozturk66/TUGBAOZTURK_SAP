*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0067
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0067.

PARAMETERS: p_1 TYPE matnr.

DATA: gs_str   TYPE mara,
      gt_table TYPE TABLE OF mara.

START-OF-SELECTION.

  SELECT * FROM mara
  INTO TABLE gt_table UP TO 100 ROWS.

*LOOP AT gt_table INTO gs_str.
*
*  WRITE: gs_str-matnr.
*  SKIP.
*  ULINE.
*
*  CLEAR: gs_str.
*
*ENDLOOP.

  READ TABLE gt_table INTO gs_str WITH KEY matnr = p_1 .

  IF sy-subrc IS INITIAL.
    WRITE : p_1, 'kodlu urun var'.
  ELSE.
    WRITE : p_1 , 'kodlu urun yok'.
  ENDIF.
