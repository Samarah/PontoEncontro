<%@page import="util.HTMLUtil"%>
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
                //Pega par�metro da URL. Ex: novidades.jsp?id=3
                String id = request.getParameter("id");

                //Pega objeto Noticia do Banco de Dados correspondente ao ID
                livro n = livroDAO.pegaLivroPeloId(id);
                if(n == null){
                    //Nao encontrou o objeto. O Id n�o existe no Banco
                    //Ent�o, redireciona para a p�gina de erro.
                    response.sendRedirect("erro.jsp");
                }

                //Se esta tudo bem, continua desenhando a p�gina.
                %>
                <div class="cabecario">
            <!--    <% out.print(n.getTitulo()); %> -->
            <br><%=n.getTitulo()%> - <%=n.getAutor()%>
            <div class="detalhe">
            <img style="float: left; width: 135px; height: 200px;" src="imagem/<%=n.getImg()%>">
            <p>Sinopse: <%=n.getSinopse()%></p>
            
             </div>
            <div class="noticia1">
            <p>Autor: <%=n.getAutor()%></p>
            </div>
            <div class="noticia1">
            <p>Editora: <%=n.getEditora()%></p>
            </div>
            <div class="noticia1">
            <p>Edi��o: <%=n.getEdicao()%></p>
            </div>
            <div class="noticia1">
            <p>G�nero: <%=n.getGenero()%></p>
            </div>
            <div class="noticia1">
            <p>Ano: <%=n.getAno()%></p>
            </div>
            <div class="noticia1">
            <p>N�mero de P�ginas: <%=n.getnPaginas()%></p>
                
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
