class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
       var dict = [Int: Int]()

        for i in nums {
            dict[i] = (dict[i] ?? 0) + 1
        }

        var result = [Int]()
        let sorted = dict.sorted { $0.value > $1.value }
        for (key,value) in sorted {
            if result.count < k {
                result.append(key)
            }
        }

        return result
    }
}
