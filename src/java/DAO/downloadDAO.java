package DAO;

import java.util.ArrayList;
import modelo.download;
import util.ConjuntoResultados;
import util.MySQL;

public class downloadDAO {

    public static ArrayList<download> lista( String letra) {

        ArrayList<download> lista = new ArrayList<download>();

        MySQL bancoDados = new MySQL();

        String sql = "select * from download where Titulo like \""+letra+"%\" ";

        ConjuntoResultados linha = bancoDados.executaSelect(sql);


        while (linha.next()) {

           download n = new download();
        
            n.setId (linha.getString("id"));
            n.setTitulo(linha.getString("Titulo"));
            n.setLink(linha.getString("link"));
            
            
            lista.add(n);
        }
        return lista;


    }
    
    public static ArrayList<download> listas() {

        ArrayList<download> listas = new ArrayList<download>();

        MySQL bancoDados = new MySQL();

        String sql = "select * from download";

        ConjuntoResultados linha = bancoDados.executaSelect(sql);


        while (linha.next()) {

           download n = new download();
        
            n.setId (linha.getString("id"));
            n.setTitulo(linha.getString("Titulo"));
            n.setLink(linha.getString("link"));
            
            
            listas.add(n);
        }
        return listas;


    }
}
