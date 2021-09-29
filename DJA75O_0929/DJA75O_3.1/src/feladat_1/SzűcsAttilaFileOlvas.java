package feladat_1;

import java.io.*;
import java.util.*;

public class SzûcsAttilaFileOlvas {

	public static void main(String[] args) {
		int db = 0;
		int i = 0;
		int ossze = 0;
		int seged = 0;
		
		try(Scanner sc = new Scanner(new File("Szucs.txt")))
		{
			while(sc.hasNextInt())
			{
				seged = sc.nextInt();
				db++;
				
				System.out.println(i + ". szám: " + seged);
				i++;
				
				ossze += seged;
			}
		} 
		catch (FileNotFoundException e) 
		{
			e.printStackTrace();
		}

		System.out.println("\n");
		System.out.println(db + "db szám van a fájl-ba");
		System.out.println("a fájl-ban lévõ számok összge: " + ossze);

	}

}
