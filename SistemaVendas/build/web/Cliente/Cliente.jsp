<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Pedido"%>
<%@page import="br.com.DAO.PedidoDAO"%>
<html>
    <head>
        <title>Cadastrar Cliente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="inserirCliente.jsp" method="POST">

        
            <label>idCliente: </label> 
            <input type="text" name="idCliente"><br> 
            <label>Endereco: </label> 
            <input type="text" name="Endereco"><br> 
            <label>Cidade: </label> 
            <input type="text" name="Cidade"><br> 
            <label>Estado:</label>
            <input type="text" name="Estado"><br> 
            <label>CEP: </label> 
            <input type="text" name="CEP"><br>
            <label>Pais: </label> 
            <input type="text" name="Pais"><br>
            <label>Fone: </label> 
            <input type="text" name="Fone"><br>
            
               

            </select><br>

            <button type="submit">CADASTRAR</button> <br>             

        </form>
        <a href="listarCliente.jsp">Listar Cliente</a>
    </body>
</html>
