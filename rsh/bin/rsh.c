#include <stdio.h>

char *builtin_str[] = {
  "cd",
  "help",
  "exit"
};

int main(int argc, char **argv)
{
 int i = 0;
 int max = 3;
 do {
 
 //printf("%d\r\n", i);
 //printf("%ld\r\n", sizeof(builtin_str)/sizeof(char *));
 printf("%ld\r\n", sizeof builtin_str / sizeof *builtin_str);
 i+=1;
 } while(i < max);
}
