class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var majority = 0
        var majorNum = 0
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
            majority = max(dict[num] ?? 0, majority)
            if majority == dict[num] {
                majorNum = num
            }
        }

        return majorNum
    }
}
