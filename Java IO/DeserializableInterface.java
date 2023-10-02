import java.io.*;
class DeserializableInterface{
	public static void main(String args []){
		try{
			FileInputStream fis = new FileInputStream("SerialStudent.txt");
			ObjectInputStream oos = new ObjectInputStream(fis);
			Students st =(Students)oos.readObject();
			System.out.print(st.roll+" " + st.per);
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}