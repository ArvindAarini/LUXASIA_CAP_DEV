const cds = require("@sap/cds");
// const { KNA1 } = cdVAR_KUNNRs.entities;

module.exports = cds.service.impl(srv => {
    srv.on('insert', async (req) => {
        const { kunnr, addrnumber, name1, name2, tel_number, smtp_addr } = req.data;
        console.log("kunnr " + kunnr)

        try {
            // Insert data into the KNA1 table
            const res1 = await cds.run(
                INSERT.into('KNA1').entries({
                    KUNNR: kunnr,
                    ADRNR: addrnumber
                }));
            console.log("res1 " + res1)
            const res2 = await cds.run(
                INSERT.into('ZSDR_ADRC').entries({
                    CLIENT: '',
                    ADDRNUMBER: addrnumber,
                    DATE_FROM: '',
                    NATION: '',
                    NAME1: name1,
                    NAME2: name2,
                    TEL_NUMBER: tel_number
                }));
            console.log("res2 " + res2)
            const res3 = await cds.run(
                INSERT.into('ADR6').entries({
                    CLIENT: '',
                    ADDRNUMBER: addrnumber,
                    PERSNUMBER: '',
                    DATE_FROM: '',
                    CONSNUMBER: '',
                    SMTP_ADDR: smtp_addr
                })
            );
            console.log("res3 " + res3)

            // Return a success message or the inserted data
            // console.log("result " + result)
        } catch (error) {
            console.error('Error inserting :', error);
        }
    });
});
