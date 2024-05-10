namespace Stores_Brands;
using { managed } from '@sap/cds/common';



entity USER1 : managed {
    key Email   : String;
    key StoreID : String;
        store   : Composition of one STORE1
                      on $self = store.REQ_ID1;
}
 
entity STORE1 : managed {
    key REQ_ID  : UUID;
        REQ_ID1 : Association to USER1;
        storeID : String;
        brands  : Composition of many BRAND1
                      on $self = brands.REQ_ID1;
}
 
entity BRAND1 : managed {
    key ID        : UUID;
    key REQ_ID1   : Association to STORE1;
    key email     : String;
    key storeID   : String;
    key BRANDID   : String;
        BrandDESC : String;
}
 