<?php

namespace App\Controller\Admin;

use App\Entity\QuestionBDDMuseum;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class QuestionBDDMuseumCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return QuestionBDDMuseum::class;
    }

}
