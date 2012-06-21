package modelo;


public class download{
    
    protected String id;
    protected String titulo;
    protected String link;

                                                                                                                                
    public download () {
        
    }
    
    public download(String id,String titulo, String link) {
         this.id = id;
         this.titulo = titulo;
        this.link = link;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

}