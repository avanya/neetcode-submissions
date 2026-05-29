class Solution {
    func isValid(_ s: String) -> Bool {

        let dict: [String: String] = [  ")":"(",
                                            "]": "[",
                                            "}": "{" ]
        let a = Array(s).map { String($0) }

        var resultStack = [String]()

        for b in a {

            if resultStack.count - 1 >= 0, resultStack[resultStack.count - 1] == dict[b] {
                resultStack.removeLast()
            } else {
                resultStack.append(b)
            }
        }

        return resultStack.isEmpty

    }
}
