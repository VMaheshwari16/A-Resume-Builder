package Programs;

import java.util.Scanner;

public class CharPattern {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner o=new Scanner(System.in);
		System.out.println("Enter the character:");
		char character=o.next().charAt(0);
		int ch=character-'A';
		for(int i=0;i<=ch;i++) {
			for(int j=ch;j>=i;j--) {
				System.out.print(character);
			}
			character--;
			System.out.println();
		}
	}

}
