import UIKit

// Standard coding practice
enum GetIthItemInLinkedListError: Error, CustomStringConvertible {
    case negativeIndex
    case indexGreaterThanList
    
    var description: String {
        switch self {
        case .negativeIndex:
            return "Index can't be negative"
        case .indexGreaterThanList:
            return "List has fewer than index + 1 nodes"
    }
}

func getIthItemInLinkedList<T: Equatable>(head: LinkedListNode<T>, i: Int) throws -> LinkedListNode<T> {
    guard i >= 0 else { throw GetIthItemInLinkedListError.negativeIndex}
    
    var currentNode: LinkedListNode? = head
    var currentPosition = 0
    
    while currentNode != nil {
        if currentPosition == i {
            return currentNode!
        }
        
        currentNode = currentNode?.next
        currentPosition += 1
    }
    
    throw GetIthItemInLinkedListError.indexGreaterThanList
}
