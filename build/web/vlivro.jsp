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
                //Pega parâmetro da URL. Ex: novidades.jsp?id=3
                String id = request.getParameter("id");

                //Pega objeto Noticia do Banco de Dados correspondente ao ID
                livro n = livroDAO.pegaLivroPeloId(id);
                if(n == null){
                    //Nao encontrou o objeto. O Id não existe no Banco
                    //Então, redireciona para a página de erro.
                    response.sendRedirect("erro.jsp");
                }

                //Se esta tudo bem, continua desenhando a página.
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
            <p>Edição: <%=n.getEdicao()%></p>
            </div>
            <div class="noticia1">
            <p>Gênero: <%=n.getGenero()%></p>
            </div>
            <div class="noticia1">
            <p>Ano: <%=n.getAno()%></p>
            </div>
            <div class="noticia1">
            <p>Número de Páginas: <%=n.getnPaginas()%></p>
                
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
