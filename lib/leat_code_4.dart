import 'dart:developer';

void main() {
  List<int> nums1 = [1, 3];
  List<int> nums2 = [2];

  Solution solution = Solution();
  num result = solution.findMedianSortedArrays(nums1, nums2);
  log(result.toString());
}

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> merged = nums1 + nums2;
    merged.sort();
    if (merged.length % 2 == 0) {
      int half = merged.length ~/ 2;
      double medium = (merged[half] + merged[half - 1]) / 2;
      return medium;
    } else {
      int half = merged.length ~/ 2;
      double medium = merged[half] / 1;
      return medium;
    }
  }
}
