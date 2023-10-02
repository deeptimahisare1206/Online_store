class InvalidAge extends Exception{
	public InvalidAge(String a){
		super(a);
	}
}
class UserDef{
	static void validate(int age) throws InvalidAge{
		if(age<18){
			throw new InvalidAge("Not Eligible for voting...");
		}
		else{
			System.out.println("Eligible for voting..");
		}
	}
	public static void main(String args []){
		try{
			validate(22);
		}
		catch(InvalidAge ia){
			System.out.println(ia);
		}
	} 
}