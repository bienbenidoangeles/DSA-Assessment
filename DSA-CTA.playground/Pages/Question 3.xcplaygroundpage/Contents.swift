//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

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

var stack = Stack<Int>()
stack.push(3)
stack.push(4)
stack.push(8)
stack.push(1)
stack.push(4)

func stackSum(_ stack: Stack<Int>) -> Int{
    var tempStack = stack
    var sum = 0
    
    while tempStack.isEmpty != true{
        guard let removedElement = tempStack.pop() else {
            return sum
        }
        
        sum += removedElement
    }
    return sum
}

stackSum(stack)
