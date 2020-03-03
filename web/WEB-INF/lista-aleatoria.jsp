<%-- 
    Document   : lista-aleatoria
    Created on : 02/03/2020, 22:34:13
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Aleatória</title>
    </head>
    <body>
        <a href="index.html">Voltar</a>
        <h1>Aula 03</h1>
        <h2>Java EE</h2>
        <h3>Lista Aleatória</h3>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número aleatório</th>
            </tr>
                <%for(int i-1; i<=10; i++){%>
                <tr>
                    <td><%=1%></td>
                    <td><%=((int)(100.0*Math.random()))%></td> 
                </tr>
                
                <%}%>
        </table>
        
    </body>
</html>
