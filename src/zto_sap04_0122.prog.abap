*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0122
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0122.

TYPES : BEGIN OF gty__str_range,
         sign   TYPE c LENGTH 1,
         option TYPE c LENGTH 2,
         low    TYPE S_CURRCODE,
         high   TYPE S_CURRCODE,
        END OF gty__str_range.


DATA: gs_selop TYPE gty__str_range,
      gt_selop TYPE RANGE OF scarr-currcode,
      gt_scarr TYPE TABLE OF scarr,
      gt_spfli TYPE TABLE OF spfli.

START-OF-SELECTION.

gs_selop-sign = 'I'.
gs_selop-option = 'EQ'.
gs_selop-low =  'EUR'.
APPEND gs_selop TO  gt_selop.

  SELECT * FROM scarr
    INTO TABLE gt_scarr
    WHERE currcode IN gt_selop.

  IF gt_scarr IS NOT INITIAL.
    SELECT * FROM spfli
    INTO TABLE gt_spfli
    FOR ALL ENTRIES IN gt_scarr
    WHERE carrid = gt_scarr-carrid.
  ENDIF.


 cl_demo_output=>write( |=================EUR ICEREN SPFLI TABLOSU====================| ).
 cl_demo_output=>display( gt_spfli ).

*  LOOP AT gt_sflight INTO gs_sflight.
*    WRITE: gs_sflight-carrid.
*
*    SKIP.
*    CLEAR: gs_sflight.
*  ENDLOOP.
