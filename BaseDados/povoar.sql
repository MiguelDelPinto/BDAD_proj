PRAGMA foreign_keys = ON;

INSERT INTO Pessoa 
    (cartaoCidadao, nome, dataNascimento, telefone) VALUES
    (15209096, 'Pedro Esteves', '1999-10-10', 927992692);

INSERT INTO Pessoa
    (cartaoCidadao, nome, dataNascimento, telefone) VALUES
    (14591246, 'Miguel Pinto', '1999-10-06', 917146432);
    
INSERT INTO Pessoa
    (cartaoCidadao, nome, dataNascimento, telefone) VALUES
    (15447030, 'Bruno Micaelo', '1999-07-25', 918056656);
    
INSERT INTO Pessoa
    (cartaoCidadao, nome, dataNascimento, telefone) VALUES
    (15001234, 'Jaime Matiz', '1959-08-07', 914224112);
    
INSERT INTO Pessoa
    (cartaoCidadao, nome, dataNascimento, telefone) VALUES
    (15098765, 'Joao Rocha', '1993-05-05', 931234567);

INSERT INTO Utilizador
    (cartaoCidadao) VALUES (15098765);
    
INSERT INTO Utilizador
    (cartaoCidadao) VALUES (15001234);

INSERT INTO Utilizador
    (cartaoCidadao) VALUES (15447030);

INSERT INTO Funcionario
    (cartaoCidadao, salario, contribuinte, morada, horaEntrada, horaSaida) VALUES 
    (15209096, 5000, 257441883, 'Rua do Outeiro de Cima', '09:00', '16:30');
    
INSERT INTO Funcionario
    (cartaoCidadao, salario, contribuinte, morada, horaEntrada, horaSaida) VALUES 
    (14591246, 1500, 233541209, 'Rua Dr. António Macedo', '09:00', '17:00');

INSERT INTO Sala
    (numero, tipo, capacidade) VALUES
    (1, 'Reunioes', 30);
    
INSERT INTO Sala
    (numero, tipo, capacidade) VALUES
    (2, 'Computadores', 20);
    
INSERT INTO Sala
    (numero, tipo, capacidade) VALUES
    (3, 'Jogos', 5);

INSERT INTO Sala
    (numero, tipo, capacidade) VALUES
    (4, 'Leitura', 100);
  
INSERT INTO Reserva
    (motivo, data, hora, duracao, ccUtilizador) VALUES
    ('Clube de Leitura', '2019-04-13', '10:00', 2, 15447030);
    
INSERT INTO Reserva
    (motivo, data, hora, duracao, ccUtilizador) VALUES
    ('Workshop de Introdução à Física Quântica', '2019-04-12', '14:00', 3, 15001234);
    
INSERT INTO Reserva
    (motivo, data, hora, duracao, ccUtilizador) VALUES
    ('Conferência sobre Bases de Dados', '2019-04-12', '11:30', 2, 15098765);
  
INSERT INTO ReservaDeSala
    (idReserva, numeroSala) VALUES
    (1, 4);

INSERT INTO ReservaDeSala
    (idReserva, numeroSala) VALUES
    (2, 2);
    
INSERT INTO ReservaDeSala
    (idReserva, numeroSala) VALUES
    (3, 1);
  
INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('Les Aventures de Tintin', 'Aventura', 6);
    
INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('A Revolução do Algoritmo Mestre', 'Tecnologia', 12);
    
INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('Big C++', 'Tecnologia', 16);
    
INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('Assim Falou Zaratustra', 'Filosofia', 18);
    
INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('Mein Kampf', 'Biografia', 18);

INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('O Deus das Moscas', 'Romance', 12);

INSERT INTO Exemplar
    (possivelRequisitar, idSala, idPublicacao) VALUES
    (1, 4, 1);

INSERT INTO Exemplar
    (possivelRequisitar, idSala, idPublicacao) VALUES
    (1, 4, 2);

INSERT INTO Exemplar
    (possivelRequisitar, idSala, idPublicacao) VALUES
    (0, 4, 3);
    
INSERT INTO Exemplar
    (possivelRequisitar, idSala, idPublicacao) VALUES
    (1, 4, 4);
    
INSERT INTO Exemplar
    (possivelRequisitar, idSala, idPublicacao) VALUES
    (0, 4, 5);
    
INSERT INTO Exemplar
    (possivelRequisitar, idSala, idPublicacao) VALUES
    (1, 4, 6);

INSERT INTO TipoEquipamento
    (nome, proposito) VALUES
    ('Computador', 'Trabalho variável');

INSERT INTO TipoEquipamento
    (nome, proposito) VALUES
    ('Projetor', 'Projetar imagem');
    

--CREATE TABLE Equipamento(
--    idEquipamento INTEGER PRIMARY KEY AUTOINCREMENT,
--    modelo TEXT REFERENCES Modelo(nomeModelo),
--    numeroSala INTEGER REFERENCES Sala(numero) -- ,
--);

--CREATE TABLE Modelo(
--    nomeModelo TEXT NOT NULL,
--    marca TEXT NOT NULL,
--    nomeTipo TEXT REFERENCES TipoEquipamento(nome)
--);


--CREATE TABLE Requisicao(
--    idRequisicao INTEGER PRIMARY KEY AUTOINCREMENT,
--    data DATE NOT NULL,
--    hora TIME NOT NULL,
--    diasAtraso INTEGER,
--    multa FLOAT,
--    ccUtilizador INTEGER REFERENCES Utilizador(cartaoCidadao)
--);


--CREATE TABLE TipoDeManutencao(
--    nome TEXT PRIMARY KEY UNIQUE
--);

--CREATE TABLE AtoDeManutencao(
--    ccFuncionario INTEGER REFERENCES Funcionario(cartaoCidadao) NOT NULL,
--    nomeManutencao TEXT REFERENCES TipoDeManutencao(nome) NOT NULL,
--    idExemplar INTEGER REFERENCES Exemplar(idExemplar) NOT NULL,
--   PRIMARY KEY(ccFuncionario, nomeManutencao, idExemplar)
--);

--CREATE TABLE Livro(
--    idPublicacao INTEGER PRIMARY KEY REFERENCES Publicacao(idPublicacao) NOT NULL,
--    editora TEXT NOT NULL,
--    edicao INTEGER CHECK (edicao > 0) NOT NULL
--);

--CREATE TABLE Autor(
--    idAutor INTEGER PRIMARY KEY AUTOINCREMENT,
--    nome TEXT NOT NULL
--);


--CREATE TABLE Autoria(
--    idPublicacao INTEGER REFERENCES Publicacao(idPublicacao) NOT NULL,
--    idAutor INTEGER REFERENCES Autor(idAutor) NOT NULL,
--    PRIMARY KEY(idPublicacao, idAutor)
--);

--CREATE TABLE Software(
--    idPublicacao INTEGER PRIMARY KEY REFERENCES Publicacao(idPublicacao) NOT NULL,
--    versao FLOAT NOT NULL CHECK(versao > 0),
--    developer TEXT NOT NULL
--);

--CREATE TABLE Album(
--    idPublicacao INTEGER PRIMARY KEY REFERENCES Publicacao(idPublicacao) NOT NULL,
--    produtor TEXT NOT NULL
--);

--CREATE TABLE Artista(
--    idArtista INTEGER PRIMARY KEY AUTOINCREMENT,
--    nome TEXT NOT NULL
--);

--CREATE TABLE Interpreta(
--    idPublicacao INTEGER REFERENCES Publicacao(idPublicacao) NOT NULL,
--    idArtista INTEGER REFERENCES Artista(idArtista) NOT NULL,
--    PRIMARY KEY(idPublicacao, idArtista)
--);

--CREATE TABLE Filme(
--    idPublicacao INTEGER PRIMARY KEY REFERENCES Publicacao(idPublicacao) NOT NULL,
--    realizador TEXT NOT NULL,
--    estudio TEXT NOT NULL
--);