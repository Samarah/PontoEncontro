<%@page import="modelo.livro"%>
<%@page import="DAO.destaqueDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="row bloco-noticias">
	  
     <%
     ArrayList<livro> listas = destaqueDAO.lista();
         for(livro n:listas){
		out.print("<div class=\"well noticia span4\">");
                out.print("<img src="+ n.getImg() +"></img>");
                out.print("<p><b>" + n.getTitulo() + "</b></p>");
                out.print("<a href=\"#\"><p><h4>" + n.getLink() + "</h4></p></a>");
                out.print("</div>");
               }
        %>
			
			
	  </div>