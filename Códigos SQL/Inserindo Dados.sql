SET foreign_key_checks = 0;

INSERT INTO  categoria VALUES (1, 'Eletrônico');
INSERT INTO categoria VALUES (2, 'Eletrodoméstico');
INSERT INTO categoria VALUES (3, 'Informática');
INSERT INTO categoria VALUES (4, 'Telefonia');
INSERT INTO categoria VALUES (5, 'Móveis');

INSERT INTO cidade VALUES (1, 'Muriaé', 'MG');
INSERT INTO cidade VALUES (2, 'Belo Horizonte', 'MG');
INSERT INTO cidade VALUES (3, 'Divinópolis', 'MG');
INSERT INTO cidade VALUES (4, 'São Paulo', 'SP');
INSERT INTO cidade VALUES (5, 'Santo André', 'SP');

INSERT INTO Loja VALUES (1, 1, 'Paraíso dos Eletrodomésticos', 'Rua João da Silva', 100, 'Centro', '1111-2222', '123.321.00', '94.405.385/0001-35', '21000-380');
INSERT INTO Loja VALUES (2, 2, 'Eletromundo', 'Rua 1º de maio', 1500, 'Centro', '1111-2221', '123.456.00', '94.405.385/0002-35', '21000-380');
INSERT INTO Loja VALUES (3, 3, 'Minaseletro', 'Rua JK', 95, 'Centro', '1111-2223', '654.321.00', '94.405.385/0003-35', '21000-380');
INSERT INTO Loja VALUES (4, 4, 'SPEletro', 'Rua A', 102, 'Centro', '1111-2224', '123.321.04', '94.405.385/0004-35', '21000-380');
INSERT INTO Loja VALUES (5, 5, 'Eletrodomésticos e cia.', 'Rua José Junior', 71, 'Centro', '1111-2225', '123.321.05', '94.405.385/0005-35', '21000-380');

INSERT INTO Fornecedor VALUES (1, 4, 'LG', 'Av. Brasil', 1, 'Centro', '12000-321', 'Fábio', '94.405.385/0007-35', '123.321.07', '1234-4321');
INSERT INTO Fornecedor VALUES (2, 4, 'Nokia', 'Av. Afonso Pena', 198, 'Centro', '12000-321', 'Carlos', '94.405.385/0007-35', '123.321.07', '1234-4321');
INSERT INTO Fornecedor VALUES (3, 4, 'Gradiente', 'Av. Paraiso', 3654, 'Centro', '12000-321', 'Felipe', '94.405.385/0007-35', '123.321.07', '1234-4321');
INSERT INTO Fornecedor VALUES (4, 4, 'Philips', 'Av. Joaquim Gabriel', 24, 'Centro', '12000-321', 'Alex', '94.405.385/0007-35', '123.321.07', '1234-4321');
INSERT INTO Fornecedor VALUES (5, 4, 'Politorno', 'Av. Manoel de Nobrega', 156, 'Centro', '12000-321', 'Breno', '94.405.385/0007-35', '123.321.07', '1234-4321');

INSERT INTO Produto VALUES (1, 1, 1, 'TV 50" Plasma 600Hz c/ HDMI, Conversor Digital Integrado, Entrada p/ PC e USB 50PJ350 - LG', 39.9, 3);
INSERT INTO Produto VALUES (2, 1, 2, 'DVD Player c/ karaokê, Entrada USB e DivX - DVP3520KX - Philips', 1.5, 5);
INSERT INTO Produto VALUES (3, 1, 3,'TV 37" LCD - LCD3730 - (1366 X 768 Pixels) c/ HDTV Ready, Entrada HDMI, Widescreen e Progressive Scan - Gradiente', 3, 2);
INSERT INTO Produto VALUES (4, 2, 4, 'Refrigerador Brastemp Ative! Frost Free 403 litros BRM47', 81, 2);
INSERT INTO Produto VALUES (5, 2, 5, 'Lavadora e Secadora de Roupa 7kg Ative! BWS24 - Prata - Brastemp', 75, 2);

INSERT INTO Entrada VALUES (1, 1, '02/20/2020', 'transportadora03/01/2020', 1539.01, 720.00, 0000001, 153.90);
INSERT INTO Entrada VALUES (2, 2, '03/13/2020', '04/07/2020', 2984.00, 832.00, 0000002, 298.40);
INSERT INTO Entrada VALUES (3, 3, '03/28/2020', '04/14/2020', 489.00, 218.00, 0000003, 48.90);
INSERT INTO Entrada VALUES (4, 4, '04/27/2020', '04/30/2020', 3982.01, 1023.00, 0000004, 398.20);
INSERT INTO Entrada VALUES (5, 5, '05/19/2020', '05/30/2020', 1827.00, 291.00, 0000005, 182.70);

INSERT INTO Saida VALUES (1, 1, 1, 300.00, 180.00, 30.00);
INSERT INTO Saida VALUES (2, 1, 1, 1073.00, 180.00, 107.30);
INSERT INTO Saida VALUES (3, 2, 1, 512.00, 250.00, 51.20);
INSERT INTO Saida VALUES (4, 3, 1, 793.00, 70.00, 79.30);
INSERT INTO Saida VALUES (5, 4, 1, 800.00, 0.00, 80.00);

INSERT INTO ItemEntrada VALUES (1, 7, 1, 'AB0021', 30, 120.00);
INSERT INTO ItemEntrada VALUES (2, 13, 1, 'AB0022', 49, 160.00);
INSERT INTO ItemEntrada VALUES (3, 1, 1, 'AB0023', 18, 90.00);
INSERT INTO ItemEntrada VALUES (4, 4, 2, 'AB0024', 7, 300.00);
INSERT INTO ItemEntrada VALUES (5, 9, 2, 'AB0025', 21, 169.00);

INSERT INTO ItemSaida VALUES (1, 1, 7, 'AB0021', 16, 120.00);
INSERT INTO ItemSaida VALUES (2, 1, 13, 'AB0022', 46, 160.00);
INSERT INTO ItemSaida VALUES (3, 1, 1, 'AB0023', 16, 90.00);
INSERT INTO ItemSaida VALUES (4, 2, 4, 'AB0024', 5, 300.00);
INSERT INTO ItemSaida VALUES (5, 2, 9, 'AB0025', 20, 169.00);

INSERT INTO Transportadora VALUES (1, 4, 'Braspress', 'SHCS 408', 1, 'Asa sul', '12000-321',  '94.405.385/0007-35', '123.321.07', 'Fábio', '1234-4321');
INSERT INTO Transportadora VALUES (2, 4, 'TNT Mercúrio Cargas e Encomendas Expressas', 'SHCS 205', 198, 'Asa sul', '12000-321',  '94.405.385/0007-35', '123.321.07', 'Carlos', '1234-4321');
INSERT INTO Transportadora VALUES (3, 4, 'Rodonaves Transporte e Encomendas', 'SHCS 302', 3654, 'Asa sul', '12000-321', '94.405.385/0007-35', '123.321.07', 'Felipe', '1234-4321');
INSERT INTO Transportadora VALUES (4, 4, 'Patrus transportes urgentes LTDA', 'SHCS 416', 24, 'Asa sul', '12000-321', '94.405.385/0007-35', '123.321.07', 'Alex', '1234-4321');
INSERT INTO Transportadora VALUES (5, 4, 'JAMEF transportes EIRELI', 'SHCS 202', 156, 'Asa sul', '12000-321', '94.405.385/0007-35', '123.321.07', 'Breno', '1234-4321');
