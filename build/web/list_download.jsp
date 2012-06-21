<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
  
  <jsp:include page="includes/head.jsp" />

  <body>

    <div class="container">

        <jsp:include page="includes/bloco_topo.jsp" />

        <div class="row">

            <jsp:include page="includes/bloco_menu.jsp" />

             <div class="span9">
                 <h2>Lista de Novidades</h2>

                 <table class="table">
                 <%
                    //Código java
                    ArrayList<download> lista = downloadDAO.lista();
                    for( download n : lista){
                        out.print("<tr>");
                            out.print("<td>" + n.getTitulo() + "</td>");

                            out.print("<td>" + n.getLink() + "</p>" );

                            out.print("<td>");
                                String linkExcluir = "del_download.jsp?titulo="+n.getTitulo();
                                out.println("<a href=\""+linkExcluir+"\">excluir</a>" );
                            out.print("</td>");
                        out.print("</tr>");
                    }
                %>
                 </table>
             </div>
        </div>

    </div>
    
    <jsp:include page="includes/javascript.jsp" />
  </body>
</html>
