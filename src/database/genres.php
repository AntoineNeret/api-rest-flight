<?php
function getGenres(): array
{

$requete = getConnexion()->prepare("SELECT * FROM genres;");
$requete->execute();

return $requete->fetchAll(PDO::FETCH_ASSOC);
}