package br.edu.unoesc.controller.pessoa;

import br.edu.unoesc.model.entity.Pessoa;
import br.edu.unoesc.model.service.PessoaService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListaPessoaController extends HttpServlet {
    PessoaService pessoaService = new PessoaService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Pessoa> pessoas = pessoaService.listarPessoas();
        req.setAttribute("pessoas", pessoas);
        RequestDispatcher view = req.getRequestDispatcher("/view/pessoa/lista.jsp");
        view.forward(req, resp);
    }
}
