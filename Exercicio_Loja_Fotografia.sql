CREATE DATABASE Fuji;

USE Fuji;

CREATE TABLE PessoaFisica(
    CPF char(11) NOT NULL,
    RG varchar(10),
    DataNascimento DATE,
    Sexo char,
    Nome varchar(50) not NULL,
    Codigo Int NOT NULL
)

CREATE TABLE PessoaJuridica(
    CNPJ char(14) NOT NULL,
    inscricaoEstadual char(9),
    NomeResponsavel varchar(50) not NULL,
    Nome varchar(50) not NULL,
    Codigo Int NOT NULL
)

CREATE TABLE Funcionario(
    Codigo int NOT NULL,
    Departamento VARCHAR(30),
    Nome VARCHAR(50) NOT NULL,
    Funcao VARCHAR(30) NOT NULL
)

CREATE TABLE Produto(
    Tipo VARCHAR(20) NOT NULL,
    Descricao VARCHAR(50) NOT NULL,
    PrecoCusto DECIMAL NOT NULL,
    PrecoVenda DECIMAL NOT NULL,
    QtdMin int NOT NULL,
    QtdEstoque int NOT NULL
)

CREATE TABLE Venda(
    Id INT NOT NULL,
    DataVenda DATETIME NOT NULL,
    FormaPgto VARCHAR(10) NOT NULL,
    Valor DECIMAL NOT NULL
)

CREATE TABLE Endereco(
    Logradouro VARCHAR(50) NOT NULL,
    Numero int,
    Complemento varchar(50),
    Bairro varchar(20) NOT NULL,
    CEP char(20) NOT NULL,
    Cidade varchar(30) NOT NULL,
    Estado char(2) NOT NULL,
    Pais char(2) NOT NULL
)

CREATE TABLE Telefone(
    Tipo VARCHAR(10) NOT NULL,
    Numero VARCHAR(11) NOT NULL
)
GO

ALTER TABLE Funcionario ADD
    Tipo_Telefone VARCHAR(10) NOT NULL

    CONSTRAINT FK_Funcionario_Telefone FOREIGN KEY (Tipo_Telefone) REFERENCES Telefone(Tipo) 
