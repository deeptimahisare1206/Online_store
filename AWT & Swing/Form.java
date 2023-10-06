import java.awt.*;
class Form{
	public static void main(String args []){
		Frame f = new Frame();
		f.setVisible(true);
		f.setSize(800,500);
		f.setTitle("Form");
		f.setLayout(null);
		
		
		TextField t1 = new TextField();
		TextField t2 = new TextField();
		t1.setBounds(150, 100, 170 , 50);
		t2.setBounds(150, 300, 170 , 50);
		f.add(t1);
		f.add(t2);
	}
}