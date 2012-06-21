<%@page import="DAO.comentariosDAO"%>
<%@page import="modelo.comentario"%>
<%@page import="DAO.comentariosDAO"%>
<%@page import="java.util.ArrayList"%>

<%
//Código java
ArrayList<comentario> lista = comentariosDAO.lista( request.getParameter("id") );
for( comentario c : lista){
    out.print( c.getHTMLBlock() );
}
%>
</html>
