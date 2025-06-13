*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0081
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0081.

*TYPES : BEGIN OF gty_str,
*          e_mail  TYPE string,
*          name    TYPE c LENGTH 40,
*          surname TYPE c LENGTH 40,
*        END OF gty_str.

DATA : gs_str   TYPE ZTO_SAP04__STR_2,
       gt_table TYPE ZTO_SAP04__TT_2.

gs_str-e_mail    = 'Example@gmail.com' .
gs_str-name      = 'Mehmet' .
gs_str-surname = 'Ozturk' .

APPEND gs_str TO gt_table.
CLEAR : gs_str.
