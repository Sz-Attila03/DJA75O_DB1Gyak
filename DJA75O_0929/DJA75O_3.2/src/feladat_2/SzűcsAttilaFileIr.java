package feladat_2;

import java.io.*;
import java.util.*;

public class SzûcsAttilaFileIr {

	public static void main(String[] args) {
		ArrayList<String> kiir = new ArrayList<>();
		
		int ossze = 0;
		int db = 0;
		int seged = 0;
		
		System.out.println("Adja meg hány adatott szeretne beolvasni");
		Scanner in = new Scanner(System.in);
		db = in.nextInt();
		in.close();
		
		for (int i = 0; i < db; i++) 
		{
			System.out.println("Adja meg az" + i + " számot: ");
			
			Scanner be = new Scanner(System.in);
			seged = be.nextInt();
			be.close();
			
			ossze += seged;
			
			kiir.add(seged);
			kiir.add(ossze);
		}
		
		FileWriter fw = new FileWriter("Szucs.txt");
		fw.write(kiir);
		fw.close();
	}

}
