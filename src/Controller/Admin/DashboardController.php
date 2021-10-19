<?php

namespace App\Controller\Admin;

use App\Entity\Book;
use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        $repo = $this->getDoctrine()->getRepository(Book ::class);

        $books = $repo->findAll();
       
        return $this->render('admin/book.html.twig', [
            'books'=> $books, 
        ]);
    }


    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Médiathèque');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linktoDashboard('Catalogue', 'fa fa-book');

        if ($this->isGranted('ROLE_EMPLOYE')) {
        yield MenuItem::linkToCrud('Ajout livre', 'fas fa-plus-circle', Book::class);
        }

        if ($this->isGranted('ROLE_EMPLOYE')) {
            yield MenuItem::linkToCrud('Inscrit', 'fas fa-user', User::class);
            }
    }
}
