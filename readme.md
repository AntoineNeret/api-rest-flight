# TP : Développement d'une API REST pour une application de cinéma

## Contexte

Dans le cadre de ce travail pratique, vous allez développer une API REST pour une application web de cinéma. Cette API servira de backend pour une application web permettant aux utilisateurs de consulter les films à l'affiche et leurs séances.


## Objectif

Développer une API REST fonctionnelle qui permettra :
- La récupération de la liste des films
- La consultation des détails d'un film spécifique
- La gestion des séances de cinéma

# Sommaire
- [Installation](#installation)
- [Utilisation](#utilisation)


# Installation

Ouvrir un invite de commande, et lancer les commandes suivantes dans le répertoire où vous souhaitez mettre le projet.

```bash
git clone https://github.com/AntoineNeret/TP_API_REST_FLIGHT.git
cd TP_API_REST_FLIGHT
composer install
```

# Utilisation

À la racine du projet, créer un fichier ".env" contenant les clé d'accès AWS.

```bash
DB_HOST=...
DB_NAME=...
DB_USER=...
DB_PASSWORD=...
DB_PORT=...
```