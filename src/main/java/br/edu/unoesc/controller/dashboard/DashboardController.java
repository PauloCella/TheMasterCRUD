package br.edu.unoesc.controller.dashboard;

import br.edu.unoesc.model.service.PessoaService;
import br.edu.unoesc.model.service.ProdutoService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DashboardController extends HttpServlet {

    ProdutoService produtoService = new ProdutoService();
    PessoaService pessoaService = new PessoaService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("qtdPessoa", pessoaService.contarPessoas());
        req.setAttribute("qtdProduto", produtoService.contarProdutos());
        RequestDispatcher view = req.getRequestDispatcher("/view/dashboard/dashboard.jsp");
        view.forward(req, resp);
    }
}
