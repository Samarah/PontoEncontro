<%@page import="util.MySQL"%>
<%
String id = request.getParameter("id");

String sql = "delete from livros where id = "+id;

MySQL mysql = new MySQL();
if(mysql.executaDelete(sql)){
    response.sendRedirect("../list_livros.jsp");
} else {
    out.print("Erro inesperado. Verifique o log de erros no Glassfish e feja o que aconteceu.");
}
%>
