class Book_ticket{
	int total=10;
	System.out.println("1");
	System.out.println("2");
	System.out.println("3");
	System.out.println("4");
	System.out.println("5");
	System.out.println("6");
	System.out.println("7");
	System.out.println("8");

	synchronized void book_movie(int seat){
		if (total>=seat){
			total=total - seat;
			System.out.println(seat+" is booked " + total + " are remaining.");
		}
		
	}
}
class Movie_Ticket extends Thread
{
		static Book_ticket bt;
		int seat;
		public void run(){
			bt.book_movie(seat);
		}
		public static void main(String args []){
			bt = new Book_ticket();
			Movie_Ticket m = new Movie_Ticket();
			
			m.seat = 6;
			m.seat = 5;
			m.start();
	}

}