<%@page import="util.MySQL"%>
<%
String nome = request.getParameter("nome");
String texto = request.getParameter("texto");
String idLivro = request.getParameter("id_livro");

String sql = "insert into comentario ";
sql += "(nome, texto, id_livro) ";
sql += "values (";
    sql += "\""+nome+"\",";   
    sql += "\""+texto+"\",";    
    sql += "\""+idLivro+"\"";
sql += ")";

//Teste
//out.print(sql);

MySQL mysql = new MySQL();
String linkVoltar = "../vlivro.jsp?id="+idLivro;
if(mysql.executaInsert(sql)){
       
    response.sendRedirect(linkVoltar);
    
} else {
    
    out.print("Erro: por favor, tente novamente<br />");
    out.print("<a href=\""+linkVoltar+"\">Voltar</a>");

}
%>
