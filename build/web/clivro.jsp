<html>

    <jsp:include page="includes/head.jsp" />
    

  <body>

    <div class="container">
	
	
	 <!-- bloco header -->

         <jsp:include page="includes/topo_admin.jsp"/>
         
         
	  <!-- Formulario de livros -->

          <div class="for-livro">
          
        <form class="form-horizontal" action="action/clivro.jsp" method="POST">
        <fieldset>
          <legend>Formúlario de Livros</legend>
          <div class="control-group">
            <label class="control-label" for="input01">Nome do Livro</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="nome">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">Gênero</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="genero">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">Editora</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="editora">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">Edição</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="edicao">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">Ano de Publicação</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="ano">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">Autor</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="autor">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">Número de Páginas</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="paginas">
            </div>
          </div>
          
         <!-- resto -->
          <div class="control-group">
            <label class="control-label" for="fileInput">Foto</label>
            <div class="controls">
                <input class="input-file"  style="margin:27px;" id="fileInput" type="file">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="textarea">Sinopse</label>
            <div class="controls">
              <textarea class="input-xlarge" id="textarea" rows="3" style="margin: 25px 25px 0px; width: 322px; height: 116px; " name="sinopse"></textarea>
            </div>
          </div>
         <div class="form-actions">
            <input type="submit" class="btn btn-pink" value="Salvar" />
            <button class="btn btn-pink">Cancelar</button>
          </div>
        </fieldset>
      </form>

           
          </div>
          
          
           <!-- Final do formulario de livros -->  
           
	  <!-- Destaques regionais -->
           <jsp:include page="includes/rodape.jsp" />
          
       </div>


  <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <jsp:include page ="includes/javaScript.jsp" />
    
  </body>
</html>
