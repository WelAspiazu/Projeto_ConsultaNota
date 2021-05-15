<%@page import="Suporte.Secretaria" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo Média</title>
    </head>
    <body>
        <%
            try {
                    String nota1_text, nota2_text, nota3_text, nota4_text;
                    String nome_text, id_text;
                    float nota1, nota2, nota3, nota4, media;
                    //capturar
                    id_text = request.getParameter("id");
                    nome_text = request.getParameter("nome");
                    nota1_text = request.getParameter("nota1");
                    nota2_text = request.getParameter("nota2");
                    nota3_text = request.getParameter("nota3");
                    nota4_text = request.getParameter("nota4");
                    
                    nota1 = Float.parseFloat(nota1_text);
                    nota2 = Float.parseFloat(nota2_text);
                    nota3 = Float.parseFloat(nota3_text);
                    nota4 = Float.parseFloat(nota4_text);
                    
                    // imprimindo a média do aluno
                    out.println("Matrícula: " + id_text + "<br>");
                    out.println("Aluno: " + nome_text + "<br>");
                    out.println(new Secretaria().Media(nota1, nota2, nota3, nota4));
                    
                    //imprimindo a matriz das notas
                    out.println(new Secretaria().Notas(nome_text, nota1, nota2, nota3, nota4));
                    
                } catch (Exception e) {
                    out.print("Erro encontrado: " + e.getLocalizedMessage());
                }
        %>
    </body>
</html>
