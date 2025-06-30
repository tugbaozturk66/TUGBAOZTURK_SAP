FUNCTION zto_fm_sap04_10.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_CARRN) TYPE  ZTO_SAP04_DE_CARRNAME
*"  EXPORTING
*"     REFERENCE(ES_SCARR) TYPE  SCARR
*"     REFERENCE(ET_SPFLI) TYPE  ZTO_SAP04__TT_3
*"     REFERENCE(ET_SFLIGHT) TYPE  ZTO_SAP04__TT_4
*"----------------------------------------------------------------------
  SELECT SINGLE * FROM scarr INTO es_scarr WHERE carrname = iv_carrn .
  IF sy-subrc IS INITIAL.
    SELECT * FROM spfli
      INTO TABLE et_spfli
      WHERE carrid = es_scarr-carrid.
    SELECT * FROM sflight
      INTO TABLE et_sflight
      WHERE carrid = es_scarr-carrid.

  ENDIF.


ENDFUNCTION.
