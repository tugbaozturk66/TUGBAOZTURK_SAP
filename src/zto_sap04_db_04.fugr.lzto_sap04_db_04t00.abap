*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTO_SAP04_DB_04.................................*
DATA:  BEGIN OF STATUS_ZTO_SAP04_DB_04               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTO_SAP04_DB_04               .
*.........table declarations:.................................*
TABLES: *ZTO_SAP04_DB_04               .
TABLES: ZTO_SAP04_DB_04                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
