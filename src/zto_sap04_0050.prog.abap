*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0050
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0050.
"Alternatif.

*DATA: BEGIN OF gs_structure,
*        id      TYPE n LENGTH 8,
*        name    TYPE c LENGTH 40,
*        surname TYPE c LENGTH 40,
*        job     TYPE c LENGTH 20,
*        salary  TYPE i,
*        curr    TYPE c LENGTH 3,
*        gsm     TYPE string,
*        e_mail  TYPE string,
*      END OF gs_structure.

"En saglikli yöntem.
TYPES: BEGIN OF gty_structure,
         id      TYPE n LENGTH 8,
         name    TYPE c LENGTH 40,
         surname TYPE c LENGTH 40,
         job     TYPE c LENGTH 20,
         salary  TYPE i,
         curr    TYPE c LENGTH 3,
         gsm     TYPE string,
         e_mail  TYPE string,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure.

gs_structure-id      = 12345.
gs_structure-name    = 'Mehmet'.
gs_structure-surname = 'Yilmaz'.
gs_structure-job     = 'Teacher'.
gs_structure-salary  = 3000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90123456789'.
gs_structure-e_mail  = 'mehmetyilmaz@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12346.
gs_structure-name    = 'Murat'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 3400.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.


gs_structure-id      = 12347.
gs_structure-name    = 'Meral'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 3500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12348.
gs_structure-name    = 'Mert'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 3800.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12349.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 4000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12350.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 5000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12351.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 5500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12352.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 6000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12353.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 3500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12354.
gs_structure-name    = 'Yakup'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Engineer'.
gs_structure-salary  = 7000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

*LOOP AT gt_table INTO gs_structure.
*
*  IF gs_structure-id < 12350.
*    CONTINUE.
*  ENDIF.
*
*  WRITE: sy-tabix,
*         gs_structure-id,
*         gs_structure-name.
*
*  SKIP.
*
*ENDLOOP.
*READ TABLE gt_table INTO gs_structure INDEX 8.
*
*IF sy-subrc IS INITIAL.
*  WRITE : gs_structure-id, gs_structure-name, gs_structure-salary .
*
*  ADD 500 TO gs_structure-salary.
*
*  MODIFY gt_table FROM gs_structure INDEX 8.
*
*
*  CLEAR : gs_structure.
*
*ENDIF.
*
*READ TABLE gt_table INTO gs_structure INDEX 8.
*
*IF sy-subrc IS INITIAL.
*  WRITE : / gs_structure-id, gs_structure-name, gs_structure-salary .
*
*ENDIF.

*LOOP AT  gt_table INTO gs_structure.
*  ADD 500 TO gs_structure-salary.
*
*  MODIFY gt_table FROM gs_structure INDEX sy-tabix.
*    WRITE : sy-tabix, gs_structure-id, gs_structure-name, gs_structure-salary .
*  SKIP.
*  CLEAR gs_structure.
*
*ENDLOOP.

LOOP AT  gt_table INTO gs_structure.
  ADD 500 TO gs_structure-salary.

  MODIFY gt_table FROM gs_structure TRANSPORTING salary WHERE id = gs_structure-id.
    WRITE : sy-tabix, gs_structure-id, gs_structure-name, gs_structure-salary .
  SKIP.
  CLEAR gs_structure.

ENDLOOP.

DELETE gt_table INDEX 8.
DELETE gt_table INDEX 6.
DELETE gt_table INDEX 4.
DELETE gt_table WHERE name = 'YAKUP'.

BREAK-POINT.
