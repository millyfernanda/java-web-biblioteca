<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Livros</title>
</head>
<body>
    <h2>Livros Cadastrados</h2>
    <table border="1">
        <tr>
            <th>ID</th><th>Título</th><th>Autor</th><th>Editora</th><th>Ano</th>
        </tr>
        <%
            java.util.ArrayList<model.Livro> livros = 
                (java.util.ArrayList<model.Livro>) request.getAttribute("livros");
            if (livros != null) {
                for (model.Livro livro : livros) {
        %>
        <tr>
            <td><%= livro.getId() %></td>
            <td><%= livro.getTitulo() %></td>
            <td><%= livro.getAutor() %></td>
            <td><%= livro.getEditora() %></td>
            <td><%= livro.getAno() %></td>
        </tr>
        <%      }
            }
        %>
    </table>
</body>
</html>
