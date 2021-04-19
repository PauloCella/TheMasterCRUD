<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>

<tag:maintemplate title="Cadastrar novo produto">
    <form name="cadProduto" action="/produto" method="post" >
        <div class="form-group row">
            <label class="col-sm-3 text-right"> Código: </label>
            <input class="col-sm-9" readonly name="codigo" value="${produto.codigo}" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Descrição: </label>
            <input class="col-sm-9" name="descricao" value="${produto.descricao}" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Tipo: </label>
            <select name="tipo" value="${produto.tipo}" >
                <option value="PRODUTO"  ${produto.tipo == 'PRODUTO' ? 'selected="selected"' : ''} >produto</option>
                <option value="SERVICO" ${produto.tipo == 'SERVICO' ? 'selected="selected"' : ''} >serviço</option>
            </select>
        </div>

        <div class="form-group col-sm-12 text-right">
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>
    </form>
</tag:maintemplate>