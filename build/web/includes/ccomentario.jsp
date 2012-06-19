<form class="form-horizontal" action="action/ccomentario.jsp" method="POST">
    <fieldset>

      <input type="hidden" name="id_livro" value="<%=request.getParameter("id")%>" />

       <div class="control-group">
            <label class="control-label" for="input01">Nome</label>
            <div class="controls">
              <input type="text" class="input-xlarge" id="input01" name="nome">
            </div>
          </div>

      <div class="control-group">
            <label class="control-label" for="textarea">Texto</label>
            <div class="controls">
              <textarea class="input-xlarge" id="textarea" rows="3" style="margin: 25px 25px 0px; width: 270px; height: 116px; " name="texto"></textarea>
            </div>
          </div>

      <div class="form-actions">
        <button type="submit" class="btn btn-primary">Enviar comentário</button>
      </div>

    </fieldset>
</form>