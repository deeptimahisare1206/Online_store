import java.util.*;
class Sjoiner{
	public static void main(String args []){
		StringJoiner sj = new StringJoiner(",", "{", "}");
		sj.add("Deepti Mahisare");
		sj.add("Ranu Vishwakarma");
		sj.add("Yogesh Rajput");
		sj.add("Ankit Rathore");
		sj.add("Sejal Shriwas");
		sj.add("Nayanshree Soni");
		sj.add("Sourabh Kumar");
		sj.add("Tushar Khare");
		sj.add("Lokesh Kewat");
		sj.add("Komal Kumari");
		
		System.out.println("After String Joiner: "+sj);
	}
}