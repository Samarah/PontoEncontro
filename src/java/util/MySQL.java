/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author ml
 */
public class MySQL {
    
  Statement statement;    
    String user = "root";
    String pass = "vertrigo";
    String database = "cadastro";
    String host = "localhost";
   
    public MySQL()
    {
       String url = "jdbc:mysql://"+host+":3306/"+database;             

       try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection(url,user,pass);
            statement = (Statement) conn.createStatement();
        } catch (ClassNotFoundException e){
            System.out.println("Driver MySQL não encontrado.");
        } catch (SQLException e){
            System.out.println("Erro na conexão com a base de dados: "+e);
        }        
    }

    public boolean executaInsert(String insert)
    {
        try {
            statement.execute(insert);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na Inclusão "+e);
            return false;
        }
    }
    
    public boolean executaUpdate(String insert)
    {
        try {
            statement.execute(insert);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na Inclusão "+e);
            return false;
        }
    }
    
    public boolean executaDelete(String delete)
    {
        try {
            statement.execute(delete);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na exclusão "+e);
            return false;
        }
    }
    
    public ConjuntoResultados executaSelect(String select)
    {
        try {
            ResultSet rs = statement.executeQuery(select);
            ConjuntoResultados cr = new ConjuntoResultados(rs);
            return cr;
        } catch (SQLException e){
            System.out.println("Erro no SELECT"+e);
            System.exit(0);
            return null;
        }
    }       
    
}
    

