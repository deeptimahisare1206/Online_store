class Threadclass extends Thread{
	public void run(){
		System.out.println("Time to gooo...");
	}
	public static void main(String args[]){
		Threadclass tc = new Threadclass();
		tc.start();
	}
}