<html>

    <jsp:include page="includes/head.jsp" />
    

  <body>

    <div class="container">
	
	
	 <!-- bloco header -->

         <jsp:include page="includes/topo_admin.jsp"/>
         
         
	  <!-- Formulario de Comprar -->

          <div  style="height: 355px;" class="for-livro">
          
               <form class="form-horizontal">
        <fieldset>
          <legend>Formúlario de Comprar</legend>
          
          <div class="control-group">
            <label class="control-label" for="input01">Nome do Livro</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01">
            </div>
          </div>
          
          <div class="control-group">
            <label class="control-label" for="input01">Link</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01">
            </div>
          </div>
          
          <div class="control-group">
            <label class="control-label" for="fileInput">Foto</label>
            <div class="controls">
                <input class="input-file"  style="margin:27px;" id="fileInput" type="file">
            </div>
          </div>
          
         <div class="form-actions" style="height: 10px;">
            <button type="submit" class="btn btn-pink">Salvar</button>
            <button class="btn btn-pink">Cancelar</button>
          </div>
        </fieldset>
      </form>

           
          </div>
  
          
          
           <!-- Final do formulario de Comprar -->  
           
	  <!-- Destaques regionais -->
           <jsp:include page="includes/rodape.jsp" />
          
       </div>


  <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <jsp:include page ="includes/javaScript.jsp" />
    
  </body>
</html>
