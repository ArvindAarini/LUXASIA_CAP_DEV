using {Stores_Brands as Luxasia} from '../db/Stores_Brands';
using {stores as ss} from '../db/data-model';
using Brands as _Brands from '../db/data-model';
using Product_Cost from '../db/data-model';
using Product_StorageUnit from '../db/data-model';
using Customer as Customers from '../db/data-model';
using Purchase_Order from '../db/data-model';

// @requires: 'authenticated-user'

service LuxasiaSB @(path: '/luxasia/oDataV4', requires: 'authenticated-user') {

    entity Users         as projection on Luxasia.USER1;
    entity STORE         as projection on Luxasia.STORE1;
    entity Brand        as projection on Luxasia.BRAND1;
    entity ZSDR_PS_CE_DV as projection on ss.ZSDR_PS_CE_DV;
    entity WRF_BRANDS_T  as projection on ss.WRF_BRANDS_T;
    entity ZSD_REFVKORG  as projection on ss.ZSD_REFVKORG;
    entity MAKT          as projection on ss.MAKT;
    // entity MVKE          as projection on ss.MVKE;
    entity A073          as projection on ss.A073;
    entity KONP          as projection on ss.KONP;
    entity ZSDR_PS_CE_MVKE as projection on ss.ZSDR_PS_CE_MVKE;

    @readonly
    entity Brands        as projection on _Brands;
    @readonly
    entity ProductCost(IP_WERKS: String(4),IP_BRAND_ID:String(18)) as
    select from Product_Cost (IP_WERKS: :IP_WERKS , IP_BRAND_ID: :IP_BRAND_ID)
        {
            *
        };

    @readonly
    entity ProductStorageUnit(IP_WERKS: String(4),IP_LGORT:String(4)) as
    select from Product_StorageUnit (IP_WERKS: :IP_WERKS , IP_LGORT: :IP_LGORT)
        {
            *
        };
    @readonly
    entity PurchaseOrder(IP_WERKS: String(4),IP_SUPP_WERKS : String(4), IP_SUPP_VEND : String(20), IP_BRAND_ID : String(18)) as
    select from Purchase_Order (IP_WERKS: :IP_WERKS ,IP_SUPP_WERKS: :IP_SUPP_WERKS , IP_SUPP_VEND::IP_SUPP_VEND,IP_BRAND_ID: :IP_BRAND_ID )
        {
            *
        };
    
      @readonly
    entity  Customer as projection on Customers;

}
