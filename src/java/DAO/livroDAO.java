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

        String sql = "select * from livros order by id desc limit 6";

        ConjuntoResultados linha = bancoDados.executaSelect(sql);


        while (linha.next()) {

            livro n = new livro();
            n.setTitulo(linha.getString("titulo"));
            n.setImg(linha.getString("imagem"));
            n.setAutor(linha.getString("autor"));
            n.setEditora(linha.getString("editora"));
            n.setEdicao(linha.getInt("edicao"));
            n.setGenero(linha.getString("genero"));
            n.setSinopse(linha.getString("sinopse"));
            n.setAno(linha.getString("data"));
            n.setId(linha.getString("id"));
            n.setnPaginas(linha.getInt("nPaginas"));
            
            
            lista.add(n);
        }
        return lista;


    }
    
    public static livro pegaLivroPeloId(String id){
        MySQL bancoDados = new MySQL();
        String sql = "select * from livros where id = "+id;
        ConjuntoResultados linha = bancoDados.executaSelect(sql);

        //Se tiver pelo menos uma linha, encontrou a novidade que buscamos
        if(linha.next()){
            //então, cria objeto para o livro
            livro n = new livro();
            //Preenche os valores dos atributos deste livro
            n.setTitulo(linha.getString("titulo"));
            n.setImg(linha.getString("imagem"));
            n.setAutor(linha.getString("autor"));
            n.setEditora(linha.getString("editora"));
            n.setEdicao(linha.getInt("edicao"));
            n.setGenero(linha.getString("genero"));
            n.setSinopse(linha.getString("sinopse"));
            n.setAno(linha.getString("data"));
            n.setId(linha.getString("id"));
            n.setnPaginas(linha.getInt("nPaginas"));
            //E retorna o objeto com os valores corretos
            return n;
        } else {
            //se não encontrou nada, retorna null
            return null;
        }
    }
    
}
