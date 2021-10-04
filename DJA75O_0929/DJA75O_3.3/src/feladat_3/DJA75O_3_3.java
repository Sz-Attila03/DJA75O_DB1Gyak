package feladat_3;

import java.io.*;

public class DJA75O_3_3 {

	public static void main(String[] args) {
		String sor;
		String[] szavak;
		int id = 0;
		
		h1(id);

	}

	public static void h1(int id) {
		String sor;
		String[] szavak;
		try
		{
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			BufferedWriter bw = null;
			
			while (id >= 0) 
			{
				sor = br.readLine();
				
				if(id == 0)
				{
					bw = new BufferedWriter(new FileWriter(sor)); 
				}
				else
				{
					bw.write(sor);
					bw.newLine();
				}
				
				id += 1;
				szavak = sor.split(" ");
				
				for(String sz : szavak)
				{
					System.out.println(sz + ":");
					
					if(sz.compareTo("end") == 0)
					{
						br.close();
						id = -1;
					}
				}
			}
			
			bw.close();
			
			System.out.println("Kész");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
