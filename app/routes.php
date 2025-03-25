<?php 

require_once BASE_PATH . "/app/controllers/CelularesController.php";

function route($url)
{
    $url = rtrim(ltrim($url, "/teste"),"/");

    if($url === "") {
        // página inicial
        $controller = new CelularesController();
        $controller->index();
    } elseif($url === "users") {
        $controller = new CelularesController();
        $controller->users();
    } else {
        echo "Página não encontrada";
        echo "<br>". $url;
    }
}

$url = $_SERVER['REQUEST_URI'];

route($url);
