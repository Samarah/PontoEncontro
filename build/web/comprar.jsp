<%@page import="java.util.ArrayList"%>
<%@page import="modelo.comprar"%>
<%@page import="DAO.ComprarDAO"%>
<page import="java.util.ArrayList">
<html>

    <jsp:include page="includes/head.jsp" />


    <body>

        <div class="container">


            <!-- bloco header -->

            <jsp:include page="includes/topo.jsp"/>


            <!-- Notícias -->
            <div class="row">
                <div class="fundo">
                  
<div class="row ">	  
    <div class="bloco-comprar">
     <%
     ArrayList<comprar> lista = ComprarDAO.lista();
         for(comprar n:lista){
		out.print("<div class=\"compra\">");
                out.print("<a href=\""+n.getLink()+"\"><img class=\"\" src=\"imagem/"+n.getImg()+"\" /></a>");
                out.print("</div>");
            
               }
        %>
    </div>
			
			
	  </div>
            </div>
            </div>


            <!-- Destaques regionais -->
            <jsp:include page="includes/rodape.jsp" />

        </div>


        <!-- Le javascript
          ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <jsp:include page ="includes/javaScript.jsp" />

    </body>
</html>
