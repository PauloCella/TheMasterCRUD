<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>

<tag:maintemplate title="Cadastrar novo cliente">
    <form name="cadPessoa" action="/pessoa" method="post" >
        <div class="form-group row">
            <label class="col-sm-3 text-right"> Código: </label>
            <input class="col-sm-9" readonly name="codigo" value="${pessoa.codigo}" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Nome: </label>
            <input class="col-sm-9" name="nome" value="${pessoa.nome}" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Telefone: </label>
            <input class="col-sm-9" name="telefone" value="${pessoa.telefone}" />
        </div>

        <div class="form-group row">
            <label class="col-sm-3 text-right"> Sexo: </label>
            <select name="sexo" value="${pessoa.sexo}" >
                <option value="M"  ${pessoa.sexo == 'M' ? 'selected="selected"' : ''} >Masculino</option>
                <option value="F" ${pessoa.sexo == 'F' ? 'selected="selected"' : ''} >Feminino</option>
                <option value="NB" ${pessoa.sexo == 'NB' ? 'selected="selected"' : ''} >Não binário</option>
            </select>
        </div>

        <div class="form-group col-sm-12 text-right">
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>


    </form>
</tag:maintemplate>