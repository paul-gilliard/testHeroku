<?php

namespace App\Controller;

use App\Form\RegistrationType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
// use Symfony\Component\BrowserKit\Request;
// use Symfony\Component\BrowserKit\Response;
use App\Repository\UserRepository;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use App\Model\CreateDBUserModel;
use App\Entity\QuestionBDDCooking as q;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use App\Service\Mailer;

class SecurityController extends AbstractController
{
    #[Route('/security', name: 'security')]
    public function index(): Response
    {
        return $this->render('security/index.html.twig', [
            'controller_name' => 'SecurityController',
        ]);
    }

    // Fonction servant à afficher la page d'inscription et gérer l'inscription si le formulaire est rempli
    // Cette fonction donne un rôle d'admin aux adresse contenant @u-bordeaux.fr, un role user pour les autres utilisateurs
    // Cette fonction envoie un mail pour demander de confirmer le compte de l'utilisateur
    // Cette fonction créer les bases de données sandbox des utisateurs en copiant celles de références
    #[Route('/inscription', name: 'inscription')]
    public function registration(Request $request, EntityManagerInterface $manager, UserPasswordHasherInterface $encoder,Mailer $mailer)
    {
        $user = new User();
        $form=$this->createForm(RegistrationType::class,$user);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            $hash = $encoder->hashPassword($user,$user->getPassword());
            $user->setPassword($hash);

            $data = $form->getData();
            $email=$data->getEmail();
            if(str_contains($email,'@u-bordeaux.fr')){
                $user-> setRoles("ROLE_ADMIN");
            } else {
                $user-> setRoles("ROLE_USER");
            }

            $user->setToken($this->generateToken());
            $user->setEnabled(0);
            $manager->persist($user);
            $manager->flush();
            $mailer->sendEmail($email,$user->getToken());
            $userId = $user->getId();
            // $user->setCookingDatabaseName($userId."cookingdatabase");
            // $user->setMuseumDatabaseName($userId."museumdatabase");
            // $user->setCompagnyDatabseName($userId."compagnydatabase");
            $manager->persist($user);
            $manager->flush();

            //Création des DB associés à l'utilisateur --> copie avec les exports dans public/database /file.sql
            $DB = new CreateDBUserModel;
            $DB->createDatabaseAlLevel($user);
            
            return $this->redirectToRoute('login');
        }

        return $this->render('security/registration.html.twig',[
            'form' => $form->createView()
        ]);
    }
    // Fonction servant à se connecter (gérer par symfony), remonte les exeptions de connexions en cas de problème
    #[Route('/login', name: 'login')]
    public function login(AuthenticationUtils $authenticationUtils)
    {
         // get the login error if there is one
         $error = $authenticationUtils->getLastAuthenticationError();

         // last username entered by the user
         $lastUsername = $authenticationUtils->getLastUsername();

         return $this->render('security/login.html.twig', [
                         'last_username' => $lastUsername,
                         'error'         => $error,
                      ]);

        
    }

    // Fonction servant à se déconnecter (gérer par symfony)
    #[Route('/logout', name: 'logout')]
    public function logout(){}

    // Fonction appelée en cliquant sur le mail de confirmation
    // Fonction servant à rendre un compte utilisateur actif
    /**
     * @Route("/confirmer-mon-compte/{token}", name="confirm_account")
     * @param string $token
     */
    public function confirmAccount(string $token, UserRepository $userRepository)
    {
        $user = $userRepository->findOneBy(["token" => $token]);
        if($user) {
            $user->setToken("null");
            $user->setEnabled(1);
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();
            $this->addFlash("success", "Compte actif !");
            return $this->redirectToRoute("login");
        } else {
            $this->addFlash("error", "Ce compte n'exsite pas !");
            return $this->redirectToRoute('login');
        }
    }


    // Fonction servant à générer un token pour la confirmation de compte
     /**
     * @return string
     * @throws \Exception
     */
    private function generateToken()
    {
        return rtrim(strtr(base64_encode(random_bytes(32)), '+/', '-_'), '=');
    }
}
