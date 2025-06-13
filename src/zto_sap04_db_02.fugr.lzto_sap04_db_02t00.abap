*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTO_SAP04_DB_02.................................*
DATA:  BEGIN OF STATUS_ZTO_SAP04_DB_02               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTO_SAP04_DB_02               .
CONTROLS: TCTRL_ZTO_SAP04_DB_02
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZTO_SAP04_DB_02               .
TABLES: ZTO_SAP04_DB_02                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
