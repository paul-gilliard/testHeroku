<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class UploadSqlReferenceController extends AbstractController
{
    // Fonction servant à upload le fichier sql de la base de données de références cooking
    #[Route('/uploadSqlCooking', name: 'uploadSqlCooking')]
    public function uploadSqlCooking(Request $request): Response
    {
        $file = ($request->files->get('uploadSqlCooking'));
        $file->move('database','cookingreference.sql');

        return $this->forward('App\Controller\Admin\DashboardController::index');
    }

   // Fonction servant à upload le fichier sql de la base de données de références cooking
   #[Route('/uploadSqlMuseum', name: 'uploadSqlMuseum')]
   public function uploadSqlMuseum(Request $request): Response
   {
       $file = ($request->files->get('uploadSqlMuseum'));
       $file->move('database','museumreference.sql');

       return $this->forward('App\Controller\Admin\DashboardController::index');
   }

   // Fonction servant à upload le fichier sql de la base de données de références cooking
   #[Route('/uploadSqlCompagny', name: 'uploadSqlCompagny')]
   public function uploadSqlCompagny(Request $request): Response
   {
       $file = ($request->files->get('uploadSqlCompagny'));
       $file->move('database','businessreference.sql');

       return $this->forward('App\Controller\Admin\DashboardController::index');
   }
}
