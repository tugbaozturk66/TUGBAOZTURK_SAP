*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0141_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0141_01.

PARAMETERS : p_bookid TYPE s_book_id.

DATA : gs_sbook TYPE sbook.


CALL FUNCTION 'ZTO_FM_SAP04_07'
  EXPORTING
    iv_bookid       = p_bookid
 IMPORTING
   ES_SBOOK        = gs_sbook
   .
   BREAK-POINT.


                                            .
