class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        for i in 0..<nums.count {
            let target = 0 - nums[i]

            var resultArray = [nums[i]]

            for j in 0..<nums.count {
                if nums.contains(target - nums[j]),
                let index = nums.firstIndex(of: (target - nums[j])),
                    index != j,
                    index != i,
                    j != i {
                    let newArray = [nums[i],nums[j], target - nums[j]].sorted()
                    if !result.contains(newArray) {
                        result.append(newArray)
                    }
                }
            }
        }


        return result
    }
}
