class RunnableInterface implements Runnable{
	public void run(){
		System.out.println("Kya kareeeeee.....");
	}
	public static void main(String args []){
		RunnableInterface ri = new RunnableInterface();
		Thread td = new Thread(ri);
		td.start();
	}
}