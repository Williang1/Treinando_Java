<%@page import="br.com.DAO.PedidoDAO"%>
<%@page import="br.com.model.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Pedido</title>
    </head>
    <body>
        <%
            try {
                Pedido objPedido= new Pedido();
                objPedido.setIdPedido(Integer.parseInt(request.getParameter("idPedido")));
                objPedido.setQuantidade(Integer.parseInt(request.getParameter("Quantidade")));
              
                

                PedidoDAO objPedidoDAO = new PedidoDAO();
                objPedidoDAO.cadastrarPedido(objPedido);
                out.print("Pedido Inserido!!");
            } catch (Exception e) {
            }

        %>
    </body>
</html>
