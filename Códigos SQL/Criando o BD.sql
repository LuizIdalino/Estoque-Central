create database If NOT EXISTS Estoque_Central;
USE Estoque_Central;

CREATE TABLE Cidade (
  codcidade INT  NOT NULL ,
  cidade VARCHAR(30) NULL,
  uf CHAR(2) NULL,
  PRIMARY KEY(codcidade)
);

CREATE TABLE Categoria (
  codcategoria INT  NOT NULL,
  categoria VARCHAR(40) NULL,
  PRIMARY KEY(codcategoria)
);

CREATE TABLE Transportadora (
  codtransportadora INT  NOT NULL ,
  Cidade_codcidade INT  NOT NULL,
  transportadora VARCHAR(60) NULL,
  endereco VARCHAR(20) NULL,
  num INT  NULL,
  bairro VARCHAR(20) NULL,
  cep CHAR(9) NULL,
  cnpj CHAR(18) NULL,
  insc VARCHAR(15) NULL,
  contato VARCHAR(14) NULL,
  tel CHAR(14) NULL,
  PRIMARY KEY(codtransportadora),
  FOREIGN KEY (Cidade_codcidade) REFERENCES cidade(codcidade)
);

CREATE TABLE Loja (
  codloja INT  NOT NULL ,
  Cidade_codcidade INT  NOT NULL,
  nome VARCHAR(40) NULL,
  endereco VARCHAR(20) NULL,
  num INT  NULL,
  bairro VARCHAR(20) NULL,
  tel CHAR(14) NULL,
  insc VARCHAR(15) NULL,
  cnpj CHAR(18) NULL,
  cep CHAR(9) NULL,
  PRIMARY KEY(codloja),
  FOREIGN KEY (Cidade_codcidade) REFERENCES cidade(codcidade)
);

CREATE TABLE Entrada (
  codentrada INT  NOT NULL ,
  Transportadora_codtransportadora INT  NOT NULL,
  dataped DATE NULL,
  dataentr DATE NULL,
  total REAL NULL,
  frete REAL NULL,
  numnf INT  NULL,
  imposto REAL NULL,
  PRIMARY KEY(codentrada),
  FOREIGN KEY (Transportadora_codtransportadora) REFERENCES Transportadora(codtransportadora)
);

CREATE TABLE Fornecedor (
  codfornecedor INT  NOT NULL ,
  Cidade_codcidade INT  NOT NULL,
  fornecedor VARCHAR(40) NULL,
  endereco VARCHAR(20) NULL,
  num INT  NULL,
  bairro VARCHAR(20) NULL,
  cep CHAR(9) NULL,
  contato VARCHAR(14) NULL,
  cnpj CHAR(18) NULL,
  insc VARCHAR(15) NULL,
  tel CHAR(14) NULL,
  PRIMARY KEY(codfornecedor),
  FOREIGN KEY(Cidade_codcidade) REFERENCES Cidade(codcidade)
);

CREATE TABLE Saida (
  codsaida INT  NOT NULL ,
  Loja_codloja INT  NOT NULL,
  Transportadora_codtransportadora INT  NOT NULL,
  total REAL NULL,
  frete REAL NULL,
  imposto REAL NULL,
  PRIMARY KEY(codsaida),
  FOREIGN KEY(Transportadora_codtransportadora) REFERENCES Transportadora(codtransportadora),
  FOREIGN KEY(Loja_codloja) REFERENCES Loja(codloja)
);

CREATE TABLE Produto (
  codproduto INT  NOT NULL ,
  Categoria_codcategoria INT  NOT NULL,
  Fornecedor_codfornecedor INT  NOT NULL,
  descricao VARCHAR(60) NULL,
  peso REAL NULL,
  qtdemin INT  NULL,
  PRIMARY KEY(codproduto),
  FOREIGN KEY(Fornecedor_codfornecedor) REFERENCES Fornecedor(codfornecedor),
  FOREIGN KEY(Categoria_codcategoria) REFERENCES Categoria(codcategoria)
);

CREATE TABLE ItemEntrada (
  coditementrada INT  NOT NULL ,
  Produto_codproduto INT  NOT NULL,
  Entrada_codentrada INT  NOT NULL,
  lote VARCHAR(10) NULL,
  qtde INT  NULL,
  valor REAL NULL,
  PRIMARY KEY(coditementrada),
  FOREIGN KEY(Entrada_codentrada) REFERENCES Entrada(codentrada),
  FOREIGN KEY(Produto_codproduto) REFERENCES Produto(codproduto)
);

CREATE TABLE ItemSaida (
  coditemsaida INT  NOT NULL ,
  Saida_codsaida INT  NOT NULL,
  Produto_codproduto INT  NOT NULL,
  lote VARCHAR(10) NULL,
  qtde INT  NULL,
  valor REAL NULL,
  PRIMARY KEY(coditemsaida),
  FOREIGN KEY(Produto_codproduto) REFERENCES Produto(codproduto),
  FOREIGN KEY(Saida_codsaida) REFERENCES Saida(codsaida)
);