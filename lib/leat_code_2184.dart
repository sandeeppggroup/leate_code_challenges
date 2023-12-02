import 'dart:developer';

void main() {
  List<int> nums = [11, 7, 2, 5];
  Solution solution = Solution();
  int result = solution.countElements(nums);
  log('Result: $result');
}

class Solution {
  int countElements(List<int> nums) {
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      int greater = 0;
      int lesser = 0;
      for (int j = 0; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          greater++;
        } else if (nums[i] < nums[j]) {
          lesser++;
        }
      }
      if (greater > 0 && lesser > 0) {
        count++;
      }
    }
    return count;
  }
}
