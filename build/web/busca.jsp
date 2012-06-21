
<%@page import="DAO.livroDAO"%>
<%@page import="modelo.livro"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

    <jsp:include page="includes/head.jsp" />
    

  <body>

    <div class="container">
	
	 <!-- bloco header -->

         <div class="row">
      
         <div class="span6 sem-margem">
		  <img src="imagem/original.png" class="logomarca"  />
		</div>
              
	  </div>

      <div class="row">
      
      
		<div class="span6">
			<div class="btn-group meu-grupo-botoes">
                                <a href="index.jsp" class="btn btn-pink">Inicio</a>
                                <a href="biblioteca.jsp" class="btn btn-pink">Biblioteca</a>
				<a href="comprar.jsp" class="btn btn-pink">Comprar</a>
				<a href="download.jsp" class="btn btn-pink">Download</a>
				<a href="contato.jsp" class="btn btn-pink">Contato</a>
			</div> 
		</div>
          
          <div class="ofsset2 span4">
              
              <div class="form-search">
    
        <form style="margin-left: 55px;" class="form-search" action="busca.jsp" method="POST">
                <span class="form-search2">
                <input type="text" name="texto_busca" style="height:21px; width:120px;" class="input-medium search-query">
                </span>
                <button type="submit" style="margin-left: 5px;" class="btn btn-pink">Buscar</button>
        </form>
</div>
          </div>
	  </div>


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
