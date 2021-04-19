<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tag:maintemplate title="Lista de Clientes">

    <table class="table">
        <thead>
            <tr>
              <th scope="col">Codigo</th>
              <th scope="col">Nome</th>
              <th scope="col">Telefone</th>
              <th scope="col">-</th>
              <th scope="col">-</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pessoa" items="${pessoas}">
                <tr>
                    <td>${pessoa.codigo}</td>
                    <td>${pessoa.nome}</td>
                    <td>${pessoa.telefone}</td>
                    <td><a href="/pessoa?codigo=${pessoa.codigo}">Editar</a></td>
                    <td><a href="/excluirpessoa?codigo=${pessoa.codigo}">Excluir</a></td>
                 </tr>
            </c:forEach>
        </tbody>
    </table>

</tag:maintemplate>