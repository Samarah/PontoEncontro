<html>

    <jsp:include page="includes/head.jsp" />
    

  <body>

    <div class="container">
	
	
	 <!-- bloco header -->

         <jsp:include page="includes/topo.jsp"/>
         
         
	  <!-- Formulario de livros -->

          <div class="for-blocofundo row">

            <form class="form-horizontal" action="action/cpessoas.jsp" method="POST">
            <fieldset>
            <legend>Formúlario de Usuários</legend>

            <div class="control-group">
                <label class="control-label" for="input01">Nome</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="nome">
                </div>
            </div>

          <div class="control-group">
                <label class="control-label" for="input01">Sobrenome</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="sobrenome">
                </div>
            </div>


            <div class="control-group">
                <label class="control-label" for="input01">Data de nascimento</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="aniversario">
                <p class="help-block">"Ano-Mes-Dia"</p>
                </div>

            </div>

            <div class="control-group">
                <label class="control-label" for="input01">País</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="pais">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="input01">Estado</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="estado">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="input01">Cidade</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="cidade">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="input01">Profissão</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="profissao">
                </div>
            </div>

            <div class="control-group">
            <label class="control-label" for="inlineChecbox1">Sexo</label>
            <div style="margin-left: 330px;margin-top: 22px;" class="controls">
                <label class="checkbox inline">
                    <input type="checkbox" id="inlineChecbox1" value="F" name="genero" />
                    F
                </label>

                <label class="checkbox inline">
                    <input type="checkbox" id="inlineCheckbox2" value="M" name="genero" />
                    M
                </label>

            </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="input01">Estado Civil</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="relacao">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="input01">Email</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="email">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="input01">Senha</label>
                <div class="controls">
                <input type="text" class="input-xlarge" id="input01" name="senha">
                </div>
            </div>


            <div style="margin-top: 40px;" class="form-actions">
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

