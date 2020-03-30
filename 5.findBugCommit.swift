// Q5.
// You are working on a large codebase, when you discover a bug.
// The current commit has the bug, but a commit from several months ago does not.
// Given a sorted list of 100 commits, write a function that returns an object
// containing the commit and index.  Your solution must run in log(n) time.

struct Commit {
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
