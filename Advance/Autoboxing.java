import java.util.*;
class Autoboxing{
	public static void main(String args []){
		int a = 10;
		Integer i = Integer.valueOf(a);
		Integer j = a;
		System.out.println(i + "  "+ j);
	}
}