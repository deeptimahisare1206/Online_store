import java.util.*;
class ScharAt{
	public static void main(String args[]){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter your first name: ");
		String fname=sc.next();
		System.out.println("Enter your surname: ");
		String sname = sc.next();
		//CONCAT String
		System.out.println(fname.charAt(4));
		String name = fname.concat(sname);
		//for three string concate
		//String name = fname.concat(mname).concat(sname);
		System.out.println(name);
		//String Equals
		if(fname.equals(name)){
			System.out.println("String is equal");
		}
		else{
			System.out.println("String is not equal");
		}
		//Index of
		int ch = name.indexOf('a');
		System.out.println("Index of: " + ch);
		//Lower and upper case
		String str = fname.toLowerCase();
		String str1 = fname.toUpperCase();
		System.out.println("String in lower: "+ str);
		System.out.println("String iin upper: " +str1);
	}
}