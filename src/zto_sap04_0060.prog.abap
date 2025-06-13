*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0060
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0060.

*Bir Type oluşturun;
*Id no
*Adı
*Soyadı
*Görevi
*Maaşı
*Maaş kuru
*Telefon No
*e_mail
*
*Bu type ile
*gs_structure
*Ve
*Gt_table (standard internal table) tanımlayın.
*
*-CREATE
*Internal table içerisin 5 adet kayıt olusturun,
*
*SORT
*ID noya göre sıralayarak (SORT) tabloyu ekrana yazdırın.
*Soyadı  sırasına  göre sıralayarak (SORT) ekrana yazdırın.
*
*-READ
*Bir satırı  READ komutu ile okuyarak ekrana yazdırın. (index / where kullanabilirsiniz)
*
*-UPDATE
*Bir satırı  READ komutu ile okuyarak maaşında değişikliği yapın ( UPDATE ) ve ekrana yazdırın.
*
*-DELETE komutu ile bir veriyi silin.
*
*SORTED table olarak dönüştürerek  tablonun tamamını yazdırın.

*TYPES : BEGIN OF gty_str ,
*          id_no   TYPE c LENGTH 10,
*          adi     TYPE c LENGTH 10,
*          soyad   TYPE c LENGTH 10,
*          gorev   TYPE c LENGTH 10,
*          maas    TYPE i,
*          telefon TYPE c LENGTH 10,
*          email   TYPE c LENGTH 15,
*        END OF gty_str.
*
*DATA : gs_str   TYPE gty_str,
*       gt_table TYPE TABLE OF gty_str.
*
*gs_str-id_no   = '12345'.
*gs_str-adi     = 'ayse'.
*gs_str-soyad   = 'oz'.
*gs_str-gorev   = 'ogretmen'.
*gs_str-maas    = 40000.
*gs_str-telefon = '17612345'.
*gs_str-email   = 'to@gmail.com'.
*
*APPEND gs_str TO gt_table.
*CLEAR gs_str.
*
*gs_str-id_no   = '11346'.
*gs_str-adi     = 'burak'.
*gs_str-soyad   = 'aydin'.
*gs_str-gorev   = 'memur'.
*gs_str-maas    = 50000.
*gs_str-telefon = '17612367'.
*gs_str-email   = 'ba@gmail.com'.
*
*APPEND gs_str TO gt_table.
*CLEAR gs_str.
*
*gs_str-id_no   = '10348'.
*gs_str-adi     = 'cemal'.
*gs_str-soyad   = 'deniz'.
*gs_str-gorev   = 'muhendis'.
*gs_str-maas    = 60000.
*gs_str-telefon = '17612321'.
*gs_str-email   = 'cd@gmail.com'.
*
*APPEND gs_str TO gt_table.
*CLEAR gs_str.
*
*gs_str-id_no   = '11349'.
*gs_str-adi     = 'derya'.
*gs_str-soyad   = 'guzel'.
*gs_str-gorev   = 'muhendis'.
*gs_str-maas    = 50000.
*gs_str-telefon = '17612342'.
*gs_str-email   = 'dg@gmail.com'.
*
*APPEND gs_str TO gt_table.
*CLEAR gs_str.
*
*gs_str-id_no   = '12352'.
*gs_str-adi     = 'demet'.
*gs_str-soyad   = 'kaya'.
*gs_str-gorev   = 'bankacı'.
*gs_str-maas    = 45000.
*gs_str-telefon = '17612362'.
*gs_str-email   = 'dk@gmail.com'.
*
*APPEND gs_str TO gt_table.
*CLEAR gs_str.
*
*"==========================================================SORT=============================
*SORT gt_table BY id_no ASCENDING.
*
*LOOP AT gt_table INTO gs_str  .
*  WRITE : gs_str-id_no , gs_str-adi , gs_str-soyad, gs_str-gorev, gs_str-maas, gs_str-telefon, gs_str-email.
*  SKIP.
*
*ENDLOOP.
*
*ULINE.
*
*SORT gt_table BY soyad ASCENDING.
*
*LOOP AT gt_table INTO gs_str  .
*  WRITE : gs_str-id_no , gs_str-adi , gs_str-soyad, gs_str-gorev, gs_str-maas, gs_str-telefon, gs_str-email.
*  SKIP.
*
*ENDLOOP.
*
*ULINE.
*
*" ========================================READ AND MODFY===================================================
*
*READ TABLE  gt_table into gs_str INDEX 3.
*IF sy-subrc IS INITIAL.
*
*  WRITE: / gs_str-id_no , gs_str-adi , gs_str-soyad, gs_str-gorev, gs_str-maas, gs_str-telefon, gs_str-email.
*ENDIF.
*
*READ TABLE gt_table INTO gs_str INDEX 3.
*
*IF sy-subrc IS INITIAL.
*  ADD 500 TO gs_str-maas.
*  MODIFY gt_table FROM gs_str INDEX 3.
*  CLEAR: gs_str.
*ENDIF.
*
*READ TABLE gt_table INTO gs_str INDEX 3.
*IF sy-subrc IS INITIAL.
*  WRITE: / gs_str-id_no , gs_str-adi , gs_str-soyad, gs_str-gorev, gs_str-maas, gs_str-telefon, gs_str-email.
*ENDIF.
*
*ULINE.
*
*"==========================================DELETE==========================================
*DELETE gt_table INDEX 3.
*DELETE gt_table WHERE adi = 'demet'.
*
*LOOP AT gt_table INTO gs_str  .
*  WRITE : gs_str-id_no , gs_str-adi , gs_str-soyad, gs_str-gorev, gs_str-maas, gs_str-telefon, gs_str-email.
*  SKIP.
*ENDLOOP.

TYPES : BEGIN OF gty_str ,
          id_no   TYPE c LENGTH 10,
          adi     TYPE c LENGTH 10,
          soyad   TYPE c LENGTH 10,
          gorev   TYPE c LENGTH 10,
          maas    TYPE i,
          telefon TYPE c LENGTH 10,
          email   TYPE c LENGTH 15,
        END OF gty_str.

DATA : gs_str   TYPE gty_str,
       gt_table TYPE SORTED TABLE OF gty_str WITH UNIQUE KEY id_no.

gs_str-id_no   = '12345'.
gs_str-adi     = 'ayse'.
gs_str-soyad   = 'oz'.
gs_str-gorev   = 'ogretmen'.
gs_str-maas    = 40000.
gs_str-telefon = '17612345'.
gs_str-email   = 'to@gmail.com'.

INSERT gs_str INTO TABLE gt_table.
*APPEND gs_str TO gt_table.
CLEAR gs_str.

gs_str-id_no   = '11346'.
gs_str-adi     = 'burak'.
gs_str-soyad   = 'aydin'.
gs_str-gorev   = 'memur'.
gs_str-maas    = 50000.
gs_str-telefon = '17612367'.
gs_str-email   = 'ba@gmail.com'.

INSERT gs_str INTO TABLE gt_table.
*APPEND gs_str TO gt_table.
CLEAR gs_str.

gs_str-id_no   = '10348'.
gs_str-adi     = 'cemal'.
gs_str-soyad   = 'deniz'.
gs_str-gorev   = 'muhendis'.
gs_str-maas    = 60000.
gs_str-telefon = '17612321'.
gs_str-email   = 'cd@gmail.com'.

INSERT gs_str INTO TABLE gt_table.
*APPEND gs_str TO gt_table.
CLEAR gs_str.

gs_str-id_no   = '11349'.
gs_str-adi     = 'derya'.
gs_str-soyad   = 'guzel'.
gs_str-gorev   = 'muhendis'.
gs_str-maas    = 50000.
gs_str-telefon = '17612342'.
gs_str-email   = 'dg@gmail.com'.

INSERT gs_str INTO TABLE gt_table.
*APPEND gs_str TO gt_table.
CLEAR gs_str.

gs_str-id_no   = '12352'.
gs_str-adi     = 'demet'.
gs_str-soyad   = 'kaya'.
gs_str-gorev   = 'bankacı'.
gs_str-maas    = 45000.
gs_str-telefon = '17612362'.
gs_str-email   = 'dk@gmail.com'.

INSERT gs_str INTO TABLE gt_table.
*APPEND gs_str TO gt_table.
CLEAR gs_str.

LOOP AT gt_table INTO gs_str  .
  WRITE : gs_str-id_no , gs_str-adi , gs_str-soyad, gs_str-gorev, gs_str-maas, gs_str-telefon, gs_str-email.
  SKIP.

ENDLOOP.
