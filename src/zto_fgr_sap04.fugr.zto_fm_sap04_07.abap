FUNCTION ZTO_FM_SAP04_07.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_BOOKID) TYPE  S_BOOK_ID
*"  EXPORTING
*"     REFERENCE(ES_SBOOK) TYPE  SBOOK
*"----------------------------------------------------------------------
SELECT SINGLE * FROM sbook INTO es_sbook where bookid = iv_bookid.
IF sy-subrc = 0.
  WRITE :'girdiginiz book id nin ucus tarihi:  ', es_sbook-fldate.
ELSE.
   WRITE :'girdiginiz book id bulunamadi '.

ENDIF.






ENDFUNCTION.
