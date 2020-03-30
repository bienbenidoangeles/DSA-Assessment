// Q4.
// Write a function `range` that takes in a Queue of numbers, returns the range (difference between the minimum and maximum).
//Input:
// BACK 4 2 9 6 5 FRONT
//
// Output:
// 7
// Explanation: The max is 9, the min is 2, and their difference is 7

public struct Queue<T> {
  private var array = [T?]()
  private var head = 0

  public var isEmpty: Bool {
    return count == 0
  }

  public var count: Int {
    return array.count - head
  }

  public mutating func enqueue(_ element: T) {
    array.append(element)
  }

  public mutating func dequeue() -> T? {
    guard let element = array[guarded: head] else { return nil }
    array[head] = nil
    head += 1
    let percentage = Double(head)/Double(array.count)
    if array.count > 50 && percentage > 0.25 {
      array.removeFirst(head)
      head = 0
    }
    return element
  }
  public var front: T? {
    if isEmpty {
      return nil
    } else {
      return array[head]
    }
  }
}

extension Array {
    subscript(guarded idx: Int) -> Element? {
        guard (startIndex..<endIndex).contains(idx) else {
            return nil
        }
        return self[idx]
    }
}
