<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<tag:maintemplate title="Cadastrar novo produto">
    <form name="cadProduto" action="/produto" method="post" >
        <div class="form-group row">
            <label class="col-sm-3 text-right"> Código: </label>
            <input class="col-sm-9" readonly name="codigo" value="<c:out value="${produto.codigo}" />" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Descrição: </label>
            <input class="col-sm-9" name="descricao" value="<c:out value="${produto.descricao}" />" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Tipo: </label>
            <input class="col-sm-9" name="tipo" value="<c:out value="${produto.tipo}" />" />
        </div>

        <div class="form-group col-sm-12 text-right">
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>
    </form>
</tag:maintemplate>