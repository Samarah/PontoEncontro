package modelo;


public class comprar {
    
    protected String id;
    protected String img;
    protected String link;

                                                                                                                                
    public comprar () {
        
    }
    
    public comprar(String id,String img, String link) {
      this.img = img;
      this.id = id;
        this.link = link;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
       
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
 
  
    
}
    