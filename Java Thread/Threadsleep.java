class Threadsleep extends Thread{
	public void run(){
		for(int i=1 ; i<=10 ; i++){
			try{
				sleep(1000);
				System.out.println(i);
			}
			catch(Exception ex){
				System.out.println(ex);
			}
		}
	}
	public static void main(String args []){
		Threadsleep ts = new Threadsleep();
		ts.start();
	}
}