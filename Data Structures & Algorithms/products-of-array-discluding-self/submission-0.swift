class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {

        var leftProduct = 1
        var rightProduct = 1

        var rightArr = Array(repeating: 1, count: nums.count)
        var leftArr =  Array(repeating: 1, count: nums.count)

        var result: [Int] = []

        for i in 0..<nums.count {
            if i > 0 {
                leftProduct = nums[i - 1] * leftProduct
            }
            leftArr[i] = leftProduct
        }

    for i in stride(from: nums.count - 1, to: -1, by: -1) {
        if i + 1 < nums.count {
            rightProduct = nums[i + 1] * rightProduct
        }
            rightArr[i] = rightProduct
        }

        for i in 0..<nums.count {
            result.append(leftArr[i] * rightArr[i])
        }

        return result

    }
}
