// /mnt/d/github/DJA75O_DB1Gyak/DJA75O_0908

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

int main()
{
    FILE *fp;
    fp = fopen("munka.txt", "w");

    /////////////////////////////////////////////////////

    char be;
    char seged;
    char szoveg[100];

    /////////////////////////////////////////////////////

    printf("2. feldat:\n");
    printf("Adja meg a szoveget:\n");

    while( (be = getchar()) != '#' )
    {
        putc(be, fp);
    }

    fclose(fp);

    /////////////////////////////////////////////////////

    fp = fopen("munka.txt", "r");

    while( (be = getc(fp)) != EOF )
    {
        printf("%c", toupper(be) );
    }

    fclose(fp);

    return 0;
}