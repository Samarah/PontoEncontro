<%@page import="util.MySQL"%>
<%
String nomeLivro = request.getParameter("nome");
String nomeGenero = request.getParameter("genero");
String nomeEditora = request.getParameter("editora");
String nomeEdicao = request.getParameter("edicao");
String nomeAno = request.getParameter("ano");
String nomeAutor = request.getParameter("autor");
String nomePaginas = request.getParameter("paginas");
String nomeSinopse = request.getParameter("sinopse");


String sql = "insert into livros (titulo, genero) "
        + "values ("
            + "\""+nomeLivro+"\", "
            + "\""+nomeGenero+"\", "
            + "\""+nomeEditora+"\", "
            + "\""+nomeEdicao+"\", "
            + "\""+nomeAno+"\", "
            + "\""+nomeAutor+"\", "
            + "\""+nomePaginas+"\","
            + "\""+nomeSinopse+"\" "
            
            
        + ")";
MySQL m = new MySQL();

if(m.executaInsert(sql)){
    out.print("Nome - "+nomeLivro);
    out.print("<br />");
    out.print("Genero - "+request.getParameter("genero"));
} else {
    out.print("errado<br />");
    out.print(sql);
}
%>
