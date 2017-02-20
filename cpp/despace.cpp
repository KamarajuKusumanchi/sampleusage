#include <stdio.h>
#include <string.h>

// To prune out space characters from a string of characters

// Inspired from:
// http://lemire.me/blog/2017/01/20/how-quickly-can-you-remove-spaces-from-a-string/
size_t despace(char * bytes, size_t howmany) {
  size_t pos = 0;
  for(size_t i = 0; i < howmany; i++) {
      char c = bytes[i];
      if (c == '\r' || c == '\n' || c == ' ') {
        continue;
      }
      bytes[pos++] = c;
  }
  return pos;
}

int main()
{
  char s[] = "the quick fox";
  size_t n = sizeof(s)/sizeof(s[0]);
  printf("s = %s\n", s);
  printf("n = %d\n", n);
  size_t new_n = despace(s, n);
  printf("s = %s\n", s);
  printf("new_n = %d\n", new_n);

  return 0;
}

/* Sample usage:

% g++ despace.cpp
% ./a.out
s = the quick fox
n = 14
s = thequickfox
new_n = 12

*/
