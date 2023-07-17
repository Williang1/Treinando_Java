package br.com.DAO;

import br.com.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClienteDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList< Cliente> lista = new ArrayList();
    
    public void cadastrarCliente( Cliente objCliente) throws ClassNotFoundException{
        String sql = "insert into Cliente (idCliente,Endereco,Cidade,Estado,CEP,Pais,Fone) values (?,?,?,?,?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
          
            pstm.setInt(1, objCliente.getIdCliente());                      
            pstm.setString(2, objCliente.getEndereco());                               
            pstm.setString(3, objCliente.getCidade());
            pstm.setString(4, objCliente.getEstado());
            pstm.setInt(5, objCliente.getCEP());
            pstm.setString(6, objCliente.getPais());
            pstm.setInt(7, objCliente.getFone());
     
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Cliente> pesquisarCliente() throws ClassNotFoundException{
        String sql = "select * from Cliente";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);          
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Cliente objCliente = new Cliente();
                
                objCliente.setIdCliente(rs.getInt("idCliente"));
                
                objCliente.setEndereco(rs.getString("Endereco"));
                objCliente.setCidade(rs.getString("Cidade"));
                objCliente.setEstado(rs.getString("Estado"));
                objCliente.setCEP(rs.getInt("CEP"));
                objCliente.setPais(rs.getString("Pais"));
                objCliente.setFone(rs.getInt("Fone"));
                
                
                
  
                
                lista.add(objCliente);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    
}

