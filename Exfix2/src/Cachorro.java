
public class Cachorro extends Mamifero{
    
    @Override 
    public void locomover(){
        System.out.println("Caminhando e correndo");
    }
    
    @Override
    public void alimentar(){
        System.out.println("Mamando e comendo ração para cachorro ou comendo comida");
    }
    
    @Override
    public void emitirSom(){
        System.out.println("Latindo");
    }
    
}
