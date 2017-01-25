//TODO - make additional return string for qu words

import java.util.*;

public char vowels[] = {'a','e','i','o','u'};

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}

public boolean isVowel (char c)
{
	char k = Character.toLowerCase(c);
	for (int i  = 0; i < vowels.length; i++)
		if (k == vowels[i])
			return true;
	return false;
}
public int findFirstVowel(String sWord)
{
	for (int i = 0; i < sWord.length(); i++)
		if (isVowel(sWord.charAt(i)))
			return i;
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	//String 
	String first2Letters = sWord.substring(0,2).toLowerCase();
	if (first2Letters.equals("qu"))
		return sWord.substring(2) + "quay";
	switch (findFirstVowel(sWord))
	{
		case 0: {
			return sWord+"ay";
		}
		case -1: {
			return sWord+"ay";
		}
		default: {
			return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
		}
	}
}
