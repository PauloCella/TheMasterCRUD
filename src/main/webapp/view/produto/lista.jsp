<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tag:maintemplate title="Lista de produtos">

    <table class="table">
        <thead>
            <tr>
              <th scope="col">Codigo</th>
              <th scope="col">Descrição</th>
              <th scope="col">Tipo</th>
              <th scope="col">-</th>
              <th scope="col">-</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="produto" items="${produtos}">
                <tr>
                    <td>${produto.codigo}</td>
                    <td>${produto.descricao}</td>
                    <td>${produto.tipo}</td>
                    <td><a href="/produto?codigo=${produto.codigo}">Editar</a></td>
                    <td><a href="/excluirproduto?codigo=${produto.codigo}">Excluir</a></td>
                 </tr>
            </c:forEach>
        </tbody>
    </table>

</tag:maintemplate>