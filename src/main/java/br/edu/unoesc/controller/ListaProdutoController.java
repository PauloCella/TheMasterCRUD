package br.edu.unoesc.controller;

import br.edu.unoesc.model.entity.Produto;
import br.edu.unoesc.model.service.ProdutoService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListaProdutoController extends HttpServlet {
    ProdutoService produtoService = new ProdutoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Produto> produtos = produtoService.listarProdutos();
        req.setAttribute("produtos", produtos);
        RequestDispatcher view = req.getRequestDispatcher("/view/produto/lista.jsp");
        view.forward(req, resp);
    }
}
