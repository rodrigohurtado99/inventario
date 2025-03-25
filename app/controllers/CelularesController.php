<?php 

require_once BASE_PATH . "/app/models/UserModel.php";
class CelularesController
{
    public function index()
    {
        // instância a classe do User
        $celulares = new User();

        // chama a função para listar celulares
        $celulares->ListarCelulares();

        // chama a respectiva view 
        include BASE_PATH. "/app/views/lista_celulares.php";
    }

    public function users()
    {
        echo "Listar Usuários";
    }
}