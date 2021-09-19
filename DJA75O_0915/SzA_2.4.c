#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct
{
    char rend_szam[6];
    char tipus[50];
    int ar;
}adatok;

adatok * dat = NULL;
unsigned i = 0;

void beolvas()
{
    int db = 0;

    printf("Menyi adatott szeretne felvinni: ");
    scanf("%d", &db);

    while( i < db)
    {
        printf("Adja meg az auto redszamat: ");
        fflush(stdin);
        fgets(dat[i].rend_szam);

        printf("Adja meg az auto tipusát: ");
        fflush(stdin);
        fgets(dat[i].tipus);

        printf("Adja meg az auto arat: ");
        fflush(stdin);
        scanf("%d", &dat[i].ar);
    }

}

void ki_ir_fajlba()
{
    FILE *fp;
    fp = fopen("output.bin", "wb");

    if(fp == NULL)
    {
        printf("file hiba!");
    }

    if( fwrite(adatok, sizeof(adatok), i, fp) != i )
    {
        printf("adatok nem írhatók ki!");
    }

    fclose(fp);
}

int main()
{
    beolvas();
    ki_ir_fajlba();

    return 0;
}