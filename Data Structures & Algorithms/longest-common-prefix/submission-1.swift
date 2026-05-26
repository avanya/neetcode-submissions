class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""
        let firstString = Array(strs[0])

        for i in 0..<strs[0].count {
            var prefix = String(firstString[i])
            for j in 1..<strs.count {
                let s = Array(strs[j])
                if i == s.count || s[i] != firstString[i] {
                    prefix = ""
                    return result
                } 
            }
            result.append(String(prefix))
        }

        return result

    }
}
