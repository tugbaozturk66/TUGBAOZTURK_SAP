*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0069
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0069.

*ÜBUNG
*1-Parametre ile Kullanıcıdan aşağıdaki  verileri alın:
*dilediğiniz  sekilde verileri kullanabilirsiniz.
*p_prodnr TYPE n LENGTH 4,  -> ürün no
*p_item   TYPE c LENGTH 6,  -> Kalem no
*p_belnr  TYPE c LENGTH 10, -> belge no
*p_aufnr  TYPE c LENGTH 12, -> işlem  tarihi
*p_typnr  TYPE i,           -> çeşit no
*p_lagrnr TYPE i,           -> depo no
*p_regal  TYPE i,           -> raf no
*p_kateg  TYPE i,           -> kategori
*p_preis  TYPE i,           -> ücret
*p_curr   TYPE c LENGTH 3,  -> para birimi
*p_prodat TYPE datum, "DATS -> üretim tarihi
*p_expdat TYPE datum,       -> son kullanma tarihi
*p_zeit   TYPE uzeit.                 -> işlem  saati
*
*2-Parametreden gelen verileri kullanarak bir TYPE olusturun,
* bu tip ile bir STR ve bir ITAB (internal Table) oluşturun,
*
*3-DO ENDDO kullanarak 10 adet satır  ITAB'a atın. CREATE
*Bunu yaparken
*
*p_prodnr TYPE n LENGTH 4,  -> ürün no     	+ 1
*p_item   TYPE c LENGTH 6,  -> Kalem no    	+ 10
*p_belnr  TYPE c LENGTH 10, -> belge no	+ 1
*p_aufnr  TYPE c LENGTH 12, -> sözleşme no  + 1
*p_typnr  TYPE i,           -> çeşit no	+ 1
*p_lagrnr TYPE i,           -> depo no  + 1
*p_regal  TYPE i,           -> raf no	+ 1
*p_kateg  TYPE i,           -> kategori	+ 1
*p_preis  TYPE i,           -> ücret  100 EURO
*
*
*p_prodat TYPE datum, "DATS -> üretim tarihine 5 gün ekleyin
*p_expdat TYPE datum,       -> son kullanma tarihine 10 gün ekleyin
*p_zeit   TYPE uzeit.                 -> işlem  saatine 1 saat, 10 dk, 30 sn ekleyin.
*
*ÖR: işlem  saatine eklemek için  bir değişken (gv_time) tanımlayın ve buna value atayın,
*
*    p_zeit   = p_zeit + gv_time.  Şeklinde yapilabilir.
*
*4-Bütün alanları  açıklamalarını  da ekleyerek ekrana yazdırın.
*5-Bu veriler üzerinde
*WHERE
*CONTINUE
*EXIT
*CHECK
*READ TABLE  komutlarini kullanarak bazi alanlari ekrana yazdırın.
*SORT komutu ile ör.  Değişik  parametrelere göre verileri sıralayın.


PARAMETERS : p_prodnr TYPE n LENGTH 4,
             p_item   TYPE c LENGTH 6,
             p_belnr  TYPE c LENGTH 10,
             p_aufnr  TYPE c LENGTH 12,
             p_typnr  TYPE i,
             p_lagrnr TYPE i,
             p_regal  TYPE i,
             p_kateg  TYPE i,
             p_preis  TYPE i,
             p_curr   TYPE c LENGTH 3,
             p_prodat TYPE datum, "DATS
             p_expdat TYPE datum,
             p_zeit   TYPE uzeit.





TYPES : BEGIN OF gty_str,
          prodnr TYPE n LENGTH 4,
          item   TYPE c LENGTH 6,
          belnr  TYPE c LENGTH 10,
          aufnr  TYPE c LENGTH 12,
          typnr  TYPE i,
          lagrnr TYPE i,
          regal  TYPE i,
          kateg  TYPE i,
          preis  TYPE i,
          curr   TYPE c LENGTH 3,
          prodat TYPE datum,
          expdat TYPE datum,
          zeit   TYPE uzeit,
        END OF gty_str.

DATA : gs_str   TYPE gty_str,
       gt_table TYPE TABLE OF gty_str.


gs_str-prodnr =  p_prodnr.
gs_str-item   =  p_item.
gs_str-belnr  =  p_belnr.
gs_str-aufnr  =  p_aufnr.
gs_str-typnr  =  p_typnr.
gs_str-lagrnr =  p_lagrnr.
gs_str-regal  =  p_regal.
gs_str-kateg  =  p_kateg.
gs_str-preis  =  p_preis.
gs_str-curr   =  p_curr.
gs_str-prodat =  p_prodat.
gs_str-expdat =  p_expdat.
gs_str-zeit   =  p_zeit.

APPEND gs_str TO gt_table.
*CLEAR : gs_str.

DO  10 TIMES.
  ADD 1    TO gs_str-prodnr.
  ADD 10   TO gs_str-item.
  ADD 1    TO gs_str-belnr.
  ADD 1    TO gs_str-aufnr .
  ADD 1    TO gs_str-typnr .
  ADD 1    TO gs_str-lagrnr.
  ADD 1    TO gs_str-regal .
  ADD 1    TO gs_str-kateg .
  ADD 100  TO gs_str-preis .
*  ADD 1    TO gs_str-curr  .
  ADD 5    TO gs_str-prodat.
  ADD 10   TO gs_str-expdat.
  ADD 013010    TO gs_str-zeit .

*  MODIFY gt_table FROM gs_str INDEX sy-tabix.

  APPEND gs_str TO gt_table.
*  CLEAR : gs_str.

ENDDO.


LOOP AT gt_table INTO gs_str.
  WRITE :'prodnr:', gs_str-prodnr ,
         'item: ',gs_str-item   ,
         'belnr: ',gs_str-belnr  ,
         'aufnr: ',gs_str-aufnr  ,
         gs_str-typnr  ,
         gs_str-lagrnr ,
         gs_str-regal  ,
         gs_str-kateg  ,
         gs_str-preis  ,
         gs_str-curr   ,
         gs_str-prodat ,
         gs_str-expdat ,
         gs_str-zeit   .
  SKIP.
 ENDLOOP.
