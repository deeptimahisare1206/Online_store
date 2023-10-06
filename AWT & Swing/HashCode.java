class Student{
	int roll, marks;
	Student(int r, int m){
		roll =r;
		marks =m;
	}
}
class HashCode{
	public static void main (String args []){
		Student st = new Student(101,98);
		System.out.println(st);
	}
}