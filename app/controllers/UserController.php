<?php 

class UserController
{
    public function index()
    {
        // chama a view 
        include BASE_PATH. "/app/views/lista_celulares.php";

        // inclui a conexão a página requisitada
        include BASE_PATH. "/app/config/Database.php";
    }

    public function users()
    {
        echo "Listar Usuários";
    }
}