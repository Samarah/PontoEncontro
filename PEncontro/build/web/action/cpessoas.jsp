<%@page import="util.MySQL"%>
<%
    String pNome = request.getParameter("nome");
    String pAniversario = request.getParameter("aniversario");
    String pPais = request.getParameter("pais");
    String pEstado = request.getParameter("estado");
    String pCidade = request.getParameter("cidade");
    String pProfissao = request.getParameter("profissao");
    String pGenero = request.getParameter("genero");
    String pRelacao = request.getParameter("relacao");
    String pEmail = request.getParameter("email");
    String pSenha = request.getParameter("senha");


    String sql = "insert into usuario (nome, aniversario, pais, estado, cidade, profissao, genero, relacao, email, senha) "
            + "values ("
            + "\"" + pNome + "\", "
            + "\"" + pAniversario + "\", "
            + "\"" + pPais + "\", "
            + "\"" + pEstado + "\", "
            + "\"" + pCidade + "\", "
            + "\"" + pProfissao + "\", "
            + "\"" + pGenero + "\", "
            + "\"" + pRelacao + "\", "
            + "\"" + pEmail + "\", "
            + "\"" + pSenha + "\" "
            + ")";
    MySQL m = new MySQL();

    if (m.executaInsert(sql)) {
        
        response.sendRedirect("../sucesso.jsp");
        
        
    } else {
        out.print("errado<br />");
        out.print(sql);
    }
%>
