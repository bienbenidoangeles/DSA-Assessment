// Q3.
// Write a function sum that takes a Stack of numbers as input, and returns the sum of all elements.
// Input:
// 3
// 4
// 8
// 1
// 4
//
// Output: 20

struct Stack<T> {
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.isEmpty
    }
    private var arr: [T] = []
}
