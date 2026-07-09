<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Livros</title>
</head>
<body>
    <h2>Cadastrar Livro</h2>
    <form action="../controller/LivroServlet" method="post">
        Título: <input type="text" name="titulo"><br>
        Autor: <input type="text" name="autor"><br>
        Editora: <input type="text" name="editora"><br>
        Ano: <input type="number" name="ano"><br>
        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>
