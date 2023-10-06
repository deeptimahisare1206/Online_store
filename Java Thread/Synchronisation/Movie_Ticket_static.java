class Book_ticket{
	static int total=10;
	static synchronized void book_movie(int seat){
		if (total>=seat){
			total=total - seat;
			System.out.println(seat+" is booked " + total + " are remaining.");
		}
		
	}
}
class Movie_Ticket_static extends Thread
{
		//static Book_ticket bt;
		int seat;
		public void run(){
			Book_ticket.book_movie(seat);
		}
		public static void main(String args []){
			//bt = new Book_ticket();
			Movie_Ticket_static ms = new Movie_Ticket_static();
			
			ms.seat = 6;
			//ms.seat = 5;
			ms.start();
	}

}