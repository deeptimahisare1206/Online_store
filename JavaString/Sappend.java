class Sappend{
	public static void main(String args []){
		StringBuffer sb = new StringBuffer("Golugappa");
		StringBuffer sbf = new StringBuffer("NayanShree");
		sb.append("wala");
		System.out.println("Append: "+sb);
		sb.insert(0,"Indori");
		System.out.println("Insert: "+sb);
		sb.delete(10,15);
		System.out.println("Delete: "+sb);
		sb.replace(6,10,"Poha");
		System.out.println("Repalce: "+sb);
		sbf.reverse();
		System.out.println("Reverse: "+sbf);
		int n = sbf.capacity();
		System.out.println("capacity: "+n);
		sbf.reverse();
		System.out.println(sbf);
		System.out.println("Substring: "+(sbf.substring(0,5)));
	}
}