//: [Previous](@previous)

import Foundation

// Q6.
// Implement a function that accepts an array of integers as an argument.
// This function should return the sum of each integer in the array.
// Your solution should be **recursive**. Your function must be pure (cannot use global variables)
// Sample Input [5, 2, 9, 11]
// Sample Output: 27


func sum(_ arr: [Int]) -> Int{
    guard !arr.isEmpty else {
        return 0
    }
    
    return arr.last! + sum(arr.dropLast())
}

let arr = [5, 2, 9, 11]
sum(arr)
//: [Next](@next)
