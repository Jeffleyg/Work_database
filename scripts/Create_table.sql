
CREATE TABLE "Funcionario" (
    "Idfunc" INT   NOT NULL,
    "Nome" VARCHAR(30)   NOT NULL,
    "Sobnome" VARCHAR(40)   NOT NULL,
    "Cpf" VARCHAR(11)   NOT NULL,
    "Email" VARCHAR(30)   NOT NULL,
    "Senha" VARCHAR(100)   NOT NULL,
    "Cep" VARCHAR(8)   NOT NULL,
    "End" VARCHAR(100)   NOT NULL,
    "Tlf" VARCHAR(20)   NOT NULL,
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

INSERT INTO "Funcionario" VALUES
(1, 'Jeff1', 'Silva', '12345678901', 'jeff1@email.com', 'senha123', '12345678', 'Rua A', '123456789'),
(2, 'Jeff2', 'Garcon', '23456789012', 'jeff2@email.com', 'senha123', '23456789', 'Rua B', '234567890'),
(3, 'Jeff3', 'Silva', '12345678902', 'jeff3@email.com', 'senha123', '12345678', 'Rua A', '123456789'),
(4, 'Jeff4', 'Garcon', '23456789013', 'jeff4@email.com', 'senha123', '23456789', 'Rua B', '234567890'),
(5, 'Jeff5', 'Silva', '12345678903', 'jeff5@email.com', 'senha123', '12345678', 'Rua A', '123456789'),
(6, 'Jeff6', 'Garcon', '23456789014', 'jeff6@email.com', 'senha123', '23456789', 'Rua B', '234567890'),
(7, 'Jeff7', 'Silva', '12345678904', 'jeff7@email.com', 'senha123', '12345678', 'Rua A', '123456789'),
(8, 'Jeff8', 'Garcon', '23456789015', 'jeff8@email.com', 'senha123', '23456789', 'Rua B', '234567890'),
(9, 'Jeff9', 'Silva', '12345678904', 'jeff9@email.com', 'senha123', '12345678', 'Rua A', '123456789'),
(10, 'Jeff10', 'Garcon', '23456789016', 'jeff10@email.com', 'senha123', '23456789', 'Rua B', '234567890');

INSERT INTO "Viagem" VALUES
(1, 'São Paulo', '2024-12-20', '2024-12-10', 'Reunião de negócios', 1),
(2, 'Rio de Janeiro', '2024-12-25', '2024-12-15', 'Treinamento', 2),
(3, 'Belo Horizonte', '2024-12-30', '2024-12-20', 'Visita técnica', 3),
(4, 'Curitiba', '2024-12-28', '2024-12-18', 'Conferência', 4),
(5, 'Porto Alegre', '2024-12-27', '2024-12-17', 'Workshop', 5),
(6, 'Recife', '2024-12-29', '2024-12-19', 'Treinamento', 6),
(7, 'Fortaleza', '2024-12-26', '2024-12-16', 'Reunião estratégica', 7),
(8, 'Salvador', '2024-12-31', '2024-12-21', 'Seminário', 8),
(9, 'Manaus', '2024-12-24', '2024-12-14', 'Feira de negócios', 9),
(10, 'Brasília', '2024-12-23', '2024-12-13', 'Encontro de líderes', 10);

INSERT INTO "Alimentacao" VALUES
(1, 150.50, 'Jantar em restaurante', 'NF-001', '2024-12-11', 1),
(2, 120.75, 'Almoço em hotel', 'NF-002', '2024-12-12', 1),
(3, 200.00, 'Jantar em churrascaria', 'NF-003', '2024-12-16', 2),
(4, 180.00, 'Almoço em restaurante', 'NF-004', '2024-12-17', 2),
(5, 130.00, 'Café da manhã em padaria', 'NF-005', '2024-12-21', 3),
(6, 150.00, 'Jantar em restaurante', 'NF-006', '2024-12-22', 3),
(7, 110.00, 'Almoço leve', 'NF-007', '2024-12-18', 4),
(8, 140.00, 'Jantar regional', 'NF-008', '2024-12-19', 4),
(9, 175.00, 'Refeição completa', 'NF-009', '2024-12-24', 5),
(10, 190.00, 'Jantar sofisticado', 'NF-010', '2024-12-25', 5);

INSERT INTO "Transporte" VALUES
(1, 50.00, 'Taxi do aeroporto', 'NF-T001', '2024-12-10', 1),
(2, 75.00, 'Aluguel de carro', 'NF-T002', '2024-12-11', 1),
(3, 80.00, 'Transporte público', 'NF-T003', '2024-12-15', 2),
(4, 100.00, 'Transfer do hotel', 'NF-T004', '2024-12-16', 2),
(5, 60.00, 'Taxi no centro', 'NF-T005', '2024-12-20', 3),
(6, 90.00, 'Aluguel de scooter', 'NF-T006', '2024-12-21', 3),
(7, 70.00, 'Ônibus urbano', 'NF-T007', '2024-12-18', 4),
(8, 120.00, 'Corrida de aplicativo', 'NF-T008', '2024-12-19', 4),
(9, 85.00, 'Taxi compartilhado', 'NF-T009', '2024-12-23', 5),
(10, 95.00, 'Transporte executivo', 'NF-T010', '2024-12-24', 5),
(11, 55.00, 'Uber Pool', 'NF-T011', '2024-12-25', 6),
(12, 75.00, 'Van para evento', 'NF-T012', '2024-12-26', 7),
(13, 85.00, 'Trem expresso', 'NF-T013', '2024-12-27', 8),
(14, 95.00, 'Táxi premium', 'NF-T014', '2024-12-28', 9),
(15, 120.00, 'Ônibus noturno', 'NF-T015', '2024-12-29', 10);

INSERT INTO "Hospedagem" VALUES
(1, 500.00, 'Hotel no centro', 'NF-H001', '2024-12-10', 1),
(2, 450.00, 'Hotel próximo ao evento', 'NF-H002', '2024-12-11', 1),
(3, 600.00, 'Hotel de luxo', 'NF-H003', '2024-12-15', 2),
(4, 550.00, 'Resort na praia', 'NF-H004', '2024-12-16', 2),
(5, 400.00, 'Pousada aconchegante', 'NF-H005', '2024-12-20', 3),
(6, 450.00, 'Apartamento alugado', 'NF-H006', '2024-12-21', 3),
(7, 500.00, 'Hotel econômico', 'NF-H007', '2024-12-18', 4),
(8, 480.00, 'Flat moderno', 'NF-H008', '2024-12-19', 4),
(9, 520.00, 'Hostel central', 'NF-H009', '2024-12-23', 5),
(10, 570.00, 'Suites exclusivas', 'NF-H010', '2024-12-24', 5);

INSERT INTO "Compra" VALUES
(1, '2024-12-12', 'Shopping São Paulo', 20.00, 'Presentes de viagem', 1),
(2, '2024-12-16', 'Rio Sul Shopping', 30.00, 'Itens pessoais', 2),
(3, '2024-12-21', 'BH Outlet', 25.00, 'Lembranças', 3),
(4, '2024-12-19', 'Curitiba Mall', 15.00, 'Utilidades', 4),
(5, '2024-12-23', 'Porto Alegre Center', 40.00, 'Compras variadas', 5),
(6, '2024-12-24', 'Manaus Plaza', 50.00, 'Produtos regionais', 6),
(7, '2024-12-25', 'Shopping Recife', 60.00, 'Presentes para família', 7),
(8, '2024-12-26', 'Shopping Fortaleza', 45.00, 'Itens diversos', 8),
(9, '2024-12-27', 'Shopping Salvador', 55.00, 'Compras para eventos', 9),
(10, '2024-12-28', 'Brasília Mall', 70.00, 'Artigos de escritório', 10),
(11, '2024-12-29', 'Porto Alegre Center', 30.00, 'Lembrancinhas', 5);

INSERT INTO "Cosmetico" VALUES
(1, 'Perfume', 'Marca A', 2, 150.00, '2024-12-12', 1),
(2, 'Shampoo', 'Marca B', 1, 50.00, '2024-12-16', 2),
(3, 'Creme hidratante', 'Marca C', 3, 30.00, '2024-12-21', 3),
(4, 'Protetor solar', 'Marca D', 2, 60.00, '2024-12-19', 4),
(5, 'Maquiagem', 'Marca E', 1, 120.00, '2024-12-23', 5),
(6, 'Esmalte', 'Marca F', 5, 15.00, '2024-12-24', 6),
(7, 'Sabonete líquido', 'Marca G', 3, 20.00, '2024-12-25', 7),
(8, 'Loção corporal', 'Marca H', 2, 45.00, '2024-12-26', 8),
(9, 'Gel de banho', 'Marca I', 4, 25.00, '2024-12-27', 9),
(10, 'Tônico facial', 'Marca J', 1, 75.00, '2024-12-28', 10),
(11, 'Creme para mãos', 'Marca K', 3, 30.00, '2024-12-29', 3),
(12, 'Óleo capilar', 'Marca L', 1, 40.00, '2024-12-30', 4),
(13, 'Perfume pequeno', 'Marca M', 2, 90.00, '2024-12-31', 5),
(14, 'Condicionador', 'Marca N', 4, 60.00, '2024-12-25', 7),
(15, 'Kit de cuidados', 'Marca O', 1, 150.00, '2024-12-30', 8);

INSERT INTO "Vestuario" VALUES
(1, 'Camisa', 'Marca P', 2, 80.00, '2024-12-12', 1),
(2, 'Calça', 'Marca Q', 1, 120.00, '2024-12-16', 2),
(3, 'Casaco', 'Marca R', 1, 200.00, '2024-12-21', 3),
(4, 'Bermuda', 'Marca S', 2, 90.00, '2024-12-19', 4),
(5, 'Tênis', 'Marca T', 1, 250.00, '2024-12-23', 5),
(6, 'Jaqueta', 'Marca U', 1, 300.00, '2024-12-24', 6),
(7, 'Camiseta', 'Marca V', 3, 60.00, '2024-12-25', 7),
(8, 'Vestido', 'Marca W', 2, 180.00, '2024-12-26', 8),
(9, 'Saia', 'Marca X', 1, 100.00, '2024-12-27', 9),
(10, 'Chapéu', 'Marca Y', 1, 75.00, '2024-12-28', 10),
(11, 'Shorts', 'Marca Z', 2, 50.00, '2024-12-29', 2),
(12, 'Sandália', 'Marca AA', 1, 80.00, '2024-12-30', 4),
(13, 'Blusa', 'Marca BB', 2, 120.00, '2024-12-31', 6),
(14, 'Calça Jeans', 'Marca CC', 1, 130.00, '2024-12-28', 8),
(15, 'Jaqueta leve', 'Marca DD', 1, 190.00, '2024-12-30', 10);

