//Question 1
import Foundation

// Q1.
// Given a linked list, write a function to traverse it and print each value in order.
class Node<T> {
    var next: Node?
    let val: T
    init(val: T) {
        self.val = val
    }
}

// Print format:
//```
//-> 4 -> 9 -> 2 -> 3 -> nil
//```

//Solution

class LinkList<T>{
    private var head: Node<T>?
    private var tail: Node<T>?
    
    public var isEmpty: Bool{
        return head == nil
    }
    
    public var first: Node<T>? {
      return head
    }

    public var last: Node<T>? {
      return tail
    }
    
    public func append(_ value: T){
        let newNode = Node(val: value)
        
        //check if theres more than one Node
        guard let tailNode = tail else {
            head = newNode
            tail = head
            return
        }
        
        //else ...
        tailNode.next = newNode
        tail = newNode
    }
}

let list = LinkList<Int>()
list.append(4)
list.append(9)
list.append(2)
list.append(3)


func traverseThroughLinkList<T>(_ linkList: LinkList<T>){
    
    var node = linkList.first
    while node != nil {
        print(node!.val)
        node = node?.next
    }
}

traverseThroughLinkList(list)
