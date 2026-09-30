public class Main {

    enum Level {
        LOW, MEDIUM, HIGH
    }

    public static void main(String[] args) {

        for (Level l : Level.values()) {
            System.out.println(l.ordinal() + " = " + l.name());
        }

        Level a = Level.LOW;
        Level b = Level.HIGH;

        System.out.println(a.compareTo(b));
        System.out.println(a == Level.LOW);
    }
}
