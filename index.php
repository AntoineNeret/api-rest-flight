<?php
// si installé avec composer
require 'vendor/autoload.php';
require_once 'config/bootstrap.php';
require_once 'src/database/films.php';
require_once 'src/database/genres.php';

// Configuration CORS
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type, Authorization');
header('Content-Type: application/json');

// Gestion des requêtes OPTIONS (preflight)
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header('HTTP/1.1 200 OK');
    exit();
}

//Route pour récupérer tous les films
Flight::route('/api/films', function() {
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>getFilms()]);
});

//Route pour récupérer les détails d'un film à partir de l'id de celui-ci
Flight::route('/api/films/@id', function(int $id) {
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>getDetailFilm($id)]);
});

//Route pour récupérer les séances d'un film à partir de l'id de celui-ci
Flight::route('/api/films/@id/seances', function(int $id) {
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>getSeanceFilm($id)]);
});
//Route pour supprimer les séances d'un film à partir de l'id de celui-ci
Flight::route('/api/films/@id/seance/delete', function(int $id){
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>deleteSeanceFilm($id)]);
});
//Route pour ajouter un film à la base de données
Flight::route('/api/films/ajout/@titre/@realisateur/@duree/@date_sortie/@affiche/@genre_id/@description', function(string $titre, string $realisateur, string $duree, string $date_sortie, string $affiche, int $genre_id, string $description){
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>addFilm($titre, $realisateur, $duree, $date_sortie, $affiche, $genre_id, $description)]);
});
//Route pour récupérer les genres de film
Flight::route('/api/genres/', function(){
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>getGenres()]);
});
//Route pour modifier un film
Flight::route('/api/films/modif/@id/@titre/@realisateur/@duree/@date_sortie/@affiche/@genre_id/@description', function(int $id,string $titre, string $realisateur, string $duree, string $date_sortie, string $affiche, int $genre_id, string $description){
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>modifyFilm($id , $titre, $realisateur, $duree, $date_sortie, $affiche, $genre_id, $description)]);
});


Flight::start();