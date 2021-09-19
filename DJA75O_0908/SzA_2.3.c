// D:\Mega\code\eclips\adatb_file_rendezes\rend.txt

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main()
{
    int i =0;
    char szoveg[1000];
    char be;

    FILE *fp;
    fp = fopen("rend.txt", "r");

    if(fp != NULL)
    {
        while( /*!feof(fp)*/ fgets(szoveg, sizeof(szoveg), fp) != NULL )
        {
            //fgets(szoveg, sizeof(szoveg), fp);
            //printf("%s", szoveg);

            if( szoveg[strlen(szoveg) - 1 ] == '\n' )
            {
                szoveg[strlen(szoveg) - 1 ] == '\0';
            }

            //printf("%s", szoveg);

            //fgets(szoveg, sizeof(szoveg), fp);
            //puts(szoveg);
        }
    }
    else
    {
        printf("File hiba!");
    }

    fclose(fp);

    printf("%s", szoveg);

    return 0;
}