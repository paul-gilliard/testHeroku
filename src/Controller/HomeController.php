<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\Session;

class HomeController extends AbstractController
{
   
    // Fonction servant à afficher la homepage
    #[Route('/', name: 'home')]
    public function index(RequestStack $requestStack): Response
    {
        // $session = new Session();
        $session = $requestStack->getSession();
        
        $levelSelect = $lvl;
        
        if($session->isStarted() == false){
            $levelSelect="levelOne";
            $session->set('maGlobale',$levelSelect);
        } else {
            $levelSelect = $session->get('maGlobale');
        }
        
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'niveau'=>$levelSelect
        ]);
    }

    // Fonction servant à rediriger vers la homepage avec le bon niveau pré-selectionner quand un niveau est complété à 100%
    /**
     * @Route("/redirect/{lvl}", name="redirect")
     */
    public function redirection($lvl, RequestStack $requestStack)
    {
        $session = $requestStack->getSession();
        $session->set('maGlobale',$lvl);
       return $this->index($requestStack);


       $session->set('numberCurrentQuestion',1);
        
    }
}
