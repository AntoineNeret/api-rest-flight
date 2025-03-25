<?php

//Fonction qui récupère les données des films dans la base de données
//Et renvoie les données sous forme de tableau associatif
function getFilms(): array
{

    $requete = getConnexion()->prepare("SELECT * FROM films AS F INNER JOIN genres AS G WHERE F.genre_id = G.genre_id ORDER BY F.id ASC;");
    $requete->execute();

    return $requete->fetchAll(PDO::FETCH_ASSOC);
}

//Fonction qui récupère les données d'un film dans la base de données à partir de son identifiant
// Et renvoie les données sous forme de tableau associatif
function getDetailFilm(int $id): array | string
{
    $requete = getConnexion()->prepare("SELECT * FROM films AS F INNER JOIN genres AS G WHERE F.genre_id = G.genre_id AND F.id = :id ORDER BY F.id ASC;");
    $requete->bindParam(":id", $id);

    $requete->execute();
    if (empty($requete->fetchAll(PDO::FETCH_ASSOC)) ) {
        return "Erreur, aucun film correspondant n'a été trouvé !";
    }
    return $requete->fetchAll(PDO::FETCH_ASSOC);
}

//Fonction qui récupère les séances d'un film dans la base de données à partir de l'identifiant du film
//Et renvoie les données sous forme de tableau associatif
function getSeanceFilm(int $id): array | string
{
    $requete = getConnexion()->prepare("SELECT * FROM films WHERE id = :id");
    $requete->bindParam(":id", $id);
    $requete->execute();
    if (empty($requete->fetchAll(PDO::FETCH_ASSOC)) ) {
        return "Erreur, aucun film correspondant n'a été trouvé !";
    }

    $requete = getConnexion()->prepare("SELECT * FROM seances WHERE film_id = :id;");
    $requete->bindParam(":id", $id);

    $requete->execute();
    if (empty($requete->fetchAll(PDO::FETCH_ASSOC)) ) {
        return "Erreur, aucun correspondant n'a été trouvé !";
    }
    return $requete->fetchAll(PDO::FETCH_ASSOC);
}