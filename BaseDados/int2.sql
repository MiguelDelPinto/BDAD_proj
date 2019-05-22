SELECT 
    COUNT(Livro.idPublicacao) AS numLivros,
    COUNT(Software.idPublicacao) AS numSoftware,
    COUNT(Album.idPublicacao) AS numAlbums,
    COUNT(Filme.idPublicacao) AS numFilmes
FROM Livro, Software, Album, Filme;