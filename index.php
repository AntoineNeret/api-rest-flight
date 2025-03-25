<?php
// si installé avec composer
require 'vendor/autoload.php';
require_once 'config/bootstrap.php';
require_once 'src/database/films.php';

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
    Flight::json(['status'=>'success', 'data'=>getDetailFilm($id)[0]]);
});

//Route pour récupérer les séances d'un film à partir de l'id de celui-ci
Flight::route('/api/films/@id/seances', function(int $id) {
    //Envoie un JSON qui contient le status de succès et le résultat de la fonction qui communique avec la base de données
    Flight::json(['status'=>'success', 'data'=>getSeanceFilm($id)]);
});

Flight::start();