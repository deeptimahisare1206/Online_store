import java.io.*;
class Bufferreader{
	public static void main(String args []){
		try{
			FileReader fr = new FileReader("Fulka.txt");
			BufferedReader br = new BufferedReader(fr);
			int i;
			while((i=br.read())!=-1){
				System.out.print((char)i);
			}
			br.close();
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}