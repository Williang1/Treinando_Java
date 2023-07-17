
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Cliente"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Cliente</title>
    </head>
    <body>
        <%
            try {
               ClienteDAO objClienteDAO = new ClienteDAO();
                ArrayList<Cliente> lista = objClienteDAO.pesquisarCliente();
                
                for (int num = 0; num < lista.size(); num++) {
                    
                    out.print("idCliente: " + lista.get(num).getIdCliente()+ "<br>");
                    out.print("Empresa: " + lista.get(num).getEmpresa() + "<br>");
                    out.print("Endereco: " + lista.get(num).getEndereco()+ "<br>");
                    out.print("Cidade: " + lista.get(num).getCidade()+ "<br>");    
                    out.print("Estado: " + lista.get(num).getEstado()+ "<br>");    
                    out.print("CEP: " + lista.get(num).getCEP() + "<br>");    
                    out.print("Pais: " + lista.get(num).getPais()+ "<br>");
                    out.print("Fone: " + lista.get(num).getFone()+ "<br>");
                    
                    
                        
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>