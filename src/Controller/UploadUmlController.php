<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class UploadUmlController extends AbstractController
{
    // Fonction servant à upload l'image uml affiché à l'exercice cooking
    #[Route('/uploadCooking', name: 'uploadCooking')]
    public function uploadCooking(Request $request): Response
    {
        $file = ($request->files->get('uploadCooking'));
        $file->move('database','cookingJPG.jpg');

        return $this->forward('App\Controller\Admin\DashboardController::index');
    }

    // Fonction servant à upload l'image uml affiché à l'exercice museum
    #[Route('/uploadMuseum', name: 'uploadMuseum')]
    public function uploadMuseum(Request $request): Response
    {
        $file = ($request->files->get('uploadMuseum'));
        $file->move('database','museumJPG.jpg');

        return $this->forward('App\Controller\Admin\DashboardController::index');
    }

    // Fonction servant à upload l'image uml affiché à l'exercice compagny
    #[Route('/uploadCompagny', name: 'uploadCompagny')]
    public function uploadCompagny(Request $request): Response
    {
        $file = ($request->files->get('uploadCompagny'));
        $file->move('database','compagnyJPG.jpg');

        return $this->forward('App\Controller\Admin\DashboardController::index');
    }
}
