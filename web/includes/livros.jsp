 <%@page import="modelo.livro"%>
<%@page import="DAO.livroDAO"%>
<%@page import="java.util.ArrayList"%>


 <%  if (request.getParameter("letra") == null){
                    %> 

<div class="row bloco-noticias">
    <div class="row">
        
     <%
     ArrayList<livro> lista = livroDAO.lista();
         for(livro n:lista){
		out.print("<div class=\"noticia span4\">");
                out.print("<img class=\"thumbnail\" src=\"imagem/"+n.getImg()+"\" ></img>");
                out.print("<p><b>" + n.getTitulo() + "</b></p>");
                out.print("<a href=\""+n.getLinkToPage()+"\">veja mais</a>");
                out.print("</div>");
               }
        %>
			
    </div>	
	  </div>
        
        <% } %>
           <div class="row bloco-noticias">
	  
    <div class="row">
    
    
          
    <%
     ArrayList<livro> listas = livroDAO.listas( request.getParameter("letra") );
         for(livro n:listas){
		out.print("<div class=\"noticia span4\">");
                out.print("<img class=\"thumbnail\" src=\"imagem/"+n.getImg()+"\" ></img>");
                out.print("<p><b>" + n.getTitulo() + "</b></p>");
                out.print("<a href=\""+n.getLinkToPage()+"\">Mais Informaçoes</a>");
                out.print("</div>");
               }
        %>
			
			
    </div>
           </div>
        