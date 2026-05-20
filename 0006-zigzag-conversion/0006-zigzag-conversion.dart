class Solution {
  String convert(String s, int numRows) {
    String convert = "";

    List<String> matrix = List.generate(numRows, (index) => "");
    int currentRow = 0;
    bool isUp = true;

    if (numRows == 1) return s;

    for (int i = 0; i < s.length; i++) {
      if (currentRow < 0) {
        currentRow = 1;
        isUp = true;
      }

      if (currentRow >= numRows - 1) {
        currentRow = numRows - 1;
        isUp = false;
      }

      matrix[currentRow] += s[i];

      if (isUp) {
        currentRow++;
      } else {
        currentRow--;
      }
    }

    for (int i = 0; i < matrix.length; i++) {
      convert += matrix[i];
    }
    return convert;
  }
}