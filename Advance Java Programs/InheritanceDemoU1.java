class Animal {
    // Method in parent class
    void sound() {
        System.out.println("Animal makes a sound.");
    }
}

class Dog extends Animal {
    // Overriding the parent class method
    @Override
    void sound() {
        System.out.println("Dog barks.");
    }
}

public class InheritanceDemoU1 {
    public static void main(String[] args) {

        // Parent class object
        Animal a1 = new Animal();
        a1.sound();

        // Runtime Polymorphism
        Animal a2 = new Dog();
        a2.sound();
    }
}