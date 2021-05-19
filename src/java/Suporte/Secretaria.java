package Suporte;

public class Secretaria {
    
    public String Media(float nota1, float nota2, float nota3, float nota4 ){
        float media;
        
        media = (nota1 + nota2 + nota3 + nota4) / 4;
        
        if(media > 6){
            return String.format("Aprovado com Média: %.2f", media);
        }
        else{
            return String.format("Reprovado com Média: %.2f", media);
        }
        
    }
    
    public String Notas(String nome_text, float nota1, float nota2, float nota3, float nota4){
        String result = "<br><br>Notas do Aluno: " + nome_text + "<br>"; 
        
        float notas[] = {nota1, nota2, nota3, nota4};
        
        for(int i = 0; i < notas.length; i++){
            result += notas[i] + "<br>";
        }
        
        result += "<br>";
        return result;
    }
}
