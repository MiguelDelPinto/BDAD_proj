SELECT 
    COUNT(distinct Livro.idPublicacao) AS numLivros,
    COUNT(distinct Software.idPublicacao) AS numSoftware,
    COUNT(distinct Album.idPublicacao) AS numAlbums,
    COUNT(distinct Filme.idPublicacao) AS numFilmes
FROM Livro, Software, Album, Filme;