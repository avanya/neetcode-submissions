class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {

        for i in 0..<numbers.count {
            if numbers.contains(target - numbers[i]) {
                return [i + 1, Int(numbers.index(of: target - numbers[i])! + 1)]
            }
        }
        return []

    }
}
