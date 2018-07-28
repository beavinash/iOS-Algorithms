import UIKit

struct deque<T> {
    var array = [T]()
    
    var count: Int {
        return array.count
    }
    
    mutating func pushBack(_ obj: T) {
        array.append(obj)
    }
    
    mutating func pushFront(_ obj: T) {
        array.insert(obj, at: 0)
    }
    
    mutating func popBack() -> T? {
        return array.popLast()
    }
    
    mutating func popFront() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}

var numbers = deque<Int>()

numbers.pushBack(5)
numbers.pushFront(5)
numbers.popBack()
