*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0044
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0044.

TYPES : BEGIN OF gty_structure,
          id      TYPE n LENGTH 8,
          name    TYPE c LENGTH 40,
          surname TYPE c LENGTH 40,
          job     TYPE c LENGTH 20,
          salary  TYPE i,
          curr    TYPE c LENGTH 3,
          gsm     TYPE string,
          e_mail  TYPE string,
        END OF gty_structure.

"Alternatif

*DATA:  BEGIN OF gs_structure,
*          id TYPE n LENGTH 8,
*          name    TYPE c LENGTH 40,
*          surname TYPE c LENGTH 40,
*          job TYPE c LENGTH 20,
*          salary  TYPE i,
*          curr    TYPE c LENGTH 3,
*          gsm     TYPE string,
*          e_mail  TYPE string,
*        END OF gs_structure.


DATA : gs_structure TYPE gty_structure,
       gt_table     TYPE TABLE OF gty_structure.

BREAK-POINT.

gs_structure-id       = 12345.
gs_structure-name     = 'Mehmet'.
gs_structure-surname  = 'Yilmaz'.
gs_structure-job      = 'Teacher'.
gs_structure-salary   = 3000.
gs_structure-curr     = 'EUR'.
gs_structure-gsm      = '+90123456789'.
gs_structure-e_mail   = 'mehmetyilmaz@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR : gs_structure.

gs_structure-id       = 12346.
gs_structure-name     = 'ahmet'.
gs_structure-surname  = 'Yilan'.
gs_structure-job      = 'Engines'.
gs_structure-salary   = 4000.
gs_structure-curr     = 'EUR'.
gs_structure-gsm      = '+901234544789'.
gs_structure-e_mail   = 'mehmetyilan@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR : gs_structure.


BREAK-POINT.
