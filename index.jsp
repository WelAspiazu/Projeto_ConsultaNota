<%@page import="Suporte.Aluno" %>
<%@page import="Suporte.Secretaria" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Escola Marques Orácio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h2>E.E Marques Orácio</h2>
        <div id="dados">
            <h3>Consulta Da Média Do Aluno</h3>
            <form action="calculoNota.jsp" method="get" target="result">
                <table>
                    <tr>
                        <td>Matrícula:</td> 
                        <td><input type="text" name="id"/></td>
                    </tr>
                    
                    <tr>
                        <td>Nome:</td>
                        <td><input type="text" name="nome"/></td>
                    </tr>
                    
                    <tr>
                        <td>Nota1:</td>
                        <td><input type="text" name="nota1"/></td>
                    </tr>
                    
                    <tr>
                        <td>Nota2:</td>
                        <td><input type="text" name="nota2"/></td>
                    </tr>
                    
                    <tr>
                        <td>Nota3:</td>
                        <td><input type="text" name="nota3"/></td>
                    </tr>
                    
                    <tr>
                        <td>Nota4:</td>
                        <td><input type="text" name="nota4"/></td>
                    </tr>
                    
                    <td>
                        <input type="submit" value="Consultar">
                    </td>
                
                    
                </table> 
            </form>
        </div>
        
        <br>
        
        <div id="retorno">
            <iframe name="result" width="390" height="200">
                
            </iframe>
        </div>
        
        <%
            // Criando uma ArrayList para adicionar alunos 
            List<Aluno> a = new ArrayList <Aluno>();
            a.add(new Aluno("Jonas", 1, 10, 8, 9, 5));
            a.add(new Aluno("Matheus", 2, 6, 4, 10, 3));
            a.add(new Aluno("Milam", 3, 2, 6, 10, 8));
            a.add(new Aluno("Abel", 4, 3, 10, 7, 1));
            a.add(new Aluno("Frnak", 5, 4, 9, 10, 2));
            
            for(Aluno valor : a){
                out.print("-----------------------------<br>");
                out.print("Nome: " + valor.getNome() + "<br>");
                out.print("Id: " + valor.getId() + "<br>");
                out.print("Nota1: " + valor.getNota1() + "<br>");
                out.print("Nota2: " + valor.getNota2() + "<br>");
                out.print("Nota3: " + valor.getNota3() + "<br>");
                out.print("Nota4: " + valor.getNota4() + "<br>");
            }
        %>
</html>
