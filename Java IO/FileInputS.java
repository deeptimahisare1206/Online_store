import java.io.*;
class FileInputS{
	public static void main(String args []){
		try{
			FileInputStream fis = new FileInputStream("IOStream.txt");
			int i;
			while((i=fis.read())!=-1){
				System.out.print((char)i);
			}
			fis.close();
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}