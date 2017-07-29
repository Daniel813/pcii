
public class Reptil extends Animal {
    
    protected String corEscama = "Verde Escuro";
    
    @Override
    public void locomover() {
        System.out.println("Rastejando");
    }
    
    @Override
    public void alimentar() {
        System.out.println("Vegetais");
    }
    
    @Override
    public void emitirSom() {
        System.out.println("Som do reptil");
    }
    
    
    
}
