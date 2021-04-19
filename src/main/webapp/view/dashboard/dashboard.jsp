<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<tag:maintemplate title="Pagina Inicial do Sistema">

    <div class="col-sm-12 text-center" >
        <h4>Olá, seja bem vindo ao The Master CRUD, aqui vc pode cadastrar qualquer pessoa, produto ou serviço.</h4>

        <div class="col-sm-12 d-inline-flex" >
            <div class="col-sm-6 text-center">
                <h4></h4>
                <p> Vc possui ${qtdProduto} produto(s) cadastrados</p>
                <button onclick="location.href ='/produto'" title="Cadastrar novo produto"> Cadastrar Produto</button>

            </div>
            <div class="col-sm-6 text-center">
                <h4></h4>

                <p> Vc possui ${qtdPessoa} clientes(s) cadastrados</p>
                <button onclick="location.href ='/pessoa'" title="Cadastrar novo cliente"> Cadastrar Cliente</button>

            </div>
        </div>
    </div>


</tag:maintemplate>