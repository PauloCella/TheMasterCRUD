<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<tag:maintemplate title="Lista de produtos">

    <table class="table">
        <thead>
            <tr>
              <th scope="col">Codigo</th>
              <th scope="col">Produto</th>
              <th scope="col">Tipo</th>
              <th scope="col">-</th>
              <th scope="col">-</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="produto" items="${produtos}">
                <tr>
                    <td><c:out value="${produto.codigo}" /></td>
                    <td><c:out value="${produto.descricao}" /></td>
                    <td><c:out value="${produto.tipo}" /></td>
                    <td><a href="<c:url value="/produto?codigo=${produto.codigo}"/>">Editar</a></td>
                    <td><a href="<c:url value="/excluirproduto?codigo=${produto.codigo}"/>">Excluir</a></td>
                 </tr>
            </c:forEach>
        </tbody>
    </table>

</tag:maintemplate>