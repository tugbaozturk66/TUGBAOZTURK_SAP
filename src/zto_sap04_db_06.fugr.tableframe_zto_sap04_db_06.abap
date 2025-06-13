*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZTO_SAP04_DB_06
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZTO_SAP04_DB_06    .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
