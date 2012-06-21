/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import modelo.comentario;
import util.*;

public class comentariosDAO {
    
     public static ArrayList<comentario> lista( String idLivro ){
        
        ArrayList<comentario> lista = new ArrayList<comentario>();
        MySQL bancoDados = new MySQL();
        String sql = "select * from comentario where id_livro = "+idLivro;
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);
       
        while(linhas.next()){            
            comentario c = new comentario();
            c.setId( linhas.getString("id") );
            c.setNome( linhas.getString("nome") );            
            c.setTexto( linhas.getString("texto") );
            c.setIdLivro( linhas.getString("id_livro") );
           lista.add(c);
        }

        return lista;        
    }    
   
}

    
