/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


public class livro {
    
    protected String titulo;
    protected String img;
    protected String link;
    protected String autor;
    protected String editora;
    protected String ano;
    protected String sinopse;
    protected int edicao;
    protected String genero;
    
    public livro () {
        
    }
    
    public livro(String titulo, String img, String link) {
        this.titulo = titulo;
        this.img = img;
        this.link = link;
    }
    
    public livro(String titulo, String img,String link , String autor, String editora, String ano, String sinopse, int edicao, String genero) {
        this.titulo = titulo;
        this.img = img;
        this.link = link;
        this.autor = autor;
        this.editora = editora;
        this.ano = ano;
        this.sinopse = sinopse;
        this.edicao = edicao;
        this.genero = genero;
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

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
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
    
    
    
    }

