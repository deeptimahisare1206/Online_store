class MltplCatch{
	public static void main(String args []){
		try{
			int x[] = {23,34,45,67,78};
			int p = x[7]/0;
		}
		catch(ArithmeticException at){
			System.out.println(at);
		}
		catch(ArrayIndexOutOfBoundsException ary){
			System.out.println(ary);
		}
	}
}