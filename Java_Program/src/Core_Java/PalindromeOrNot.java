package Core_Java;

import java.util.Scanner;
public class PalindromeOrNot
{
	public static void main(String args[])
	{
		Scanner value=new Scanner(System.in);
		System.out.println("Enter the word:");
		String word=value.nextLine();
		int count=0;
		String rev="";
		for(int i=word.length()-1;i>=0;i--)
		{
			rev=rev+word.charAt(i);	
		}
		if(word.equals(rev))
		{
			System.out.println("The given string is a palindrome");
		}
		else
		{
			System.out.println("The given string is not a palindrome");
		}
	}
}
