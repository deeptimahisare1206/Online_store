import java.io.*;
class FileOutputS{
	public static void main(String args []){
		try{
			FileOutputStream fos = new FileOutputStream("IOStream.txt");
			String str = "GoluuGappa Wala";
			byte b[] = str.getBytes();
			fos.write(b);
			fos.close();
			System.out.println("File Created.");
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}