/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


public class usuario {
   
    protected String id;
    protected String nome;
    protected String sobrenome;
    protected String aniversario;
    protected String pais;
    protected String estado;
    protected String cidade;
    protected String profissao;
    protected String genero;
    protected String relacao;
    protected String email;
    protected int senha;
    
    public usuario (){
        
        
    }
    
    public usuario (String id, String nome, String sobrenome, String aniversario, String pais, String estado, String cidade, String profisao,String genero, String relacao, String email, int senha) {
        
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.aniversario= aniversario;
        this.pais = pais;
        this.estado = estado;
        this.cidade = cidade;
        this.profissao = profissao;
        this.genero = genero;
        this.relacao = relacao;
        this.email = email;
        this.senha = senha;
        
    }

    public String getAniversario() {
        return aniversario;
    }

    public void setAniversario(String aniversario) {
        this.aniversario = aniversario;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getProfissao() {
        return profissao;
    }

    public void setProfissao(String profissao) {
        this.profissao = profissao;
    }

    public String getRelacao() {
        return relacao;
    }

    public void setRelacao(String relacao) {
        this.relacao = relacao;
    }

    public int getSenha() {
        return senha;
    }

    public void setSenha(int senha) {
        this.senha = senha;
    }

   

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }
    
    
    
    
}
