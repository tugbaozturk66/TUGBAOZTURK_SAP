*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTO_SAP04_DB_03.................................*
DATA:  BEGIN OF STATUS_ZTO_SAP04_DB_03               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTO_SAP04_DB_03               .
CONTROLS: TCTRL_ZTO_SAP04_DB_03
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZTO_SAP04_DB_03               .
TABLES: ZTO_SAP04_DB_03                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
