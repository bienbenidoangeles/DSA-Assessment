//: [Previous](@previous)

import Foundation

// Q5.
// You are working on a large codebase, when you discover a bug.
// The current commit has the bug, but a commit from several months ago does not.
// Given a sorted list of 100 commits, write a function that returns an object
// containing the commit and index.  Your solution must run in log(n) time.
struct Commit: Comparable {
    static func < (lhs: Commit, rhs: Commit) -> Bool {
        return lhs.timestamp < rhs.timestamp
    }
    
    let timestamp: Date
    let status: CommitStatus
}

enum CommitStatus {
    case good
    case bad
}

let input = [
         Commit(timestamp: Date(timeIntervalSince1970: 0), status: .good),
         Commit(timestamp: Date(timeIntervalSince1970: 1), status: .good),
         Commit(timestamp: Date(timeIntervalSince1970: 2), status: .good),
         Commit(timestamp: Date(timeIntervalSince1970: 3), status: .bad),
         Commit(timestamp: Date(timeIntervalSince1970: 4), status: .bad),
         Commit(timestamp: Date(timeIntervalSince1970: 5), status: .bad),
         Commit(timestamp: Date(timeIntervalSince1970: 6), status: .bad),
         Commit(timestamp: Date(timeIntervalSince1970: 7), status: .bad),
         Commit(timestamp: Date(timeIntervalSince1970: 8), status: .bad),
         Commit(timestamp: Date(timeIntervalSince1970: 9), status: .bad),
]

// Output: The commit made 3 seconds after 1970.

func binSearch<T:Comparable>(arr: [T], key: T, range: Range<Int>) -> String?{
    
    if range.upperBound <= range.lowerBound{
        return nil
    }
    
    let centerIndex = range.lowerBound + (range.upperBound-range.lowerBound)/2
    
    //center check
    if arr[centerIndex] == key {
        return "Found commit \((arr[centerIndex], centerIndex).0) of type \(key) at index \(centerIndex)"
    }
    
    //left check
    else if arr[centerIndex] < key {
        return binSearch(arr: arr, key: key, range: range.lowerBound..<centerIndex)
    }
    
    //right check
    else if arr[centerIndex] > key {
        return binSearch(arr: arr, key: key, range: (centerIndex+1)..<range.upperBound)
    }
    
    return nil
}

binSearch(arr: input, key: Commit(timestamp: Date(timeIntervalSince1970: 1), status: .good), range: 0..<input.count-1)
