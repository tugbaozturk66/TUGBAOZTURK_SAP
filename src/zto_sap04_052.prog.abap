*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_052
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_052.
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
gs_structure-job     = 'Doctor'.
gs_structure-salary  = 3400.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.


gs_structure-id      = 12347.
gs_structure-name    = 'Meral'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Developer'.
gs_structure-salary  = 3500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12348.
gs_structure-name    = 'Mert'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Nurse'.
gs_structure-salary  = 3800.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12349.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Artist'.
gs_structure-salary  = 4000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12350.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Consultant'.
gs_structure-salary  = 5000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12351.
gs_structure-name    = 'Merve'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Taxi Driver'.
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
gs_structure-name    = 'Yasemin'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Autor'.
gs_structure-salary  = 3500.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id      = 12354.
gs_structure-name    = 'Yakup'.
gs_structure-surname = 'Öztürk'.
gs_structure-job     = 'Repairman'.
gs_structure-salary  = 7000.
gs_structure-curr    = 'EUR'.
gs_structure-gsm     = '+90126543789'.
gs_structure-e_mail  = 'muratozturk@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

*SORT gt_table BY id. " ASCENDING-Kücükten Büyüge
SORT gt_table BY id DESCENDING.

LOOP AT gt_table INTO gs_structure.
  WRITE: gs_structure-id, gs_structure-name, gs_structure-job, gs_structure-salary.

  SKIP.
ENDLOOP.

ULINE.

SORT gt_table BY name job ASCENDING.

LOOP AT gt_table INTO gs_structure.
  WRITE: gs_structure-id, gs_structure-name, gs_structure-job, gs_structure-salary.

  SKIP.
ENDLOOP.







*BREAK-POINT.
