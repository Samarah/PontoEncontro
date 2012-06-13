/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


public class livro {
    
    protected String id;
    protected String titulo;
    protected String img;
    protected String link;
    protected String autor;
    protected String editora;
    protected String ano;
    protected String sinopse;
    protected int edicao;
    protected String genero;
    protected int npaginas;

    public livro () {
        
    }
    
    public livro(String titulo, String img, String link) {
        this.titulo = titulo;
        this.img = img;
        this.link = link;
    }
    
    public livro(String id,String titulo, String img, int nPaginas, String autor, String editora, String ano, String sinopse, int edicao, String genero, String Link) {
        this.id = id;
        this.titulo = titulo;
        this.img = img;
        this.npaginas = npaginas;
        this.autor = autor;
        this.editora = editora;
        this.ano = ano;
        this.sinopse = sinopse;
        this.edicao = edicao;
        this.genero = genero;
        this.link = link;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getEdicao() {
        return edicao;
    }

    public void setEdicao(int edicao) {
        this.edicao = edicao;
    }

    public String getEditora() {
        return editora;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getSinopse() {
        return sinopse;
    }

    public void setSinopse(String sinopse) {
        this.sinopse = sinopse;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
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

    public int getnPaginas() {
        return npaginas;
    }

    public void setnPaginas(int nPaginas) {
        this.npaginas = nPaginas;
    }
   
    public String getLinkToPage(){
        return "vlivro.jsp?id="+this.id;
    }

                public String getHTMLBlock(){
                    
                String s = "";
                s+="<div class=\"noticia span4\">";
                s+="<img class=\"thumbnail\" src=\"imagem/"+this.getImg()+"\" ></img>";
                s+="<p><b>" + this.getTitulo() + "</b></p>";
                s += "<a href=\""+this.getLinkToPage()+"\">veja mais.</a>";
                s+="</div>";
                return s;
}
    
    }

