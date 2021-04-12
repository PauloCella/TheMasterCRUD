<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ attribute name="title" required="true"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Exibr menu">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/"/>" >Inicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Produto
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="<c:url value="/produto"/>" >Cadastrar</a>
          <a class="dropdown-item" href="<c:url value="/listarprodutos"/>" >Listar</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
<div class="col-sm-12">
    <h3><c:out value="${title}" /></h3>
    <hr />
</div>