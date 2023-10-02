import firstpackage.Mypack;
import mathematics.arithmeticop.Arithmetic;
import mathematics.arithmeticop.Formula;
class Importing{
	public static void main(String args []){
		Mypack mp = new Mypack();
		mp.hello();
		mp.bye();
		Arithmetic at = new Arithmetic();
		at.add();
		at.sub();
		at.multiple();
		at.div();
		at.mod();
		Formula fr = new Formula();
		fr.deter();
	}
}