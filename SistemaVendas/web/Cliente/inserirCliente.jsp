<%@page import="java.sql.SQLException"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page import="br.com.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
    </head>
    <body>
        <%
            try {
               Cliente objCliente = new Cliente();
                objCliente.setCEP(Integer.parseInt(request.getParameter("CEP")));
                objCliente.setFone(Integer.parseInt(request.getParameter("Fone")));
                
                objCliente.setEndereco(request.getParameter("Endereco"));
                objCliente.setPais(request.getParameter("Pais"));
                objCliente.setEstado(request.getParameter("Estado"));
                objCliente.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
                
                objCliente.setCidade(request.getParameter("Cidade"));

              ClienteDAO objClienteDAO = new ClienteDAO();
                objClienteDAO.cadastrarCliente(objCliente);
                out.print("Cliente Inserido!!");
            } catch (Exception e) {
                out.println("erro");
            }

        %>
    </body>
</html>
