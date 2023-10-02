class AryException{
	public static void main(String args []){
		try{
			int a [] = {10,20,30,40,50};
			System.out.println(a[9]);
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}