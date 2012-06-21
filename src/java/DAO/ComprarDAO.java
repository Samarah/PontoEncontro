package DAO;

import java.util.ArrayList;
import modelo.comprar;
import util.ConjuntoResultados;
import util.MySQL;

public class ComprarDAO {

    public static ArrayList<comprar> lista() {

        ArrayList<comprar> lista = new ArrayList<comprar>();

        MySQL bancoDados = new MySQL();

        String sql = "select * from compras";

        ConjuntoResultados linha = bancoDados.executaSelect(sql);


        while (linha.next()) {

           comprar n = new comprar();
            n.setId(linha.getString("id"));
            n.setImg(linha.getString("imagem"));
            n.setLink(linha.getString("link"));
            
            lista.add(n);
        }
        return lista;


    }
}
