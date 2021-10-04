package feladat_5;

import java.io.*;
import java.util.*;

public class DJA75O_3_5 {

	public static void main(String[] args) {
		String fnev_be = null;
		String fnev_ki = null;
		String sor = null;
		int id = 0;
		
		try (Scanner sc = new Scanner(System.in)) 
		{
			System.out.println("Adja meg a másolni kivánt file teljes elérési útját: ");
			fnev_be = sc.nextLine();
			System.out.println("Adja meg a másolt file nevét:");
			fnev_ki = sc.nextLine();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		h3(fnev_be, fnev_ki, sor, id);

	}
	
	public static void h3(String fnev_be, String fnev_ki, String sor, int id)
	{
		String[] k1 = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"};
		String[] k2 = {"egy", "kettõ", "három", "négy", "öt", "hat", "hét", "nyolc", "kilenc", "nulla"};
		
		try
		{
			BufferedWriter bw = new BufferedWriter(new FileWriter(fnev_ki));
			BufferedReader br = new BufferedReader(new FileReader(fnev_be));
			
			while( (sor = br.readLine()) != null )
			{
				for (int i = 0; i < 10; i++) 
				{
					sor = sor.replace(k1[i], k2[i]);
				}
				
				bw.write(sor);
				bw.newLine();
			}
			br.close();
			bw.close();
			
			System.out.println("Kész");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			
		}
	} 

}
