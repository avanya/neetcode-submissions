class MinStack {
    var a: [Int] = []
    init() {

    }

    func push(_ val: Int) {
        a.append(val)
    }

    func pop() {
        if a.count - 1 >= 0 {
            a.removeLast()
        }
    }

    func top() -> Int {
        guard a.count - 1 >= 0 else { return 0 }
        return a[a.count - 1]
    }

    func getMin() -> Int {
        var minVal = Int.max
        let b = a
        for i in b {
            minVal = min(minVal, top())
            pop()
        }
        a = b
        return minVal

    }
}
