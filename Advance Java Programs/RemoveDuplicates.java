import java.util.Scanner;

public class RemoveDuplicates {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int arr[] = {1, 2, 2, 3, 4, 4, 5};

        System.out.println("Array after removing duplicates:");

        for (int i = 0; i < arr.length; i++) {

            boolean duplicate = false;

            for (int j = 0; j < i; j++) {

                if (arr[i] == arr[j]) {
                    duplicate = true;
                    break;
                }
            }

            if (!duplicate)
                System.out.print(arr[i] + " ");
        }

        sc.close();
    }
}