
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Pedido"%>
<%@page import="br.com.DAO.PedidoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Pedido</title>
    </head>
    <body>
        <%
            try {
               PedidoDAO objPedidoDAO = new PedidoDAO();
                ArrayList<Pedido> lista = objPedidoDAO.pesquisarPedido();
                
                for (int num = 0; num < lista.size(); num++) {
                    out.print("IdPedido: " + lista.get(num).getIdPedido()+ "<br>");                    
                    out.print("Quantidade: " + lista.get(num).getQuantidade()+ "<br>");
                                    
                    
           
    
%> <br><br> <%    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>