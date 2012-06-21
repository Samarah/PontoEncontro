/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import modelo.usuario;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author ml
 */
public class usuarioDAO {
    
    
      public static ArrayList<usuario> lista() {

        ArrayList<usuario> lista = new ArrayList<usuario>();

        MySQL bancoDados = new MySQL();

        String sql = "select * from usuario order by id desc limit 6";

        ConjuntoResultados linha = bancoDados.executaSelect(sql);


        while (linha.next()) {

            usuario n = new usuario();
            n.setId(linha.getString("id"));
            n.setNome(linha.getString("nome"));
            n.setSobrenome(linha.getString("sobrenome"));
            n.setAniversario(linha.getString("aniversario"));
            n.setPais(linha.getString("pais"));
            n.setEstado(linha.getString("estado"));
            n.setCidade(linha.getString("cidade"));
            n.setProfissao(linha.getString("profissao"));
            n.setGenero(linha.getString("genero"));
            n.setRelacao(linha.getString("relacao"));
            n.setEmail(linha.getString("email"));
            n.setSenha(linha.getInt("senha"));
            
       
            lista.add(n);
        }
        return lista;


    }
    
}
