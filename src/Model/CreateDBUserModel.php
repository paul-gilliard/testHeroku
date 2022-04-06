<?php

namespace App\Model;

use App\Entity\User;
use Doctrine\DBAL\Connection;

class CreateDBUserModel
{
    public function createDatabaseAlLevel(User $user) {
        // Cette function doit cloner les 3 BDD de références
        // Cette function doit être appeler lors de la création du compte
        // Elle stockera à l'indice de l'utilsiateur sa bdd
         $prefixDatabase = $user->getUserIdentifier();

        

         
        //Les trois lignes ci-dessous seront à changer en prod.
        $host    = "wb39lt71kvkgdmw0.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
        $userDB    = "w89mqzrcb431vmpe";
        $pass    = "r12jp4jr6b5e0igy";
    
        //Créations BDD "userID+NameDatabase"
        // $pdo = new PDO('sqlite:database.sqlite');
        $pdo = new \PDO("mysql:host=$host", $userDB, $pass);
        // dd($pdo);
        $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        $sql = "CREATE DATABASE ". $prefixDatabase."cookingdatabase";
        $pdo->exec($sql);
        $sql = "CREATE DATABASE ". $prefixDatabase."museumdatabase";
        $pdo->exec($sql);
        $sql = "CREATE DATABASE ". $prefixDatabase."compagnydatabase";
        $pdo->exec($sql);


        
        //clonnage BDD reference
        $pdoUser = $this->connectionUserCookingDatabase($user);
        // dd($pdoUser);
        $cookingSqlExport = file_get_contents("../public/database/cookingreference.sql");
        // dd($cookingSqlExport);
        $pdoUser->exec($cookingSqlExport);

        $pdoUser = $this->connectionUserMuseumDatabase($user);
        $cookingSqlExport = file_get_contents("../public/database/museumreference.sql");
        $pdoUser->exec($cookingSqlExport);

        $pdoUser = $this->connectionUserBusinessDatabase($user);
        $cookingSqlExport = file_get_contents("../public/database/businessreference.sql");
        $pdoUser->exec($cookingSqlExport);
    }

    public function connectionReferenceCookingDatabase(){ // Inutile à l'heure actuelle

        //Les trois lignes ci-dessous seront à changer en prod.
        $host    = "wb39lt71kvkgdmw0.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
        $userDB    = "w89mqzrcb431vmpe";
        $pass    = "r12jp4jr6b5e0igy";
        $dbname = "cookingreference";

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        return $pdo;
    }

    public function connectionUserCookingDatabase(User $user){

        //Les trois lignes ci-dessous seront à changer en prod.
        $host    = "wb39lt71kvkgdmw0.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
        $userDB    = "w89mqzrcb431vmpe";
        $pass    = "r12jp4jr6b5e0igy";
        $dbname = $user->getCookingDatabaseName();

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        return $pdo;
    }

    public function connectionUserMuseumDatabase(User $user){

        //Les trois lignes ci-dessous seront à changer en prod.
        $host    = "wb39lt71kvkgdmw0.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
        $userDB    = "w89mqzrcb431vmpe";
        $pass    = "r12jp4jr6b5e0igy";
        $dbname = $user->getMuseumDatabaseName();

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        return $pdo;
    }

    public function connectionUserBusinessDatabase(User $user){

        //Les trois lignes ci-dessous seront à changer en prod.
        $host    = "wb39lt71kvkgdmw0.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
        $userDB    = "w89mqzrcb431vmpe";
        $pass    = "r12jp4jr6b5e0igy";
        $dbname = $user->getCompagnyDatabseName();

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        return $pdo;
    }

}
?>