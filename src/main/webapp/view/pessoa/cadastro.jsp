<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<tag:maintemplate title="Cadastrar novo cliente">
    <form name="cadPessoa" action="/pessoa" method="post" >
        <div class="form-group row">
            <label class="col-sm-3 text-right"> Código: </label>
            <input class="col-sm-9" readonly name="codigo" value="<c:out value="${pessoa.codigo}" />" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Nome: </label>
            <input class="col-sm-9" name="nome" value="<c:out value="${pessoa.nome}" />" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Telefone: </label>
            <input class="col-sm-9" name="telefone" value="<c:out value="${pessoa.telefone}" />" />
        </div>

        <div class="form-group col-sm-12 text-right">
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>
    </form>
</tag:maintemplate>