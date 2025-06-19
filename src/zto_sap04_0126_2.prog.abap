*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0126_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0126_2.

*PARAMETERS : p_num_1 TYPE i ,
*             p_num_2 TYPE i .

DATA :gv_number_1 TYPE i VALUE 10,
      gv_number_2 TYPE i,
      gv_result   TYPE i.

START-OF-SELECTION.


  CALL FUNCTION 'ZTO_FM_SAP04_05'
    EXPORTING
      iv_number_1   = gv_number_1
      iv_number_2   = gv_number_2
    IMPORTING
      ev_result     = gv_result
    EXCEPTIONS
      zero_division = 1
      OTHERS        = 2.
  IF sy-subrc <> 0.

  ENDIF.

*  BREAK-POINT.
