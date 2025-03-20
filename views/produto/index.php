<h2>Lista de Produtos</h2>
<table>
    <tr>
        <th>Nome</th>
        <th>Preço</th>
        <th>Ação</th>
    </tr>
    <?php foreach ($produtos as $produto): ?>
        <tr>
            <td><?php echo $produto['nome']; ?></td>
            <td><?php echo number_format($produto['preco'], 2, ',', '.'); ?></td>
            <td><a href="index.php?controller=produto&action=detalhes&id=<?php echo $produto['id']; ?>">Ver Detalhes</a></td>
        </tr>
    <?php endforeach; ?>
</table>
