class ArthmticException{
	public static void main(String args []){
		int c;
		try{
			System.out.println("helloo");
			c = 25/0;
			System.out.println(c);
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}