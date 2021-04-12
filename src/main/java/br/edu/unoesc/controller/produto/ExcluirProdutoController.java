package br.edu.unoesc.controller.produto;

import br.edu.unoesc.model.service.ProdutoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ExcluirProdutoController extends HttpServlet {

    ProdutoService produtoService = new ProdutoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        produtoService.removerProdutoPeloCodigo(Integer.parseInt(req.getParameter("codigo")));
        resp.sendRedirect("/listarprodutos");
    }

}
