class Solution {
  int lengthOfLastWord(String s) {
    int i = s.length - 1;
    int count = 0;

    // 1. skip trailing spaces
    while (i >= 0 && s[i] == ' ') {
      i--;
    }

    // 2. count last word characters
    while (i >= 0 && s[i] != ' ') {
      count++;
      i--;
    }

    return count;
  }
}