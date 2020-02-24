<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Article;
use App\Repository\ArticleRepository;

class BlogController extends AbstractController
{


    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->render('blog/home.html.twig', [
            'title' => 'Welcome to this blog',
            'age' => 31
        ]);
    }


    /**
     * @Route("/blog", name="blog")
     */
    /*
     public function index()
    {
        
        $repo = $this->getDoctrine()->getRepository(Article::class);
        $articles = $repo->findAll();

        
        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles

        ]);
    }
    */

    /* Bonus...with a dependence injection */
    /* Symfony uses its Service Container */
    public function index(ArticleRepository $repo)
    {
        
        /*$repo = $this->getDoctrine()->getRepository(Article::class);*/
        $articles = $repo->findAll();

        
        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles

        ]);
    }


      /**
     * @Route("/blog/{id}", name="blog_show")
     */
    public function show($id)
    {

        $repo = $this->getDoctrine()->getRepository(Article::class);
        $article = $repo->find($id);

        return $this->render('blog/show.html.twig', 
    [
        'article' => $article
    ]);
    }
}
