package feladat_1;

import java.io.*;
import java.util.*;

public class f_1 {

	public static void main(String[] args) {
		int db = 0;
		int ossze = 0;
		
		try(Scanner sc = new Scanner(new File("Szucs.txt")))
		{
			while(sc.hasNextInt())
			{
				db++;
				ossze += sc.nextInt();
			}
		} 
		catch (FileNotFoundException e) 
		{
			e.printStackTrace();
		}

		System.out.println(db + "db szám van a fájl-ba");
		System.out.println("a fájl-ban lévõ számok összge: " + ossze);
	}

}
