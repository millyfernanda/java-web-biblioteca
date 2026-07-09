package controller;

import model.Livro;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;

public class LivroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ArrayList<Livro> livros = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String editora = request.getParameter("editora");
        int ano = Integer.parseInt(request.getParameter("ano"));

        Livro livro = new Livro(livros.size() + 1, titulo, autor, editora, ano);
        livros.add(livro);

        request.setAttribute("livros", livros);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/lista.jsp");
        dispatcher.forward(request, response);
    }
}
