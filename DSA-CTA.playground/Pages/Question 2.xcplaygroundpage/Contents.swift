import Foundation

// Q2.
// Write a function that takes in an array of integers (arr) and a number (n)
// You function should return an array with only numbers appearing n or more times.
// Your solution must work in O(n) time.
//
// Example:
// Input: [1,3,4,1,9,1,3,4,3,1,2], 3
// Output: [1,3]

//Solution

func detect(arr: [Int], search: Int) -> [Int]{
    var dict = [Int:Int]()
    var tempArr = [Int]()
    for num in arr{
        dict[num] = (dict[num] ?? 0) + 1
    }
    
    for num in dict where num.value >= search{
        tempArr.append(num.key)
    }
    
    return tempArr
}

let arr = [1,3,4,1,9,1,3,4,3,1,2]
let search = 3

detect(arr: arr, search: search)
