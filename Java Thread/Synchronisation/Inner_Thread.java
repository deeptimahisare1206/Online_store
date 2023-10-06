class Inner_Thread extends Thread{
	static int i, total = 0;
	public void run(){
		synchronized (this){
			for(i = 1 ; i <= 10 ; i++){
				total+=100;
			}
		}
		this.notify();
	}
	public static void main(String args []){
		Inner_Thread it = new Inner_Thread();
		it.start();
		try{
			synchronized (it){
				it.wait();
				System.out.println(total);
			}
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}