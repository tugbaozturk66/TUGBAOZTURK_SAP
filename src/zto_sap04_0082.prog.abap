*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0082
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0082.

*Alıştırma – 1: SE11 işlem kodunu kullanarak bir structure tanımlayın. Bu structure objesinin alanları
*sırasıyla ‘PHONE_BRAND’, ‘PHONE_MODEL’, ‘PHONE_COLOR’, ‘PHONE_OPR_SYSTEM’
*‘PHONE_MEMORY’, ‘PHONE_SCREEN’, ‘PHONE_PRICE’, ‘PHONE_CURR’, ‘PHONE_DOUBLE_SIM’ ve
*‘PHONE_WEIGHT’ olsun. Bütün alanlar icin ayrı ayrı data element oluşturun. Yeni bir program
*oluşturun. Program içerisinde, az önce oluşturduğunuz satiri 1 kere doldurun ve ekrana yazdırın.


DATA : gs_str TYPE ZTO_SAP04__STR_3.

gs_str-phone_brand      = 'Iphone'.
gs_str-phone_model      = '16 pro'.
gs_str-phone_color      = 'siyah'.
gs_str-phone_opr_system = 'IOS'.
gs_str-phone_memory     = '128 gb'.
gs_str-phone_screen     = '6,7 inch'.
gs_str-phone_price      = '800'.
gs_str-phone_curr       = 'EUR'.
gs_str-phone_double_sim = abap_true .
gs_str-phone_weight     = '140-Gr'.

BREAK-POINT .
