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
git clone https://github.com/AntoineNeret/api-rest-flight.git
cd TP_API_REST_FLIGHT
composer install
```

# Utilisation

## Phase de test

### Test sur le site 'Ciné App'
Lancer un serveur web local :
```
php -S localhost:8000 -t api-rest-test
```
### Test sur le renvoie de l'api
Pour voir ce que nous renvoie l'api rest :
```
php -S localhost:3000
```
Pour voir l'intégralité de la liste des films, taper dans l'URL:
```
localhost:3000/api/films
```
Pour voir les détails d'un film en particulier, taper dans l'URL:
```
localhost:3000/api/films/'id_du_film'/
```
Pour voir les séance d'un film en particulier, taper dans l'URL:
```
localhost:3000/api/films/'id_du_film'/seances
```
