package faladat_6;

import java.io.*;
import java.util.*;

public class DJA75O_3_6 {

	public static void main(String[] args) {	
		h4();
		kiolvas();
	}
	
	public static class Auto implements Serializable
	{
		private static final long serialVersionUID = 1L;
		String rendszam;
		String tipus;
		int ar;
		
		public Auto (String r, String t, int a)
		{
			this.rendszam = r;
			this.tipus = t;
			this.ar = a;
		}
	}
	
	public static void h4()
	{
		Auto[] a = { new Auto("R11","Opel",333) , new Auto("R12","Fiat",233) , new Auto("R14","Skoda",364) };
		
		try
		{
			ObjectOutputStream ki = new ObjectOutputStream( new FileOutputStream("Auto.dat") );
			
			for (Auto auto : a)
			{
				ki.writeObject(auto);
			}
			
			ki.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("File hiba!");
		}
		
		System.out.println("Kész");
	}
	
	public static void kiolvas()
	{
		int db = 0;
		int i = 0;
		Auto ma;
		
		System.out.println("Adja meg hanyadik adatott szeretné ki olvasni: ");
		
		try (Scanner be = new Scanner(System.in)) 
		{
			db = be.nextInt();
		}
		catch (Exception g) 
		{
			g.printStackTrace();
		}
		
		try
		{
			File nf =  new File("Autok.dat");
			
			if(nf.exists())
			{
				@SuppressWarnings("resource")
				ObjectInputStream ki = new ObjectInputStream( new FileInputStream("Autok.dat") );
				
				try
				{
					while(true)
					{
						ma = (Auto) ki.readObject();
						
						if(db == i)
						{
							System.out.println("rendszám: " + ma.rendszam + " tipus: " + ma.tipus + " ár: " + ma.ar);
						}
						
						i++;
					}
				}
				catch(EOFException f)
				{
					ma = null;
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		System.out.println("Kész");
	}

}
