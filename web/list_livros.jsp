<%@page import="DAO.livroDAO"%>
<%@page import="modelo.livro"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
  
  <jsp:include page="includes/head.jsp" />

  <body>

    <div class="container">

        <jsp:include page="includes/topo_admin.jsp" />

        <div class="row">

             <div class="span12">
                 <h2>Lista de Livros</h2>

                 <table class="table">
                 <%
                    //Código java
                    ArrayList<livro> lista = livroDAO.lista();
                    for( livro n : lista){
                        out.print("<tr>");
                            out.print("<td>" + n.getTitulo() + "</td>");

                            out.print("<td>" + n.getAutor() + "</p>" );

                            out.print("<td>");
                                String linkExcluir = "acao/del_livro.jsp?id="+n.getId();
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

