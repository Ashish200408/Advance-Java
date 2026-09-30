class Student {
    // Data members
    String studentName;
    int studentAge;

    // Method to display student details
    void displayDetails() {
        System.out.println("Student Name: " + studentName);
        System.out.println("Student Age: " + studentAge);
    }
}

public class StudentDemoU1 {
    public static void main(String[] args) {
        // Creating an object of Student class
        Student s1 = new Student();

        // Assigning values
        s1.studentName = "Ashish";
        s1.studentAge = 21;

        // Displaying student details
        s1.displayDetails();
    }
}