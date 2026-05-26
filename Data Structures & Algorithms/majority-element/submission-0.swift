class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()

        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }

        let sorted = dict.sorted {
            $0.value > $1.value
        }

        return sorted.first?.key ?? 0
    }
}
