import 'dart:developer';

void main() {
  Solution solution = Solution();
  int x = 212;
  final result = solution.isPalindrome(x);
  if (result == true) {
    log('Its a plindrome');
  } else {
    log("It's not a palindrome");
  }
}

class Solution {
  bool isPalindrome(int x) {
    String number = x.toString();
    for (int i = 0; i < number.length; i++) {
      if (number[i] != number[number.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}
