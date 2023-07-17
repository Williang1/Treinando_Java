<html>
    <head>
        <title>Cadastrar Pedido</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="inserirPedido.jsp" method="POST">

            <label>idPedido: </label> 
            <input type="text" name="idPedido"><br> 
            <label>Quantidade: </label> 
            <input type="text" name="Quantidade"><br> 
           
            
            <button type="submit">CADASTRAR</button> <br>             
            
        </form>
        <a href="listarPedido.jsp">Listar Pedido</a>
    </body>
</html>