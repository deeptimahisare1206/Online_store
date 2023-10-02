import java.io.*;
class Students implements Serializable{
	int roll;
	float per;
	Students(int r, float p){
		roll = r;
		per = p;
	}
}
class SerializableInterface{
	public static void main(String args []){
		try{
			FileOutputStream fos = new FileOutputStream("SerialStudent.txt");
			Students st = new Students(11, 89.2f);
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(st);
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}