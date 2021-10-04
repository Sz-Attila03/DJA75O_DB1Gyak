package feladat_4;

import java.io.*;
import java.util.*;

public class DJA75O_3_4 {

	public static void main(String[] args) {
		String fnev = null;
		String sor = null;
		int id = 0;
		
		System.out.println("Adja meg a file teljes el�r�si �tj�t: ");
		try (Scanner in = new Scanner(System.in)) {
			fnev = in.nextLine();
		}

		h2(fnev,sor,id);

	}
	
	public static void h2(String fnev, String sor, int id)
	{		
		try
		{
			BufferedReader br = new BufferedReader(new FileReader(fnev));
			
			while( (sor = br.readLine()) != null )
			{
				System.out.println(sor.toUpperCase());
			}
			
			br.close();
			System.out.println("K�sz");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
