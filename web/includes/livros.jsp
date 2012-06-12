 <%@page import="modelo.livro"%>
<%@page import="DAO.livroDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="row bloco-noticias">
	  
     <%
     ArrayList<livro> lista = livroDAO.lista();
         for(livro n:lista){
		out.print("<div class=\"noticia span4\">");
                out.print("<img class=\"thumbnail\" src=\"imagem/"+n.getImg()+"\" ></img>");
                out.print("<p><b>" + n.getTitulo() + "</b></p>");
                out.print("<a href=\"#\">Mais Informaçoes</a>");
                out.print("</div>");
               }
        %>
			
			
	  </div>