/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author ml
 */
public class comentario {

    
     protected String id;
  protected String nome; 
  protected String texto;
  protected String idLivro;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdLivro() {
        return idLivro;
    }

    public void setIdLivro(String idLivro) {
        this.idLivro = idLivro;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }
    
    public String getHTMLBlock(){
        String s = "";
        s += "<div class=\"bloco-comentario\">";
            s += "<h4>"+this.getNome()+"</h4>";;        
            s += "<p>" + this.getTexto() + "</p>" ;
        s+="</div>";
        return s;
    }
  
  
}


 