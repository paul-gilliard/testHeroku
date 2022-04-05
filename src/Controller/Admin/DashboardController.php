<?php

namespace App\Controller\Admin;

use App\Entity\QuestionBDDCompagny;
use App\Entity\QuestionBDDCooking;
use App\Entity\QuestionBDDMuseum;
use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Model\CreateDBUserModel;
use Doctrine\ORM\EntityManager;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {

        return $this->render('admin/dashboard.html.twig', [
            'controller_name' => 'ExerciceController',
        ]);

            
        
          
    }

    // Fonction servant à créer le dashbord de easyadmin
    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Tic Project');
    }

    // Fonction servant à créer les menus de easyadmin
    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Mode opératoire', 'fa fa-home');
        yield MenuItem::linkToCrud('Question Cooking', 'fas fa-list', QuestionBDDCooking::class);
        yield MenuItem::linkToCrud('Question Museum', 'fas fa-list', QuestionBDDMuseum::class);
        yield MenuItem::linkToCrud('Question Compagny', 'fas fa-list', QuestionBDDCompagny::class);
        yield MenuItem::linkToCrud('User', 'fas fa-list', User::class);
        // yield MenuItem::linkToCrud('The Label', 'fas fa-list', EntityClass::class);
    }
     
    // Fonction servant à renitialiser les bases de données des utilisateurs et les faisant recopier celles de référence
    #[Route('/resetDatabaseUsers', name: 'resetDatabaseUsers')]
    public function resetDatabaseUsers(EntityManagerInterface $doctrine){

        $DB = new CreateDBUserModel();
        $host    = "127.0.0.1:3307";
        $userDB    = "root";
        $pass    = "";
        $dbname = "bdd_principale";

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        $sql = "select id from user";
        $result = $pdo->prepare($sql);
        $result->execute();
        $result = $result->fetchAll();

       

        $repository = $doctrine->getRepository(User::class);
        

        foreach ($result as $value) {
            //  dd($value["id"]);
             $id = $value["id"];
            $user = $repository->findOneBy(['id' => $id]);
            
            if($user != null) {
                $tab[]=$user->getCookingDatabaseName();
                $tab[]=$user->getMuseumDatabaseName();
                $tab[]=$user->getCompagnyDatabseName();
                
                foreach ($tab as $value) {
                    // dd($value);
                    $sql = "DROP DATABASE $value";
                    $result = $pdo->prepare($sql);
                    $result->execute();
                }
                $DB->createDatabaseAlLevel($user);
            }
                
        }
        
        return $this->index();
    }


    // Fonction servant à vider la table associative user / questions validées cooking
    #[Route('/ViderTableValidationCooking', name: 'ViderTableValidationCooking')]
    public function ViderTableValidationCooking(EntityManagerInterface $doctrine){

        $DB = new CreateDBUserModel();
        $host    = "127.0.0.1:3307";
        $userDB    = "root";
        $pass    = "";
        $dbname = "bdd_principale";

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        $sql = "TRUNCATE TABLE question_validee_cooking";
        $result = $pdo->prepare($sql);
        $result->execute();
        $result = $result->fetchAll();

       
        
        return $this->index();
    }

    // Fonction servant à vider la table associative user / questions validées museum
    #[Route('/ViderTableValidationMuseum', name: 'ViderTableValidationMuseum')]
    public function ViderTableValidationMuseum(EntityManagerInterface $doctrine){

        $DB = new CreateDBUserModel();
        $host    = "127.0.0.1:3307";
        $userDB    = "root";
        $pass    = "";
        $dbname = "bdd_principale";

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        $sql = "TRUNCATE TABLE question_validee_museum";
        $result = $pdo->prepare($sql);
        $result->execute();
        $result = $result->fetchAll();

       
        
        return $this->index();
    }

    // Fonction servant à vider la table associative user / questions validées compagny
    #[Route('/ViderTableValidationCompagny', name: 'ViderTableValidationCompagny')]
    public function ViderTableValidation(EntityManagerInterface $doctrine){

        $DB = new CreateDBUserModel();
        $host    = "127.0.0.1:3307";
        $userDB    = "root";
        $pass    = "";
        $dbname = "bdd_principale";

        $pdo = new \PDO("mysql:host=$host;dbname=$dbname", $userDB, $pass);
        $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        $sql = "TRUNCATE TABLE question_validee_compagny";
        $result = $pdo->prepare($sql);
        $result->execute();
        $result = $result->fetchAll();

       
        
        return $this->index();
    }

}
