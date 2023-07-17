package br.com.DAO;

import br.com.model.Fornecedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FornecedorDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Fornecedor> lista = new ArrayList();
    
    public void cadastrarFornecedor(Fornecedor objFornecedor) throws ClassNotFoundException{
        String sql = "insert into Fornecedor(idFornecedor, Nome_Fornecedor, Endereco) values (?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objFornecedor.getIdFornecedor());
            pstm.setString(2, objFornecedor.getNome_Fornecedor());
            pstm.setString(3, objFornecedor.getEndereco());
           
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Fornecedor> pesquisarFornecedor() throws ClassNotFoundException{
        String sql = "select * from Fornecedor";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);          
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Fornecedor objFornecedor = new Fornecedor();
                
              objFornecedor.setIdFornecedor(rs.getInt("idFornecedor"));
              objFornecedor.setNome_Fornecedor(rs.getString("Nome_Fornecedor"));
               objFornecedor.setEndereco(rs.getString("Endereco"));
               
                lista.add(objFornecedor);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    
}

