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

// ou si installé manuellement via un fichier zip
// require 'flight/Flight.php';

Flight::route('/', function() {
    print_r(getFilms());
});

Flight::route('/api/films', function() {
    Flight::json(getFilms());
});

Flight::start();