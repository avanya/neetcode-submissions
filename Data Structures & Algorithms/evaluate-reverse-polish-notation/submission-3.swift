class Solution {
    func evalRPN(_ tokens: [String]) -> Int {

        let operators: [String] = ["+", "-", "/" , "*"]
        var stack: [Int] = []

        for s in tokens {
            if operators.contains(s), stack.count - 1 >= 0, stack.count - 2 >= 0 {
                let a = stack.removeLast()
                let b = stack.removeLast()
                
                stack.append(performOperation(b,a,s))
            } else {
                stack.append(Int(s) ?? 0)
            }
        }
        
        func performOperation(_ a: Int, _ b: Int, _ op: String) -> Int {
        switch op {
            case "+":
                return a + b
            case "-":
                return a - b
            case "*":
                return a * b
            case "/":
                return a / b
            default:
                break
        }
        return 0
        }

        return stack.removeLast()
    }

    }

