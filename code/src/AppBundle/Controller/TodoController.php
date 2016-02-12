<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class TodoController extends Controller
{
    /**
     * @return Response
     * @Route("/todo", name="todo_index")
     */
    public function indexAction()
    {
        return $this->render('todo/index.html.twig', array(
            'mes' => 'message Big!'
        ));
    }
}
