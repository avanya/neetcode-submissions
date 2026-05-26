class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

        var i = 0
        var j = nums.count - 1

        while i <= j {
            if nums[i] == val, nums[j] != val {
                nums[i] = nums[j]
                i += 1
                j -= 1
            } else if nums[j] == val {
                j -= 1
            } else {
                i += 1
            }
        } 

        return j + 1

    }
}
