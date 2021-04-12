package br.edu.unoesc.controller.pessoa;

import br.edu.unoesc.model.entity.Pessoa;
import br.edu.unoesc.model.service.PessoaService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PessoaController extends HttpServlet {

    PessoaService pessoaService = new PessoaService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Pessoa produto = new Pessoa();
        if(req.getParameter("codigo") != null){
            produto = pessoaService.buscarPessoaPeloCodigo(Integer.valueOf(req.getParameter("codigo"))).orElse(new Pessoa());
        }

        req.setAttribute("pessoa", produto);
        RequestDispatcher view = req.getRequestDispatcher("/view/pessoa/cadastro.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Pessoa pessoa = new Pessoa();
        pessoa.setCodigo(converteCodigoParaInteger(req.getParameter("codigo")));
        pessoa.setNome(req.getParameter("nome"));
        pessoa.setTelefone(req.getParameter("telefone"));
        pessoaService.inserirAlterarPessoa(pessoa);
        resp.sendRedirect("/listarpessoas");
    }

    private Integer converteCodigoParaInteger(String codigo){
        try {
            return Integer.parseInt(codigo);
        } catch (NumberFormatException e) {
            return null;
        }
    }

}
