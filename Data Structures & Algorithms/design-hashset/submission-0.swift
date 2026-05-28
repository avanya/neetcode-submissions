class MyHashSet {
    var hashSet: Set<Int> = []

    init() {
    }

    func add(_ key: Int) {
        hashSet.insert(key)
    }

    func remove(_ key: Int) {
        hashSet.remove(key)
    }

    func contains(_ key: Int) -> Bool {
        hashSet.contains(key)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
