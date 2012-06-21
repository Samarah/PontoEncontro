/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import modelo.livro;
import util.ConjuntoResultados;
import util.MySQL;

public class livroDAO {


    public static ArrayList<livro> listas(String letra) {

        ArrayList<livro> listas = new ArrayList<livro>();

        MySQL bancoDados = new MySQL();

        String sql = "select * from livros where Titulo like \""+letra+"%\" ";


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
            n.setAno(linha.getString("ano"));
            n.setId(linha.getString("id"));
            n.setnPaginas(linha.getInt("nPaginas"));
            
            
            listas.add(n);
        }
        return listas;


    }
    
    public static ArrayList<livro> lista() {

        ArrayList<livro> lista = new ArrayList<livro>();

        MySQL bancoDados = new MySQL();

        String sql = "select * from livros" ; /*String sql = "select * from livros order by id desc limit 6";*/


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
            n.setAno(linha.getString("ano"));
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
            n.setAno(linha.getString("ano"));
            n.setId(linha.getString("id"));
            n.setnPaginas(linha.getInt("nPaginas"));
            //E retorna o objeto com os valores corretos
            return n;
        } else {
            //se não encontrou nada, retorna null
            return null;
        }
    }
    
    
        public static ArrayList<livro> busca(String texto){

        ArrayList<livro> lista = new ArrayList<livro>();
        MySQL bancoDados = new MySQL();
        String sql = "select * from livros";
                sql += " where ";
                sql += "titulo like \"%"+texto+"%\" ";
                    sql += "or sinopse like \"%"+texto+"%\" ";                    
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);
        
        while(linhas.next()){
            livro n = new livro();
            n.setId( linhas.getString("id") );
            n.setTitulo( linhas.getString("titulo") );
            n.setSinopse( linhas.getString("sinopse") );
            n.setAutor(linhas.getString("autor"));
            n.setEditora(linhas.getString("editora"));
            n.setEdicao(linhas.getInt("edicao"));
            n.setAno(linhas.getString("ano"));
            n.setGenero(linhas.getString("genero"));
            n.setnPaginas(linhas.getInt("nPaginas"));
            n.setImg(linhas.getString("imagem"));
            
            
            lista.add( n );
        }

        return lista;
    }
   
}
