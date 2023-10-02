package mathematics.arithmeticop;
import java.util.*;
public class Arithmetic{
	
	public void add(){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter two numbers: ");
		int x = sc.nextInt();
		int y = sc.nextInt();
		System.out.println("Addition: " + (x+y));
	}
	public void sub(){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter two numbers: ");
		int x = sc.nextInt();
		int y = sc.nextInt();
		System.out.println("Subtraction: " +(x-y));
	}
	public void multiple(){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter two numbers: ");
		int x = sc.nextInt();
		int y = sc.nextInt();
		System.out.println("Multiplication: " +x*y);
	}
	public void div(){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter two numbers: ");
		int x = sc.nextInt();
		int y = sc.nextInt();
		System.out.println("Division: "+ x/y);
	}
	public void mod(){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter two numbers: ");
		int x = sc.nextInt();
		int y = sc.nextInt();
		System.out.println("Modulus: " + x%y);
	}
}