class Solution {
    func validPalindrome(_ s: String) -> Bool {
        guard s.length > 2 else {return true}
        func isPalindrome(_ a: [Character]) -> Bool {
        guard a.count > 1 else {return true}

            var i = 0
            var j = a.count - 1

            while i <= j {
                if a[i] == a[j] {
                    i += 1
                    j -= 1
                } else {
                    return false
                }
                
            }
            return true
        }

        let a = Array(s)

        var left = 0
        var right = a.count - 1

        while left < right {
            // if left - 1 >= 0 {
                if isPalindrome(Array(a[0..<left]) + Array(a[left + 1...right])) {
                    return true
                // }
            } 
            left += 1
        }

        return false

    }
}
