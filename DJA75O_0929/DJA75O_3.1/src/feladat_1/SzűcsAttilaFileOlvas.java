package feladat_1;

import java.io.*;
import java.util.*;

public class Sz�csAttilaFileOlvas {

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
				
				System.out.println(i + ". sz�m: " + seged);
				i++;
				
				ossze += seged;
			}
		} 
		catch (FileNotFoundException e) 
		{
			e.printStackTrace();
		}

		System.out.println("\n");
		System.out.println(db + "db sz�m van a f�jl-ba");
		System.out.println("a f�jl-ban l�v� sz�mok �sszge: " + ossze);

	}

}
