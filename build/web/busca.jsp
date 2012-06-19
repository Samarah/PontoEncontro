
<%@page import="DAO.livroDAO"%>
<%@page import="modelo.livro"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
  
  <jsp:include page="includes/head.jsp" />

  <body>

    <div class="container">

        <jsp:include page="includes/topo.jsp" />

        <div class="row">

            <div class="span6 novidades">

            <h2>Resultado da Busca:</h2>

            <%
                //Código java
                String textoBusca = request.getParameter("texto_busca");

                ArrayList<livro> lista = livroDAO.busca(textoBusca);
                for( livro n : lista){
                    out.println( n.getHTMLBlock() );
                }
            %>

            </div>
            
        </div>
    </div>
    
    <jsp:include page="includes/javaScript.jsp" />
  </body>
</html>
