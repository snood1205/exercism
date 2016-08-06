#include "hello_world.h"
#include "string.h"
#include "stdlib.h"

void hello(char * buffer, int buffer_length, char name[]) {
  if (buffer_length < 128) {
    buffer = (char *)malloc(128 * sizeof(char));
  }
  if (strcmp(name,"") == 0) {
    strcpy(buffer, "Hello, World!");
  } else {
    strcpy(buffer, "Hello, ");
    strcat(buffer, name);
    strcat(buffer, "!");
  }
}