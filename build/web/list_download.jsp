
<%@page import="modelo.download"%>
<%@page import="DAO.downloadDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

    <jsp:include page="includes/head.jsp" />
    

  <body>

    <div class="container">
	
	
	 <!-- bloco header -->

         <jsp:include page="includes/topo.jsp"/>

             <div class="span9">
                 <h2>Lista de download</h2>

                 <table class="table">
                 <%
                    //Código java
                    ArrayList<download> listas = downloadDAO.listas();
                    for( download n : listas){
                        out.print("<tr>");
                            out.print("<td>" + n.getTitulo() + "</td>");

                            out.print("<td>" + n.getLink() + "</p>" );

                            out.print("<td>");
                                String linkExcluir = "del_download.jsp?id="+n.getId();
                                out.println("<a href=\""+linkExcluir+"\">excluir</a>" );
                            out.print("</td>");
                        out.print("</tr>");
                    }
                %>
                 </table>
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
