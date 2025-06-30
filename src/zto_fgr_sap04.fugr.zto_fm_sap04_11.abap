FUNCTION zto_fm_sap04_11.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_CARRID) TYPE  S_CARR_ID
*"  EXPORTING
*"     REFERENCE(ET_SCARR) TYPE  ZTO_SAP04__TT_5
*"  EXCEPTIONS
*"      NO_DATA
*"----------------------------------------------------------------------
  IF iv_carrid IS INITIAL.
    SELECT * FROM scarr
      INTO TABLE et_scarr.
  ELSE.
    SELECT * FROM scarr
      INTO TABLE et_scarr
      WHERE carrid = iv_carrid.
    IF sy-subrc IS NOT INITIAL.
      RAISE no_data.

    ENDIF.

  ENDIF.




ENDFUNCTION.
