class Solution {
  List<List<int>> combinationSum2(List<int> candidates, int target) {
    candidates.sort();
    List<List<int>> result = [];

    void backtrack(int start, List<int> path, int total) {
      if (total == target) {
        result.add(List.from(path));
        return;
      }

      if (total > target) return;

      for (int i = start; i < candidates.length; i++) {
        
        // ❌ skip duplicates
        if (i > start && candidates[i] == candidates[i - 1]) {
          continue;
        }

        // stop early
        if (total + candidates[i] > target) {
          break;
        }

        path.add(candidates[i]);

        backtrack(i + 1, path, total + candidates[i]);

        path.removeLast();
      }
    }

    backtrack(0, [], 0);
    return result;
  }
}