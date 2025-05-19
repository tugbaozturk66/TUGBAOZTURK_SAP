*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0045
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0045.

*Parametreden 1-2 veya 3 girsin kullanıcı. Case when yapısıyla 1 girilirse Success Message (Basari Mesaji)  ile 1 girildi ,
*  2 girilirse  Information Message (Bilgilendirme Mesajı) .....
*  3 girilirse Error Message (Hata Mesajı) versin

*PARAMETERS : p_1 TYPE c LENGTH 1.
*
*CASE p_1 .
*  WHEN 1.
*    MESSAGE 'girilen sayi 1' TYPE 'S'.
*  WHEN 2.
*    MESSAGE 'girilen sayi 2' TYPE 'I'.
*  WHEN 3.
*    MESSAGE 'girilen sayi 3' TYPE 'S' DISPLAY LIKE 'E'.
*  WHEN OTHERS.
*    MESSAGE '1 ile 3 arasinda bir sayi giriniz' TYPE 'S' DISPLAY LIKE 'E' .
*ENDCASE.

" 2.Alistirma
*5 kolonu olan bir satır tanımlayın,ad soyad ders adı ders id ve ders notu

TYPES : BEGIN OF gty_structure,
          ad        TYPE c LENGTH 40,
          soyad     TYPE c LENGTH 40,
          ders_adi  TYPE c LENGTH 8,
          ders_id   TYPE c LENGTH 8,
          ders_notu TYPE i,
        END OF gty_structure.

DATA : gs_structure TYPE gty_structure,
       gt_table     TYPE TABLE OF gty_structure.

PARAMETERS : p_ad    TYPE c LENGTH 40,
             p_soyad TYPE c LENGTH 40,
             p_ders  TYPE c LENGTH 8,
             p_d_id  TYPE c LENGTH 8,
             p_notu  TYPE i.

*BREAK-POINT.

gs_structure-ad = p_ad.
gs_structure-soyad = p_soyad.
gs_structure-ders_adi = p_ders.
gs_structure-ders_id = p_d_id.
gs_structure-ders_notu = p_notu .

APPEND gs_structure TO gt_table .
CLEAR : gs_structure .
