-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Sw02tG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Funcionario" (
    "Idfunc" INT   NOT NULL,
    "Nome" VARCHAR(30)   NOT NULL,
    "Sobnome" VARCHAR(40)   NOT NULL,
    "Cpf" VARCHAR(10)   NOT NULL,
    "Email" VARCHAR(30)   NOT NULL,
    "Senha" VARCHAR(100)   NOT NULL,
    "Cep" VARCHAR(8)   NOT NULL,
    "End" VARCHAR(100)   NOT NULL,
    "Tlf" VARCHAR(15)   NOT NULL,
    CONSTRAINT "pk_Funcionario" PRIMARY KEY (
        "Idfunc"
     )
);

CREATE TABLE "Viagem" (
    "Idvia" INT   NOT NULL,
    "Cid" VARCHAR(30)   NOT NULL,
    "Dtolta" DATE   NOT NULL,
    "Dtsaida" DATE   NOT NULL,
    "Obj" VARCHAR(100)   NULL,
    "Idfunc" INT   NOT NULL,
    CONSTRAINT "pk_Viagem" PRIMARY KEY (
        "Idvia"
     )
);

CREATE TABLE "Alimentacao" (
    "CoddespA" INT   NOT NULL,
    "VlorpagoA" REAL   NOT NULL,
    "DescA" TEXT   NULL,
    "CidntfisA" VARCHAR(200)   NULL,
    "DtntfisA" DATE   NULL,
    "Idvia" INT   NOT NULL,
    CONSTRAINT "pk_Alimentacao" PRIMARY KEY (
        "CoddespA"
     )
);

CREATE TABLE "Transporte" (
    "CoddespT" INT   NOT NULL,
    "VlorpagoT" REAL   NOT NULL,
    "DescT" TEXT   NULL,
    "CidntfisT" VARCHAR(200)   NULL,
    "DtntfisT" DATE   NULL,
    "Idvia" INT   NOT NULL,
    CONSTRAINT "pk_Transporte" PRIMARY KEY (
        "CoddespT"
     )
);

CREATE TABLE "Hospedagem" (
    "CoddespH" INT   NOT NULL,
    "VlorpagoH" REAL   NOT NULL,
    "DescH" TEXT   NULL,
    "CidntfisH" VARCHAR(200)   NULL,
    "DtntfisH" DATE   NULL,
    "Idvia" INT   NOT NULL,
    CONSTRAINT "pk_Hospedagem" PRIMARY KEY (
        "CoddespH"
     )
);

CREATE TABLE "Compra" (
    "Codcomp" INT   NOT NULL,
    "Dtcomp" DATE   NOT NULL,
    "Loca" VARCHAR(200)   NULL,
    "Commi" REAL   NULL,
    "Desc" VARCHAR(200)   NULL,
    "Idvia" INT   NOT NULL,
    CONSTRAINT "pk_Compra" PRIMARY KEY (
        "Codcomp"
     )
);

CREATE TABLE "Cosmetico" (
    "Codprod" INT   NOT NULL,
    "Nomeprod" VARCHAR(200)   NOT NULL,
    "MarcaProd" VARCHAR(200)   NOT NULL,
    "Qtprod" INT   NOT NULL,
    "Prec" REAL   NOT NULL,
    "Dtcomp" DATE   NOT NULL,
    "Codcomp" INT   NOT NULL,
    CONSTRAINT "pk_Cosmetico" PRIMARY KEY (
        "Codprod"
     )
);

CREATE TABLE "Vestuario" (
    "Codprodv" INT   NOT NULL,
    "Nomeprodv" VARCHAR(200)   NOT NULL,
    "MarcaProdv" VARCHAR(200)   NOT NULL,
    "Qtprodv" INT   NOT NULL,
    "Precv" REAL   NOT NULL,
    "Dtcompv" DATE   NOT NULL,
    "Codcomp" INT   NOT NULL,
    CONSTRAINT "pk_Vestuario" PRIMARY KEY (
        "Codprodv"
     )
);

ALTER TABLE "Viagem" ADD CONSTRAINT "fk_Viagem_Idfunc" FOREIGN KEY("Idfunc")
REFERENCES "Funcionario" ("Idfunc");

ALTER TABLE "Alimentacao" ADD CONSTRAINT "fk_Alimentacao_Idvia" FOREIGN KEY("Idvia")
REFERENCES "Viagem" ("Idvia");

ALTER TABLE "Transporte" ADD CONSTRAINT "fk_Transporte_Idvia" FOREIGN KEY("Idvia")
REFERENCES "Viagem" ("Idvia");

ALTER TABLE "Hospedagem" ADD CONSTRAINT "fk_Hospedagem_Idvia" FOREIGN KEY("Idvia")
REFERENCES "Viagem" ("Idvia");

ALTER TABLE "Compra" ADD CONSTRAINT "fk_Compra_Idvia" FOREIGN KEY("Idvia")
REFERENCES "Viagem" ("Idvia");

ALTER TABLE "Cosmetico" ADD CONSTRAINT "fk_Cosmetico_Codcomp" FOREIGN KEY("Codcomp")
REFERENCES "Compra" ("Codcomp");

ALTER TABLE "Vestuario" ADD CONSTRAINT "fk_Vestuario_Codcomp" FOREIGN KEY("Codcomp")
REFERENCES "Compra" ("Codcomp");

