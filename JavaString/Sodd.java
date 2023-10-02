import java.util.*;
class Sodd{
	public static void main(String args []){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter your name: ");
		String a = sc.nextLine();
		for(int i = 0;i<a.length();i++){
			if(i%2!=0){
				System.out.print(a.charAt(i)+"  ");
			}
		}
	}
}