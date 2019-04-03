DROP TABLE IF EXISTS Pessoa;
DROP TABLE IF EXISTS Utilizador;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Reserva;
DROP TABLE IF EXISTS Sala;
DROP TABLE IF EXISTS ReservaDeSala;
DROP TABLE IF EXISTS Equipamento;
DROP TABLE IF EXISTS TipoEquipamento;
DROP TABLE IF EXISTS Requisicao;
DROP TABLE IF EXISTS Exemplar;
DROP TABLE IF EXISTS TipoDeManutencao;
DROP TABLE IF EXISTS AtoDeManutencao;
DROP TABLE IF EXISTS Publicacao;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS Autor;
DROP TABLE IF EXISTS Autoria;
DROP TABLE IF EXISTS Software;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Artista;
DROP TABLE IF EXISTS Interpreta;
DROP TABLE IF EXISTS Filme;

PRAGMA foreign_keys = ON;

CREATE TABLE Pessoa(
    cartaoCidadao INTEGER UNIQUE PRIMARY KEY,
    nome TEXT NOT NULL,
    dataNascimento DATE NOT NULL,
    telefone INTEGER NOT NULL
);

CREATE TABLE Utilizador(
    cartaoCidado INTEGER UNIQUE PRIMARY KEY REFERENCES Pessoa(cartaoCidadao)
);

CREATE TABLE Funcionario(
    cartaoCidadao INTEGER UNIQUE PRIMARY KEY REFERENCES Pessoa(cartaoCidadao),
    salario FLOAT,
    contribuinte INTEGER NOT NULL UNIQUE,
    morada TEXT NOT NULL,
    horaEntrada TIME NOT NULL,
    horaSaida TIME NOT NULL
);

CREATE TABLE Reserva(
    idReserva INTEGER PRIMARY KEY AUTOINCREMENT,
    motivo TEXT,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    duracao INTEGER NOT NULL,
    ccUtilizador INTEGER REFERENCES Utilizador(cartaoCidadao)
);

CREATE TABLE Sala(
    numero INTEGER UNIQUE PRIMARY KEY,
    tipo TEXT,
    capacidade INTEGER NOT NULL
);

CREATE TABLE ReservaDeSala(
    idReserva INTEGER REFERENCES Reserva(idReserva),
    numeroSala INTEGER REFERENCES Sala(numero),
    PRIMARY KEY(idReserva, numeroSala) 
);

CREATE TABLE Equipamento(
    idEquipamento INTEGER PRIMARY KEY AUTOINCREMENT,
    marca TEXT,
    modelo TEXT,
    numeroSala INTEGER REFERENCES Sala(numero),
    nomeTipo TEXT REFERENCES TipoEquipamento(nome)
);

CREATE TABLE TipoEquipamento(
    nome TEXT UNIQUE PRIMARY KEY,
    proposito TEXT,
    CONSTRAINT nome_tipo CHECK (
                        nome = 'Leitor de Cds' 
                        OR nome = 'Leitor de DVDs' 
                        OR nome = 'Leitor de VHS'
                        OR nome = 'Computador'
                        OR nome = 'Projetor'
                        OR nome = 'Televisao')
);

CREATE TABLE Requisicao(
    idRequisicao INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    diasAtraso INTEGER,
    multa FLOAT,
    ccUtilizador INTEGER REFERENCES Utilizador(cartaoCidadao)
);

CREATE TABLE Exemplar(
    idExemplar INTEGER PRIMARY KEY AUTOINCREMENT,
    possivelRequisitar INTEGER,
    idSala INTEGER REFERENCES Sala(numero),
    idPublicacao INTEGER REFERENCES Publicacao(idPublicacao),
    CONSTRAINT boolean CHECK (possivelRequisitar = 0 OR possivelRequisitar = 1)
);

CREATE TABLE TipoDeManutencao(
    nome TEXT PRIMARY KEY UNIQUE
);