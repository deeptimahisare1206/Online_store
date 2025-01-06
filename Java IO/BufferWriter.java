import java.io.*;
class BufferWriter{
	public static void main(String args []){
		try{
			FileWriter fw = new FileWriter("Fulka.txt");
			BufferedWriter bw = new BufferedWriter(fw);
			String str = "Gollllllgappppaaaaaaaaaaaaaaa... wwwwwwwwwwwwwwwaaaaaaaaaaaaaaaaaaaaaaallllllllllaaaaaaaaaaaaaaa..";
			bw.write(str);
			bw.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}