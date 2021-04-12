<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

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
                    <td><c:out value="${pessoa.codigo}" /></td>
                    <td><c:out value="${pessoa.nome}" /></td>
                    <td><c:out value="${pessoa.telefone}" /></td>
                    <td><a href="<c:url value="/pessoa?codigo=${pessoa.codigo}"/>">Editar</a></td>
                    <td><a href="<c:url value="/excluirpessoa?codigo=${pessoa.codigo}"/>">Excluir</a></td>
                 </tr>
            </c:forEach>
        </tbody>
    </table>

</tag:maintemplate>