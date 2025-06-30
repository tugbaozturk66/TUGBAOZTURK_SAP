FUNCTION zto_fm_sap04_09.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_CARRID) TYPE  S_CARR_ID
*"  EXPORTING
*"     REFERENCE(ET_SPFLI) TYPE  ZTO_SAP04__TT_3
*"----------------------------------------------------------------------
  SELECT * FROM spfli INTO TABLE et_spfli WHERE carrid = iv_carrid.




ENDFUNCTION.
