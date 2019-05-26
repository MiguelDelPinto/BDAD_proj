--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 15 15 15 15

SELECT 
    COUNT(distinct Livro.idPublicacao) AS NumeroLivros,
    COUNT(distinct Software.idPublicacao) AS NumeroSoftware,
    COUNT(distinct Album.idPublicacao) AS NumeroAlbums,
    COUNT(distinct Filme.idPublicacao) AS NumeroFilmes
FROM Livro, Software, Album, Filme;