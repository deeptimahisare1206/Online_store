import java.util.*;
class LnkdLst{
	public static void main(String args []){
		LinkedList <String> lt = new LinkedList<>();
		LinkedList <String> lt1 = new LinkedList<>();
		lt.addLast("Indore");
		lt.add("Dewas");
		lt.add("Ujjain");
		lt.add("Bhopal");
		lt.add("Dewas");
		lt.add("Delhi");
		lt.add("Rao");
		lt.add("Mhow");
		lt.add("Bhopal");
		lt.addFirst("Khandwa");
		lt1.add("Musakhedi");
		lt1.add("TeenImli");
		lt1.add("SatyaSai");
		lt1.add("Aurbindo");
		lt1.addFirst("Rajwada");
		lt.addAll(lt1);
		lt.remove("Mhow");
		System.out.println(lt);
		lt.removeFirst();
		System.out.println(lt);
		lt.removeLast();
		System.out.println(lt);
		lt.removeFirstOccurrence("Dewas");
		lt.removeLastOccurrence("Bhopal");
		System.out.println(lt);
		lt.peekFirst();
		System.out.println(lt);
		lt.peekLast();
		System.out.println(lt);
		lt.pollFirst();
		System.out.println(lt);
		lt.pollLast();
		System.out.println(lt);
		lt.remove(lt1);
		System.out.println(lt);
	}
}