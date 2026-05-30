class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {

        var stack = [Int]()

        var resultArray = Array(repeating: 0, count: temperatures.count)
        var currentIndex = 0
        for i in 0..<temperatures.count {
            currentIndex = i
             if stack.count - 1 > 0, temperatures[i] <= temperatures[stack[stack.count - 1]] {
                stack.append(i)
            } else {
                while stack.count - 1 >= 0, temperatures[stack[stack.count - 1]] < temperatures[i] {
                    let index = stack.removeLast()
                    resultArray[index] = currentIndex - index
                }
                stack.append(currentIndex)
            }
        }

        return resultArray

    }
}
