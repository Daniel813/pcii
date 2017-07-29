
public class Ave extends Animal {
    
    protected String corPena = "Amarelo";
    
    public void fazerNinho() {
        System.out.println("Fazendo ninho");
    }
    
    @Override
    public void locomover() {
        System.out.println("Voando");
    }
    
    @Override
    public void alimentar() {
        System.out.println("Frutas");
    }
    
    @Override
    public void emitirSom() {
        System.out.println("Som da ave");
    }
    
}
