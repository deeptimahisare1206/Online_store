class ThroKey{
	void validate(int age){
		if(age<18){
			throw new ArithmeticException("Not Eligible for voting..");
		}
		else{
			System.out.println("Eligible for voting");
		}
	}
	public static void main(String args []){
		ThroKey th = new ThroKey();
		try{
			th.validate(19);
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	}
}