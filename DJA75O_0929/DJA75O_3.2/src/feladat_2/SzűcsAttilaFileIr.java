package feladat_2;

import java.io.*;
import java.util.*;

public class SzûcsAttilaFileIr {

	public static void main(String[] args) {
		List<Integer> kiir = new ArrayList<>();
		
		int ossze = 0;
		int db = 0;
		int seged = 0;
		
		System.out.println("Adja meg hány adatott szeretne beolvasni");
		Scanner in = new Scanner(System.in);
		db = in.nextInt();
		
		////////////////////////////////////////////////////////////////////////
		
		for (int i = 0; i < db; i++) 
		{
			System.out.println("Adja meg az " + i + " számot: ");
			
			seged = in.nextInt();

			ossze += seged;
			
			kiir.add(seged);
		}
		
		kiir.add(ossze);
		in.close();
		
		////////////////////////////////////////////////////////////////////////
		
		System.out.println("A beírt számok összege: " + ossze);
		
		FileWriter fw;
		try 
		{
			fw = new FileWriter("Szucs.txt");
			
			for (Integer i : kiir) 
			{
				fw.write(i + System.lineSeparator());
			}
			
			fw.close();
			
			System.out.println("Adatok a kiírva a fájlba!");
		} 
		catch (IOException e) 
		{
			e.printStackTrace();
		}
		
		////////////////////////////////////////////////////////////////////////
	}

}
