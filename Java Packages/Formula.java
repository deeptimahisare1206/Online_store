package mathematics.arithmeticop;
import java.util.*;
public class Formula{
	public void deter(){
	Scanner sc = new Scanner(System.in);
		System.out.println("Enter three numbers: ");
		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();
		int d = (b*b)-(4*a*c);
		System.out.println("Determinant is: ");
		System.out.println(d);
	}
}