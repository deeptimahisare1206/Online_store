import java.util.*;
class CallbyValue{
	static void change(int num){
		num = num+1;
		System.out.println(num);
	}
	public static void main(String args[]){
		int n = 1000;
		System.out.println(n);
		change(n);
		System.out.println(n);
	}
}