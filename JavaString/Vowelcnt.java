import java.util.*;
class Vowelcnt{
	public static void main(String args []){
		Scanner sc= new Scanner(System.in);
		System.out.println("Enter your name: ");
		String name = sc.nextLine();
		int vo = 0;
		for(int i = 0;i<name.length();i++){
			if(name.charAt(i)=='a'||name.charAt(i)=='e'||name.charAt(i)=='i'||name.charAt(i)=='o'||name.charAt(i)=='u'){
				vo++;
			}
		}
		System.out.println("Count of vowels in the Stirng is: "+vo);
	}
}