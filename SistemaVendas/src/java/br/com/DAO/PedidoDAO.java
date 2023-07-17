package br.com.DAO;

import br.com.model.Pedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PedidoDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Pedido> lista = new ArrayList();
    
    public void cadastrarPedido(Pedido objPedido) throws ClassNotFoundException{
        String sql = "insert into Pedido(idPedido,Quantidade) values (?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objPedido.getIdPedido());
            pstm.setInt(2, objPedido.getQuantidade());
                   
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Pedido> pesquisarPedido() throws ClassNotFoundException{
        String sql = "select * from Pedido";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Pedido objPedido = new Pedido();
                
                objPedido.setIdPedido(rs.getInt("idPedido"));                
                objPedido.setQuantidade(rs.getInt("Quantidade"));
                
                lista.add(objPedido);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
}
    

