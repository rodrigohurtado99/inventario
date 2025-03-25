
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Inventário de Celulares</title>
</head>
<body>

    <div class="container py-5">
        <h1 class="text-center text-light mb-4 bg-dark">Inventário de Celulares</h1>
        
        <!-- Formulário de busca -->
        <div class="mb-4">
            <form id="search-form" method="GET" action="">
            <input type="hidden"  id="userId">
                <div class="input-group">
                    <input type="text" class="form-control" id="idq" autocomplete="off" placeholder="Informe o ID/Usuário" required>
                    <button class="btn btn-primary" type="submit">Buscar</button>
                </div>
            </form>
        </div>
        <?php if($celulares) {
            echo "ok";
        }

        ?>

</body>
</html>