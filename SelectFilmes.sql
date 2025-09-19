-- 1
select nome, ano from filmes;
-- 2 
select nome, ano from filmes order by ano asc;
-- 3
select nome, ano, duracao from filmes where nome = "De Volta para o Futuro";
-- 4
select nome, ano, duracao from filmes where ano = 1997;
-- 5
select * from filmes where ano > 2000;
-- 6
select * from filmes where duracao > 100 and duracao < 150 order by duracao asc;
-- 7
select ano, COUNT(*) as Quantidade from filmes group by ano order by duracao desc;
-- 8
select * from atores where genero = "M";
-- 9
select * from atores where genero = "F" order by primeiroNome asc;
-- 10
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero FROM Filmes INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;
-- 11
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero FROM Filmes INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id where Genero = "Mistério";
-- 12
SELECT Filmes.Nome AS Nome, Atores.PrimeiroNome, Atores.UltimoNome, elencofilme.Papel FROM Filmes INNER JOIN elencofilme
ON Filmes.Id = elencofilme.IdFilme INNER JOIN Atores ON elencofilme.IdAtor = Atores.Id;


