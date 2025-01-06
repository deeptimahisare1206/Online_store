import java.util.*;
class Arraylistnon{
	public static void main(String args []){
		ArrayList al = new ArrayList();
		al.add("Sejal");
		al.add("Yogesh");
		al.add(100);
		String s1 = (String)al.get(0);
		String s2 = (String)al.get(1);
		Integer a =(Integer)al.get(2);
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(a);
	}
}