*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0083
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0083.

* Yeni bir program oluşturun. Program içerisinde, birinci alıştırmada oluşturulan structure
*objesinin her bir alanına karşılık gelecek şekilde 10 adet parametre tanımlayın. Parametrelerden
*gelecek olan veriyi structure objesinin ilgili alanlarına kaydedin. Bu structure objesi ile ayni satir
*yapısına sahip bir internal tablo oluşturun. Doldurduğunuz structure ile internal tablo içerisinde 10
*adet satir oluşturun. Satir oluştururken kullanıcı tarafından girilen fiyatı her defasında 50 EUR arttırın.
*Ayrıca telefon rengini her defasında farklı olacak şekilde düzenleyin. (Case-Endcase sy-index) Daha
*sonra internal tablo içerisinde loop edin ve sadece tek numaralı satırları yazdırın.


PARAMETERS : p_brand  TYPE zto_de_sap04_brand,
             p_model  TYPE zto_de_sap04_phone_model,
             p_color  TYPE zto_de_sap04_phone_color,
             p_op_sym TYPE zto_de_sap04_phone_opr_system,
             p_memory TYPE zto_de_sap04_phone_memory,
             p_screen TYPE zto_de_sap04_phone_screen,
             p_price  TYPE zto_de_sap04_phone_price,
             p_curr   TYPE zto_de_sap04_phone_curr,
             p_db_sim TYPE zto_de_sap04_phone_double_sim,
             p_weight TYPE zto_de_sap04_phone_weight.

DATA : gs_str   TYPE zto_sap04__str_3,
       gt_table TYPE TABLE OF zto_sap04__str_3.

DO 10 TIMES.
  CASE sy-index.
    WHEN 1.
      gs_str-phone_color      = p_color.
    WHEN 2.
      gs_str-phone_color      = 'Mavi'.
    WHEN 3.
      gs_str-phone_color      = 'Yesil'.
    WHEN 4.
      gs_str-phone_color      = 'Kirmizi'.
    WHEN 5.
      gs_str-phone_color      = 'Sari'.
    WHEN 6.
      gs_str-phone_color      = 'Eflatun'.
    WHEN 7.
      gs_str-phone_color      = 'Pembe'.
    WHEN 8.
      gs_str-phone_color      = 'Mor'.
    WHEN 9.
      gs_str-phone_color      = 'Bej'.
    WHEN 10.
      gs_str-phone_color      = 'Beyaz'.

  ENDCASE.
  gs_str-phone_brand      = p_brand.
  gs_str-phone_model      = p_model.
*gs_str-phone_color      = p_color.
  gs_str-phone_opr_system = p_op_sym.
  gs_str-phone_memory     = p_memory.
  gs_str-phone_screen     = p_screen.
  gs_str-phone_price      = p_price.
  gs_str-phone_curr       = p_curr.
  gs_str-phone_double_sim = p_db_sim.
  gs_str-phone_weight     = p_weight.

  APPEND gs_str TO gt_table .
  CLEAR: gs_str .

  ADD 50 TO p_price.

ENDDO.

*BREAK-POINT.

LOOP AT gt_table INTO gs_str.
  IF sy-tabix MOD 2 = 1.
    WRITE : sy-tabix , ': ' ,gs_str-phone_brand,
            gs_str-phone_model ,
            gs_str-phone_opr_system,
            gs_str-phone_memory,
            gs_str-phone_screen,
            gs_str-phone_price,
            gs_str-phone_curr ,
            gs_str-phone_double_sim ,
            gs_str-phone_weight .
    SKIP.

  ENDIF.

ENDLOOP.
