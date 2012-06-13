<%@page import="modelo.livro"%>
<%@page import="DAO.livroDAO"%>
<%@page import="java.util.ArrayList"%>
<html>

    <jsp:include page="includes/head.jsp" />
    

  <body>

    <div class="container">
	
	 <!-- bloco header -->

         <jsp:include page="includes/topo.jsp"/>
         
          <!-- bloco de livro -->
         
           <%
     ArrayList<livro> lista = livroDAO.lista();
         for(livro n:lista){
		out.print("<div class=\"noticia span4\">");
                out.print("<img class=\"thumbnail\" src=\"imagem/"+n.getImg()+"\" ></img>");
                out.print("<p><b>" + n.getTitulo() + "</b></p>");
                out.print("<p><b>" + n.getSinopse() + "</b></p>");
                out.print("<p><b>" + n.getAutor() + "</b></p>");
                out.print("<p><b>" + n.getEditora() + "</b></p>");
                out.print("<p><b>" + n.getAno() + "</b></p>");
                out.print("<p><b>" + n.getEdicao() + "</b></p>");
                out.print("<p><b>" + n.getGenero() + "</b></p>");
                out.print("<p><b>" + n.getnPaginas() + "</b></p>");
                out.print("</div>");
               }
        %>
          
         	  <!-- Destaques regionais -->
           <jsp:include page="includes/rodape.jsp" />
          
       </div>


  <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <jsp:include page ="includes/javaScript.jsp" />
    
  </body>
</html>
