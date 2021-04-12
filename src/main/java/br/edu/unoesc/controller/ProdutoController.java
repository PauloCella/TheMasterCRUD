package br.edu.unoesc.controller;

import br.edu.unoesc.model.entity.Produto;
import br.edu.unoesc.model.service.ProdutoService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ProdutoController extends HttpServlet {

    ProdutoService produtoService = new ProdutoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Produto produto = new Produto();
        if(req.getParameter("codigo") != null){
            produto = produtoService.buscarProdutoPeloCodigo(Integer.valueOf(req.getParameter("codigo"))).orElse(new Produto());
        }

        req.setAttribute("produto", produto);
        RequestDispatcher view = req.getRequestDispatcher("/view/produto/cadastro.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Produto produto = new Produto();
        produto.setCodigo(converteCodigoParaInteger(req.getParameter("codigo")));
        produto.setDescricao(req.getParameter("descricao"));
        produto.setTipo(req.getParameter("tipo"));
        produtoService.inserirAlterarProduto(produto);
        resp.sendRedirect("/listarprodutos");
    }

    private Integer converteCodigoParaInteger(String codigo){
        try {
            return Integer.parseInt(codigo);
        } catch (NumberFormatException e) {
            return null;
        }
    }

}
