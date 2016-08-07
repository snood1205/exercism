#include "bob.h"
#include <string>
#include <iostream>

using namespace std;

string bob::hey(string input)
{
  bool upper = true;
  bool empty = true;
  for (int i = 0; i < input.length(); i++) {
    if (input[i] != toupper(input[i]))
      upper = false;
    if (input[i] != ' ' || input[i] != '\t' || input[i] != '\n')
      empty = false;
  }
  if (empty)
    return "Fine. Be that way!";
  if (upper)
    return "Woah, chill out!";
  if (input[input.length() - 1] == '?')
    return "Sure.";
  return "Whatever.";
}
