<%-- 
    Document   : pag3
    Created on : 07/03/2020, 14:56:09
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Americana</title>
    </head>
    <body>
         <!-- ENTRADA DE DADOS!-->
        
    <form>  
     <p>
       
        <label for = "emprestimo">Valor Financiado: </label> <br>
        <input type="number" name="emprestimo" id="emprestimo" required>
     </p>
     <p>
         
        <label for="tempo"> Quantidade de parcelas:</label> <br>
        <input type="number" name="tempo" id="tempo" required>
     </p>
     <P>
         
         <label for="taxa"> Taxa de Juros:</label> <br>
         <input type="number" name="taxa" id="taxa" required>
     </P>
     <p>
         <input type="submit" class="btn btn-primary" value="calcular">
     </p>
   </form>
    
    
    
        Indique a taxa de juros: <br>
        <input type="number" name="taxa"> <br> <br>
     
        
      <input type="submit" class="btn btn-primary" value="Gravar">
      
         <%  double emprestimo = Double.parseDouble(request.getParameter("emprestimo")); %>
 <% double tempo = Double.parseDouble(request.getParameter("emprestimo")); %>
  <% double taxa = Double.parseDouble(request.getParameter("emprestimo")); %>
%>
      
        
        <!-- MONTAR TABELA!-->
        <% if(emprestimo !=0){; %>
        
         <table border="1">
                <tr>
                    <th>Parcela</th>
                    <th>Valor da parcela</th>
                    <th>Amortização</th>
                    <th>Juros</th>
                    <th>Saldo Devedor</th>
                    <th>Total</th>
                    
                    <%--Populando a  Tabela--%>
                    
                    <% for(int i=1;i<=tempo;i++){ 
                
                 if(i!= tempo){
                %>
                <tr>
                     
                    <td>  <%=i%> <td> %> <%-- Número da parcela --%>
                    <td> <%= ((emprestimo * taxa / 100)%> {</td> <%--Valor da parcela--%>
                    <td><%=0 %> </td> <%--amortização--%>
                    <td> <%= (emprestimo * taxa / 100)%> {</td> <%--Juros --%>
                    <td> <%= emprestimo %> {</td> <%-- Saldo Devedor --%>
                    <td> <%= "---------" %>
                </tr>
               
                <% } else { %>
                
                <tr>
                       <td> <%=i%> </td> %> <%-- Numero da parcela final--%>
                       <td>  <%= ((emprestimo * taxa)/100) + emprestimo %>  </td> <%-- Valor da parcela final--%>
                       <td> <%= emprestimo %> </td> <%--Amortização paga ao final é o valor emprestado --%>
                       <td> <%=0 %> </td> <%-- saldo devedor após pagar a última parcela--%>
                       <td> <%="Total pago: "+emprestimo +(emprestimo*taxa/100) * tempo  %> </td>
                       
                       
                     </tr>
                     <% }
}%>
                    
       

                       
    </head>
    <body>
     
    </body>
</html>
  
    
        <footer>
       
<%@include file="WEB-INF/jspf/footer.jspf" %>
</footer>
    </body>
</html>
