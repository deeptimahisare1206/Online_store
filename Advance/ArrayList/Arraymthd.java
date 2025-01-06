import java.util.*;
class Arraymthd{
	public static void main(String args []){
		ArrayList <String> al = new ArrayList<>();
		al.add("Sejal");
		al.add("Yogesh");
		al.add("Ranu");
		al.add("Deepu");
		al.add("Ankit");
		al.add("Lokesh");
		al.add("Tushar");
		al.add("Sourabh");
		al.add("Nayanshree");
		al.add("Komal");
		System.out.println(al);
		System.out.println(al.get(4));
		al.set(3,"Deepti");
		System.out.println(al);
		System.out.println(al.indexOf("Tushar"));
		al.remove(9);
		System.out.println(al);
		Collections.sort(al);
		System.out.println(al);
		al.clear();
		System.out.println(al);
	}
}