<html>

    <jsp:include page="includes/head.jsp" />
    

  <body>

    <div class="container">
	
	
	 <!-- bloco header -->

         <jsp:include page="includes/topo.jsp"/>
         
         
	  <!-- Notícias -->
          <p><h3><b>Lan�amento do M�s!</b></h3></p>
          <jsp:include page="includes/livros.jsp"/>
          <p><h3><b>Destaque do Momento!</b></h3></p>
          <jsp:include page="includes/destaque.jsp"/>
          <p><h3><b>Lan�amento do Pr�ximo M�s!</b></h3></p>
          <jsp:include page="includes/CorroselSecundario.jsp"/>
                       
	  <!-- Destaques regionais -->
           <jsp:include page="includes/rodape.jsp" />
          
       </div>


  <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <jsp:include page ="includes/javaScript.jsp" />
    
  </body>
</html>
