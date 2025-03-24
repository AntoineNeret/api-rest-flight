<?php
function getFilms(): array
{

    $requete = getConnexion()->prepare("SELECT * FROM films;");

    $requete->execute();

    return $requete->fetchAll(PDO::FETCH_ASSOC);
}

function getDetailFilm(int $id): array
{
    $requete = getConnexion()->prepare("SELECT * FROM films WHERE id = :id;");
    $requete->bindParam(":id", $id);

    $requete->execute();

    return $requete->fetchAll(PDO::FETCH_ASSOC);
}