<%-- 
    Document   : soma
    Created on : 02/03/2020, 23:00:58
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma - JavaEE</title>
    </head>
    <body>
        <a href="index.html">Voltar</a>
        <h1>Aula03</h1>
        <h2> Java EE</h2>
        <H3>Soma</H3>
        <%--Scriptlet--%>
        <%
            double n1 = Double.parseDouble(request.getParameter("n1"));
            double n2 = Double.parseDouble(request.getParameter("n2"));
            double soma = n1+n2;
            %>
        
        <h3>
            <%--Expressions--%>
            <%=n1%> mais <%=n2%> é igual a <%=soma%>
            </h3>
    </body>
</html>
