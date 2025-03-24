<?php 

require_once BASE_PATH . "/app/controllers/UserController.php";

function route($url)
{
    $url = rtrim(ltrim($url, "/teste"),"/");

    if($url === "") {
        // página inicial
        $controller = new UserController();
        $controller->index();
    } elseif($url === "users") {
        $controller = new UserController();
        $controller->users();
    } else {
        echo "Página não encontrada";
        echo "<br>". $url;
    }
}

$url = $_SERVER['REQUEST_URI'];

route($url);
