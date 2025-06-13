*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTO_SAP04_DB_06.................................*
DATA:  BEGIN OF STATUS_ZTO_SAP04_DB_06               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTO_SAP04_DB_06               .
CONTROLS: TCTRL_ZTO_SAP04_DB_06
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZTO_SAP04_DB_06               .
TABLES: ZTO_SAP04_DB_06                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
