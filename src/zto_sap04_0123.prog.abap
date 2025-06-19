*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0123
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0123.


TYPES: BEGIN OF gty_str_carrid,
         sign   TYPE c LENGTH 1,
         option TYPE c LENGTH 2,
         low    TYPE s_carr_id,
         high   TYPE s_carr_id,
       END OF gty_str_carrid.

DATA: gs_selopt_carrid TYPE gty_str_carrid,
      gt_selopt_carrid TYPE RANGE OF s_carr_id,
      gt_sflight       TYPE TABLE OF sflight.

START-OF-SELECTION.



  gs_selopt_carrid-sign   = 'I'.      "AA-DL arasındaki veriyi çek
  gs_selopt_carrid-option = 'BT'.
  gs_selopt_carrid-low    = 'AA'.
  gs_selopt_carrid-high   = 'DL'.
  APPEND gs_selopt_carrid TO gt_selopt_carrid.
  CLEAR gs_selopt_carrid.

  SELECT * FROM sflight INTO TABLE gt_sflight WHERE carrid IN gt_selopt_carrid.

 cl_demo_output=>write( |=================sflight tablosu====================| ).
 cl_demo_output=>display( gt_sflight ).

  BREAK-POINT.
