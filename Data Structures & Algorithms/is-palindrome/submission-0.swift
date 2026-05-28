class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let pattern = "[^A-Za-z0-9]"
        let sArray = Array(s.replacingOccurrences(of: pattern, with: "", options: .regularExpression).lowercased())

        var i = 0
        var j = sArray.count - 1

        while i < j {
            if sArray[i] == sArray[j] {
                i += 1
                j -= 1
            } else {
                return false
            }
        }

        return true
    }
}
