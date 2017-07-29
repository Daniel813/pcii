
import java.util.Scanner;


public class Exfix2 {

    
    public static void main(String[] args) {
       
        Scanner scan = new Scanner(System.in);
        
        Mamifero m = new Mamifero();
        System.out.println("Tipos de Animais\n\nQual o peso do mamífero ? ");
        m.peso = scan.nextDouble();
        
        System.out.println("Qual a raça do mamífero ?");
        m.raca = scan.next();
        
        System.out.println("Qual a cor do mamífero ? ");
        m.corPelo = scan.next();
        
        System.out.println("Qual a idade do mamífero ? ");
        m.idade = scan.nextInt();
        
        System.out.println("Quantos membros o mamífero possui ? ");
        m.membros = scan.nextInt();
        
        
        Reptil r = new Reptil();
        System.out.println("\n\nQual o peso do reptil ? ");
        r.peso = scan.nextDouble();
        
        System.out.println("Qual a cor do reptil : ");
        r.corEscama = scan.next();
        
        System.out.println("Qual a idade do reptil ? ");
        r.idade = scan.nextInt();
        
        System.out.println("Quantos membros o reptil possui ? ");
        r.membros = scan.nextInt();
        
        
        Ave a = new Ave();
        System.out.println("\n\nQual o peso da ave ? ");
        a.peso = scan.nextDouble();  
        
        System.out.println("Qual a cor da ave ? ");
        a.corPena = scan.next();
        
        System.out.println("Qual a idade da ave ? ");
        a.idade = scan.nextInt();
        
        System.out.println("Quantos membros a ave possui ? ");
        a.idade = scan.nextInt();
       
        
        System.out.println("\n\n\nDados Mamífero:\n\nPeso :"+m.peso+"\nCor : "+m.corPelo+"\nIdade : "+m.idade+"\nRaça : "+m.raca+"\nQuant. membros : "+m.membros+"\n\nAções :\n");
        
        m.locomover();
        
        m.alimentar();
        
        m.emitirSom();
        
        
        System.out.println("\n\n\nDados Reptil:\n\nPeso :"+r.peso+"\nCor : "+r.corEscama+"\nIdade : "+r.idade+"\nQuant. membros : "+r.membros+"\n\nAções de reptis:\n");
        
        r.locomover();
        
        r.alimentar();
        
        r.emitirSom();
        
        
        System.out.println("\n\n\nDados Ave:\n\nPeso :"+a.peso+"\nCor : "+a.corPena+"\nIdade : "+a.idade+"\nQuant. membros : "+a.membros+"\n\nAções de aves:\n");
        
        a.locomover();
        
        a.alimentar();
        
        a.emitirSom();
        
        a.fazerNinho();
        
        Canguru cang = new Canguru();
        System.out.println("\n\n\nExemplo de ações de Mamífero : Canguru\n\n");
        
        cang.locomover();
        
        cang.alimentar();
        
        cang.emitirSom();
        
        Cachorro cacho = new Cachorro();
        System.out.println("\n\n\nExemplo de ações de Mamífero : Cachorro\n\n");
        
        cacho.locomover();
        
        cacho.alimentar();
        
        cacho.emitirSom();
        
        Tartaruga tart = new Tartaruga();
        System.out.println("\n\n\nExemplo de ações de Reptil : Tartaruga\n\n");
        
        tart.locomover();
        
        tart.alimentar();
        
        tart.emitirSom();
        
        Tucano tuca = new Tucano();
        System.out.println("\n\n\nExemplo de ações de Ave : Tucano\n\n");
        
        tuca.locomover();
        
        tuca.alimentar();
        
        tuca.emitirSom();
        
        tuca.fazerNinho();
        
    }
    
}