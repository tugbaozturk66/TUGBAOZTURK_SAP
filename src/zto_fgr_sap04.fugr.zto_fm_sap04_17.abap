FUNCTION ZTO_FM_SAP04_17.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  EXPORTING
*"     REFERENCE(EV_SUCCESS) TYPE  CHAR1
*"----------------------------------------------------------------------
DATA: ls_scarr TYPE scarr.

  CALL SELECTION-SCREEN 2028 STARTING AT 5 5 ENDING AT 105 7.

  IF sy-subrc IS INITIAL.

    ls_scarr-carrid   = p_carrid.
    ls_scarr-carrname = p_carrnm.
    ls_scarr-currcode = p_curr.
    ls_scarr-url      = p_url_3.

    MODIFY zto_sap04_scarr FROM ls_scarr.

    IF sy-subrc IS INITIAL.
      EV_SUCCESS = abap_true.
    ENDIF.

  ENDIF.

ENDFUNCTION.
