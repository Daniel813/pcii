
public class Tartaruga extends Reptil{
    
    
    @Override 
    public void locomover(){
        System.out.println("Caminhando ou Nadando");
    }
    
    @Override
    public void alimentar(){
        System.out.println("Comendo vegetais");
    }
    
    @Override
    public void emitirSom(){
        System.out.println("Som de tartaruga");
    }
}