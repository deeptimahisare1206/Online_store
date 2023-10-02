class Book_ticket{
	int total=10;
	synchronized void book_movie(int seat){
		if (total>=seat){
			total=total - seat;
			System.out.println(seat);
		}
		else{
			System.out.println(total+" is remaining.");
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
			m.start();
	}

}