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

    //Test si un film correspondant à l'id existe en base de données
    if (!$requete->execute()) {
        return "Erreur, aucun film correspondant n'a été trouvé !";
    }
    return $requete->fetch();
}

//Fonction qui récupère les séances d'un film dans la base de données à partir de l'identifiant du film
//Et renvoie les données sous forme de tableau associatif
function getSeanceFilm(int $id): array | string
{

    //On teste si l'identifiant récupéré correspond à un film existant en base de données
    $requete = getConnexion()->prepare("SELECT * FROM films WHERE id = :id");
    $requete->bindParam(":id", $id);
    $requete->execute();
    if (empty($requete->fetchAll(PDO::FETCH_ASSOC))) {
        return "Erreur, aucun film correspondant n'a été trouvé !";
    }

    //On récupère les données des séances et on test s'il y en a en base de données
    $requete = getConnexion()->prepare("SELECT * FROM seances WHERE film_id = :id;");
    $requete->bindParam(":id", $id);
    $requete->execute();
    if (!$requete->execute()) {
        return "Erreur, aucune séance pour ce film n'ont été trouvées !";
    }
    return $requete->fetchAll(PDO::FETCH_ASSOC);
}

function modifyFilm(int $id, string $titre, string $realisateur, string $duree, string $date_sortie, string $affiche, int $genre_id, string $description): array | string
{

    //On teste si l'identifiant récupéré correspond à un film existant en base de données
    $requete = getConnexion()->prepare("UPDATE films SET titre = :titre, realisateur= :realisateur, duree= :duree, date_sortie = :date_sortie, affiche = :affiche, genre_id = :genre_id, description = :description WHERE id = :id;");
    $requete->bindParam(":id", $id);
    $requete->bindParam(":titre", $titre);
    $requete->bindParam(":realisateur", $realisateur);
    $requete->bindParam(":duree", $duree);
    $requete->bindParam(":date_sortie", $date_sortie);
    $requete->bindParam(":affiche", $affiche);
    $requete->bindParam(":genre_id", $genre_id);
    $requete->bindParam(":description", $description);
    $requete->execute();
    if (empty($requete->fetchAll(PDO::FETCH_ASSOC))) {
        return "Erreur, aucun film correspondant n'a été trouvé !";
    }

    //On récupère les données des séances et on test s'il y en a en base de données
    $requete = getConnexion()->prepare("SELECT * FROM seances WHERE film_id = :id;");
    $requete->bindParam(":id", $id);
    $requete->execute();
    if (!$requete->execute()) {
        return "Erreur, aucune séance pour ce film n'ont été trouvées !";
    }
    return $requete->fetchAll(PDO::FETCH_ASSOC);
}

function addFilm(string $titre, string $realisateur, string $duree, string $date_sortie, string $affiche, int $genre_id, string $description)
{
    $requete = getConnexion()->prepare("INSERT INTO films(titre,realisateur,duree,date_sortie,affiche,genre_id,description) VALUES (:titre,:realisateur,:duree,:date_sortie,:affiche,:genre_id,:description)");
    $requete->bindParam(":titre", $titre);
    $requete->bindParam(":realisateur", $realisateur);
    $requete->bindParam(":duree", $duree);
    $requete->bindParam(":date_sortie", $date_sortie);
    $requete->bindParam(":affiche", $affiche);
    $requete->bindParam(":genre_id", $genre_id);
    $requete->bindParam(":description", $description);
    $requete->execute();

    return $requete->fetchAll(PDO::FETCH_ASSOC);
}

function deleteSeanceFilm(int $id)
{
    $requete = getConnexion()->prepare("DELETE FROM seances WHERE id = :id;");
    $requete->bindParam(":id", $id);
    $requete->execute();
    return $requete->fetchAll(PDO::FETCH_ASSOC);

}
