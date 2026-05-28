class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var s = Set(nums)

        var longest = 0

        for num in s {
                var length = 1
                while s.contains(num + length) {
                    length += 1
                }
                longest = max(length, longest)
        }

        return longest
    }
}
