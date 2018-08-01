import UIKit

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var start: LinkedListNode<T>?
    
    func printNodes() {
        var currentNode = start
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
    
    func reversed() -> LinkedList<T> {
        let copy = LinkedList<T>()
        
        if let startNode = start {
            var previousCopyNode = LinkedListNode(value: startNode.value)
            var currentNode = start?.next
            while let node = currentNode {
                let copyNode = LinkedListNode(value: node.value)
                copyNode.next = previousCopyNode
                previousCopyNode = copyNode
                currentNode = currentNode?.next
            }
            copy.start = previousCopyNode
        }
        return copy
    }
    
    func reversed1() -> LinkedList<T> { // copy
        let copy = LinkedList<T>()
        if let startNode = start {
            copy.start = LinkedListNode(value: startNode.value)
            var previousCopyNode = copy.start
            var currentNode = startNode.next
            
            while let node = currentNode {
                let copyNode = LinkedListNode(value: node.value)
                previousCopyNode?.next = copyNode
                previousCopyNode = copyNode
                currentNode = currentNode?.next
            }
        }
        return copy
    }
    
    func reversed2() {
        var currentNode = start
        var newNext: LinkedListNode<T>? = nil
        
        while let node = currentNode {
            let next = node.next
            node.next = newNext
            newNext = node
            currentNode = next
        }
        start = newNext
    }
    
    func reversed3() -> LinkedList<T> {
        let copy = self.reversed1()
        copy.reversed2()
        return copy
    }
}

var list = LinkedList<Character>()
var previousNode: LinkedListNode<Character>? = nil

for letter in "abcdefghijklmnopqrstuvwxyz" {
    let node = LinkedListNode(value: letter)
    
    if let predecessor = previousNode {
        predecessor.next = node
    } else {
        list.start = node
    }
    previousNode = node
}

list.printNodes()
list.reversed3()
