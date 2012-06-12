package DAO;


import java.util.ArrayList;
import modelo.livro;

public class destaqueDAO {
    
public static ArrayList<livro> lista(){
    
    ArrayList <livro> lista = new ArrayList <livro> ();

    lista.add (new livro("Titulo","imagem/c.png","*Mais Comentado*"));
    lista.add (new livro ("Titulo","imagem/c.png","*Mais Lido*"));
    lista.add (new livro("Titulo","imagem/c.png","*Mais Visitado*"));
        
    
return lista;


}

    
}
