# mediatheque

Création d'une solution d'emprunt en ligne click & collect

## Environement de développement

## Pré-requis

* APACHE / XAMPP
* Version PHP 7.4
* Composer
* Symfony CLI
* Doctrine 
* MySQL

* HTML 5 
* CSS 3
* Bootstrap

## Bash
* symfony check:requirements

### Lancer l'environnement de développement 

## Bash
* symfony serve 

### Lancer des tests

## Bash
* php bin/phpunit --testdox

## Sécurité
* Mot de passe automatiquement hashé avec symfony
* sécurisé dashboard admin
* Sécurisé access_control
* Mise en place role_hierarchy

### Déploiement Local
* Récupérer le dépot 
* composer require symfony/runtime
* php bin/console doctrine:database:create
* supprimer anciennes migrations
* effectuer de nouvelles migrations :
    php bin/console make:migration
    symfony console d:m:m
* insérer données (insert into) fichier mediatheque.sql
* symfony serve

### Créer admin
* inscription via le formulaire
* modifier le role sur MySQL/phpmyadmin ["ROLE_EMPLOYE"] ou ["ROLE_INSCRIT"]
* se connecter via le login


