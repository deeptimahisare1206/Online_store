class Student{
	int roll, marks;
	Student(int r, int m){
		roll =r;
		marks =m;
	}
	public String toString(){
		return(roll + "  "+ marks);
	}
}
class toStrng{
	public static void main (String args[]){
		Student st = new Student(1,546);
		System.out.println(st.hashCode());
		System.out.println(st.toString());
		System.out.println(st.getClass());
		System.out.println(st.getClass().getName());
	}
}