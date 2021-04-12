<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>

<%@ attribute name="title" required="true"%>

<html>
    <tag:header title="<%= title %>" />
    <body>
        <tag:menu title="<%= title %>" />
        <div class="container">
            <jsp:doBody/>
        </div>
    </body>
    <tag:footer />
</html>