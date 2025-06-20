FUNCTION ZTO_FM_SAP04_07.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_BOOKID) TYPE  S_BOOK_ID
*"----------------------------------------------------------------------
  DATA : ls_sbook TYPE sbook,
         lt_sbook TYPE TABLE OF sbook.

  SELECT * FROM sbook INTO TABLE lt_sbook.
  READ TABLE lt_sbook INTO ls_sbook WITH KEY bookid = iv_bookid.
     IF sy-subrc = 0.
  WRITE :'girdiginiz book id nin ucus tarihi:  ', ls_sbook-fldate.
ELSE.
   WRITE :'girdiginiz book id bulunamadi '.

ENDIF.

*  LOOP AT lt_sbook INTO ls_sbook WHERE bookid = iv_bookid.
*    IF sy-subrc = 0.
*  WRITE :'girdiginiz book id nin ucus tarihi:  ', ls_sbook-fldate.
*ELSE.
*   WRITE :'girdiginiz book id bulunamadi '.
*
*ENDIF.
*
*  ENDLOOP.
*SELECT SINGLE * FROM sbook INTO ls_sbook where bookid = iv_bookid.
*IF sy-subrc = 0.
*  WRITE :'girdiginiz book id nin ucus tarihi:  ', ls_sbook-fldate.
*ELSE.
*   WRITE :'girdiginiz book id bulunamadi '.
*
*ENDIF.






ENDFUNCTION.
