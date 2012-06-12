/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.Static;
import java.util.ArrayList;
import modelo.livro;
import util.ConjuntoResultados;
import util.MySQL;

public class livroDAO {

    public static ArrayList<livro> lista() {

        ArrayList<livro> lista = new ArrayList<livro>();

        MySQL bancoDados = new MySQL();

        String sql = "select * from livros";

        ConjuntoResultados linha = bancoDados.executaSelect(sql);


        while (linha.next()) {

            livro n = new livro();
            n.setTitulo(linha.getString("titulo"));
            n.setImg(linha.getString("imagem"));
            
            lista.add(n);
        }
        return lista;


    }
}
