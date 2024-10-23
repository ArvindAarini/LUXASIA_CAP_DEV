// namespace stores;
context stores {

    @cds.persistence.exists
    entity ZSDR_PS_CE_DV {
        key MANDT    : String(3);
        key MATNR    : String(18);
        key BRAND_ID : String(4);
        key WERKS    : String(4);
        key LGORT    : String(4);
            LABST    : Decimal(13, 3);
            ERSDA    : String(8)
    }

    @cds.persistence.exists
    entity WRF_BRANDS_T {
        key MANDT       : String(3) NOT null;
        key BRAND_ID    : String(4) NOT null;
        key LANGUAGE    : String(1) NOT null;
            BRAND_DESCR : String(30);
    }

    @cds.persistence.exists
    entity ZSD_REFVKORG {
        key MANDT        : String(3) NOT null;
        key VKORG        : String(4) NOT null;
        key BRAND_ID     : String(4) NOT null;
            ZZ_REF_VKORG : String(4)
    }

    @cds.persistence.exists
    entity MAKT {
        key MANDT : String(3) NOT null;
        key MATNR : String(18) NOT null;
        key SPRAS : String(1) NOT null;
            MAKTX : String(40);
            MAKTG : String(40)
    }
    @cds.persistence.exists
    entity A073 {
        key MANDT : String(3) NOT null;
        key KAPPL : String(2) NOT null;
        key KSCHL : String(4) NOT null;
        key VKORG : String(4) NOT null;
        key VTWEG : String(2) NOT null;
        key MATNR : String(18) NOT null;
        key VRKME : String(3) NOT null;
        key DATBI : String(8) NOT null;
            DATAB : String(8) NOT null;
            KNUMH : String(10) NOT null;
    }

    @cds.persistence.exists
    entity KONP {
        key MANDT      : String(3) NOT null;
        key KNUMH      : String(10) NOT null;
        key KOPOS      : String(2) NOT null;
            KAPPL      : String(2);
            KSCHL      : String(4);
            KNUMT      : String(10);
            STFKZ      : String(1);
            KZBZG      : String(1);
            KSTBM      : Decimal(15, 3);
            KONMS      : String(3);
            KSTBW      : Decimal(15, 2);
            KONWS      : String(5);
            KRECH      : String(1);
            KBETR      : Decimal(11, 2);
            KONWA      : String(5);
            KPEIN      : Decimal(5);
            KMEIN      : String(3);
            PRSCH      : String(4);
            KUMZA      : Decimal(5);
            KUMNE      : Decimal(5);
            MEINS      : String(3);
            MXWRT      : Decimal(11, 2);
            GKWRT      : Decimal(11, 2);
            PKWRT      : Decimal(15, 2);
            FKWRT      : Decimal(15, 2);
            RSWRT      : Decimal(15, 2);
            KWAEH      : String(5);
            UKBAS      : Decimal(15, 2);
            KZNEP      : String(1);
            KUNNR      : String(10);
            LIFNR      : String(10);
            MWSK1      : String(2);
            LOEVM_KO   : String(1);
            ZAEHK_IND  : String(2);
            BOMAT      : String(18);
            KBRUE      : Decimal(11, 2);
            KSPAE      : String(1);
            BOSTA      : String(1);
            KNUMA_PI   : String(10);
            KNUMA_AG   : String(10);
            KNUMA_SQ   : String(10);
            VALTG      : String(2);
            VALDT      : String(8);
            ZTERM      : String(4);
            ANZAUF     : String(2);
            MIKBAS     : Decimal(15, 3);
            MXKBAS     : Decimal(15, 3);
            KOMXWRT    : Decimal(13, 2);
            KLF_STG    : String(4);
            KLF_KAL    : String(4);
            VKKAL      : String(1);
            AKTNR      : String(10);
            KNUMA_BO   : String(10);
            MWSK2      : String(2);
            VERTT      : String(1);
            VERTN      : String(13);
            VBEWA      : String(4);
            MDFLG      : String(1);
            KFRST      : String(1);
            UASTA      : String(1);
            BEV1_ECRTT : String(1);
            BEV1_ECRTN : String(13);
            BEV1_ECEWA : String(4)
    }

    @cds.persistence.exists
    entity ZSDR_PS_CE_MVKE {
        key MANDT : String(3);
        key MATNR : String(18);
        key VKORG : String(4);
        key VTWEG : String(2);
            VRKME : String(3)
    }

    // @cds.persistence.exists
    // entity ADRC {
    //     key CLIENT     : String(3);
    //     key ADDRNUMBER : String(10);
    //     key DATE_FROM  : String(8);
    //     key NATION     : String(1);
    //         DATE_TO    : String(8);
    //         TITLE      : String(4);
    //         NAME1      : String(40);
    //         NAME2      : String(40);
    //         TEL_NUMBER : String(30);
    // }

    // @cds.persistence.exists
    // entity KNA1 {
    //     key KUNNR : String(10);
    //         TELF1 : String(16);
    //         ADRNR : String(10);
    //         KTOKD : String(4);
    //         KATR8 : String(3);
    // }

    // @cds.persistence.exists
    // entity ADR6 {
    //     key CLIENT     : String(3);
    //     key ADDRNUMBER : String(10);
    //     key PERSNUMBER : String(10);
    //     key DATE_FROM  : String(8);
    //     key CONSNUMBER : String(3);
    //         FLGDEFAULT : String(1);
    //         FLG_NOUSE  : String(1);
    //         HOME_FLAG  : String(1);
    //         SMTP_ADDR  : String(241);
    //         SMTP_SRCH  : String(20);
    //         DFT_RECEIV : String(1);
    //         R3_USER    : String(1);
    //         ENCODE     : String(1);
    //         TNEF       : String(1);
    //         VALID_FROM : String(14);
    //         VALID_TO   : String(14);
    // }
}

@cds.persistence.calcview
@cds.persistence.exists
entity Brands {
    key BRAND_ID    : String(4);
        BRAND_DESCR : String(30);
        BRAND_TYPE  : String(20);
        STORE_ID    : String(40)
}

@cds.persistence.calcview
@cds.persistence.exists
entity Product_Cost(IP_WERKS : String(4), IP_BRAND_ID : String(18)) {
    key ARTICLENO    : String(18);
        Stloc        : String(4);
        ArticleDesc  : String(40);
        StoreId      : String(4);
        UOM          : String(3);
        Brand_Id     : String(4);
        Barcode      : String(18);
        RetailPrice  : Decimal(11, 2);
        Currency     : String(5);
        ArticleType  : String(4);
        AvailableQty : Decimal(13, 3);
        ERSDA        : String(8);
        MAKTG        : String(40);
        SPRAS        : String(1);
        VTWEG        : String(2);
        VRKME        : String(3);
        MMEINE       : String(3);
        VKORG        : String(4);
        KMEIN        : String(3)
}

@cds.persistence.calcview
@cds.persistence.exists
entity Product_StorageUnit(IP_WERKS : String(4), IP_LGORT : String(4)) {
    key ARTICLENO    : String(18);
        STORAGELOC   : String(4);
        ArticleDesc  : String(40);
        StoreId      : String(4);
        UOM          : String(3);
        Barcode      : String(18);
        Price        : Decimal(11, 2);
        ArticleType  : String(4);
        AvailableQty : Decimal(13, 3);
}

@cds.persistence.calcview
@cds.persistence.exists
entity Purchase_Order(IP_WERKS : String(4), IP_SUPP_WERKS : String(4), IP_SUPP_VEND : String(20), IP_BRAND_ID : String(18)) {
    key ARTICLENO    : String(18);
    key STLOC        : String(4);
        ARTICLEDESC  : String(40);
        STOREID      : String(4);
        UOM          : String(3);
        BRAND_ID     : String(4);
        BARCODE      : String(18);
        ARTICLETYPE  : String(4);
        AVAILABLEQTY : Decimal(13, 3);
}

@cds.persistence.calcview
@cds.persistence.exists
entity Customer {
    CUSTOMERNO    : String(10);
    FIRSTNAME     : String(40);
    LASTNAME      : String(40);
    EMAIL         : String(241);
    TEL1NUMBER    : String(16);
    MARKETCONSENT : String(3);
}

@cds.persistence.calcview
@cds.persistence.exists
entity Customer_V1 {
	CustomerNo: String(10);
	Firstname: String(35);
	Lastname: String(35);
	Email: String(241);
	Dob: String(8);
	Tel1Number: String(30);
	PostlCod1: String(10);
	City: String(40);
	Street: String(60);
    Katr8 : String(3);
}