#include <stdio.h>
#include <stdlib.h>

int main()
{
   char word[10];
   FILE *fptr;

   // use appropriate location if you are using MacOS or Linux
   fptr = fopen("program.txt","w");

   if(fptr == NULL)
   {
      printf("Error!");   
      exit(1);             
   }

   printf("Enter word: ");
   scanf("%9s",word);

   fprintf(fptr,"%s",word);
   fclose(fptr);

   return 0;
}
