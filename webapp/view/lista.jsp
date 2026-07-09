<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Lista de Livros</title></head>
<body>
    <h2>Livros cadastrados</h2>
    <ul>
        <c:forEach var="livro" items="${livros}">
            <li>${livro.titulo} - ${livro.autor}</li>
        </c:forEach>
    </ul>
</body>
</html>
