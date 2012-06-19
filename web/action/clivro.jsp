<%@page import="util.MySQL"%>
<%
String nomeLivro = request.getParameter("nome");
String nomeGenero = request.getParameter("genero");
String nomeEditora = request.getParameter("editora");
String nomeEdicao = request.getParameter("edicao");
String nomeAno = request.getParameter("ano");
String nomeAutor = request.getParameter("autor");
String nomePaginas = request.getParameter("nPaginas");
String nomeSinopse = request.getParameter("sinopse");


String sql = "insert into livros (titulo, genero, editora, edicao, ano, autor, nPaginas, sinopse) "
        + "values ("
            + "\""+nomeLivro+"\", "
            + "\""+nomeGenero+"\", "
            + "\""+nomeEditora+"\", "
            + "\""+nomeEdicao+"\", "
            + "\""+nomeAno+"\", "
            + "\""+nomeAutor+"\", "
            + "\""+nomePaginas+"\","
            + "\""+nomeSinopse+"\" "
                 
        + ")";
 MySQL m = new MySQL();

    if (m.executaInsert(sql)) {
        
        response.sendRedirect("../sucesso.jsp");
        
        
    } else {
        out.print("errado<br />");
        out.print(sql);
    }
%>
