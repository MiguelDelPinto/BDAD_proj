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
    
INSERT INTO Livro
    (idPublicacao, editora, edicao) VALUES
    (1, 'Editorial Verbo', 1);
    
INSERT INTO Autor
    (nome) VALUES ('Hergé');
    
INSERT INTO Autoria
    (idPublicacao, idAutor) VALUES
    (1, 1);
    
INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('A Revolução do Algoritmo Mestre', 'Tecnologia', 12);
    
INSERT INTO Livro
    (idPublicacao, editora, edicao) VALUES
    (2, 'Manuscrito Editora', 1);
    
INSERT INTO Autor
    (nome) VALUES ('Pedro Domingos');
    
INSERT INTO Autoria
    (idPublicacao, idAutor) VALUES
    (2, 2);

INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('Big C++', 'Tecnologia', 16);
    
INSERT INTO Livro
    (idPublicacao, editora, edicao) VALUES
    (3, 'Wiley', 1);
    
INSERT INTO Autor
    (nome) VALUES ('Timothy A. Budd and Cay S. Horstmann');
    
INSERT INTO Autoria
    (idPublicacao, idAutor) VALUES
    (3, 3);
    
INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('Assim Falou Zaratustra', 'Filosofia', 18);
    
INSERT INTO Livro
    (idPublicacao, editora, edicao) VALUES
    (4, 'Guimarães Editores', 1);

INSERT INTO Autor
    (nome) VALUES ('Friedrich Nietzche');
    
INSERT INTO Autoria
    (idPublicacao, idAutor) VALUES
    (4, 4);

INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('Mein Kampf', 'Biografia', 18);
    
INSERT INTO Livro
    (idPublicacao, editora, edicao) VALUES
    (5, 'Eher Verlag', 2);
    
INSERT INTO Autor
    (nome) VALUES ('Adolf Hitler');
    
INSERT INTO Autoria
    (idPublicacao, idAutor) VALUES
    (5, 5);

INSERT INTO Publicacao
    (nome, genero, idadeMinima) VALUES
    ('O Deus das Moscas', 'Romance', 12);

INSERT INTO Livro
    (idPublicacao, editora, edicao) VALUES
    (6, 'BIS', 3);
    
INSERT INTO Autor
    (nome) VALUES ('William Golding');
    
INSERT INTO Autoria
    (idPublicacao, idAutor) VALUES
    (6, 6);

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
    
INSERT INTO Modelo
    (nomeModelo, marca, nomeTipo) VALUES
    ('K56CB', 'ASUSTeK COMPUTER INC.', 'Computador');
    
INSERT INTO Modelo
    (nomeModelo, marca, nomeTipo) VALUES
    ('Home Cinema', 'Epson', 'Projetor');

INSERT INTO Equipamento
    (modelo, numeroSala) VALUES
    ('K56CB', 2);
    
INSERT INTO Equipamento
    (modelo, numeroSala) VALUES
    ('K56CB', 2);
    
INSERT INTO Equipamento
    (modelo, numeroSala) VALUES
    ('K56CB', 1);
    
INSERT INTO Equipamento
    (modelo, numeroSala) VALUES
    ('Home Cinema', 1);
    
INSERT INTO Requisicao
    (data, hora, ccUtilizador) VALUES
    ('2019-04-13', '16:30', 15098765);
    
INSERT INTO Requisicao
    (data, hora, ccUtilizador) VALUES 
    ('2019-04-12', '15:00', 15001234);

INSERT INTO Requisicao
    (data, hora, ccUtilizador) VALUES 
    ('2019-04-20', '10:00', 15447030);

INSERT INTO TipoDeManutencao
    (nome) VALUES ('Limpeza');
    
INSERT INTO TipoDeManutencao
    (nome) VALUES ('Restauro');

INSERT INTO AtoDeManutencao
    (ccFuncionario, nomeManutencao, idExemplar) VALUES
    (15209096, 'Restauro', 1);
    
INSERT INTO AtoDeManutencao
    (ccFuncionario, nomeManutencao, idExemplar) VALUES
    (14591246, 'Limpeza', 2);

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