<%@page import="DAO.usuarioDAO"%>
<%@page import="modelo.usuario"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
  
  <jsp:include page="includes/head.jsp" />

  <body>

    <div class="container">

        <jsp:include page="includes/topo_admin.jsp" />

        <div class="row">

             <div class="span12">
                 <h2>Lista de Usuários</h2>

                 <table class="table">
                 <%
                    //Código java
                    ArrayList<usuario> lista = usuarioDAO.lista();
                    for( usuario n : lista){
                        out.print("<tr>");
                            out.print("<td>" + n.getNome() + "</td>");

                            out.print("<td>" + n.getEmail() + "</p>" );

                            out.print("<td>");
                                String linkExcluir = "action/del_usuario.jsp?id="+n.getId();
                                out.println("<a href=\""+linkExcluir+"\">excluir</a>" );
                            out.print("</td>");
                        out.print("</tr>");
                    }
                %>
                 </table>
             </div>
        </div>
            <jsp:include page="includes/rodape.jsp" />
    </div>
    
    <jsp:include page="includes/javaScript.jsp" />
  </body>
</html>

