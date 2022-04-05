<?php

namespace App\Controller\Admin;

use App\Entity\QuestionBDDCompagny;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class QuestionBDDCompagnyCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return QuestionBDDCompagny::class;
    }

}
