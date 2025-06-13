*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0100.

" UPDATE ve INSERT
DATA : gs_scarr TYPE scarr,
       gt_scarr TYPE TABLE OF scarr.

START-OF-SELECTION.

*gs_scarr-carrid ='TO'.
*gs_scarr-carrname ='TO_air'.
*gs_scarr-currcode ='EUR'.
*gs_scarr-url ='toair@gmail.com'.
*
*MODIFY ZTO_SAP04_SCARR FROM gs_scarr.
"================= olmayan bir satirdi ekledi sorunsuz=======

*gs_scarr-carrid ='YO'.
*gs_scarr-carrname ='YO_air'.
*gs_scarr-currcode ='EUR'.
*gs_scarr-url ='yoair@gmail.com'.
*
*MODIFY ZTO_SAP04_SCARR FROM gs_scarr.
*
*gs_scarr-carrid ='YO'.
*gs_scarr-carrname ='TO_air'.
*gs_scarr-currcode ='USD'.
*gs_scarr-url ='toair@gmail.com'.
*
*MODIFY ZTO_SAP04_SCARR FROM gs_scarr.

"=========ilk satiri oyle bir id olmadigi için ekledi ama sonrasinda o id olunca diger verileri guncelledi===
" bu uygulama direkt atama ileydi

gs_scarr-carrid ='AO'.
gs_scarr-carrname ='AO_air'.
gs_scarr-currcode ='USD'.
gs_scarr-url ='aoair@gmail.com'.
APPEND  gs_scarr TO gt_scarr.
CLEAR : gs_scarr.
*MODIFY ZTO_SAP04_SCARR FROM gs_scarr.

gs_scarr-carrid ='YO'.
gs_scarr-carrname ='TO_air'.
gs_scarr-currcode ='USD'.
gs_scarr-url ='toair12@gmail.com'.
APPEND  gs_scarr TO gt_scarr.
CLEAR : gs_scarr.


MODIFY ZTO_SAP04_SCARR FROM TABLE gt_scarr.
