class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var maxVol = 0

        var i = 0
        var j = heights.count - 1

        while i < j {
            var vol = 0
            if heights[i] <= heights[j] {
                vol = heights[i] * (j-i)
                i += 1
            } else {
                vol = heights[j] * (j-i)
                j -= 1
            }
            maxVol = max(vol, maxVol)
        }

        return maxVol

    }
}
