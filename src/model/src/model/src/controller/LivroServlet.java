package controller;

import model.Livro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

public class LivroServlet extends HttpServlet {
    private List<Livro> livros = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        livros.add(new Livro(titulo, autor));
        request.setAttribute("livros", livros);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/lista.jsp");
        dispatcher.forward(request, response);
    }
}
