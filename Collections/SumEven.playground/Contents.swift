import UIKit

func sumEven(numbers: Int...) -> Int {
    let counted = NSCountedSet(array: numbers)
    var sum = 0
    for case let item as Int in counted {
        if counted.count(for: item) % 2 == 0{
            sum += item
        }
    }
    return sum
}

func sumEven1(numbers: Int...) -> Int {
    let counted = NSCountedSet(array: numbers)
    let array = counted.allObjects as! [Int]
    var sum = 0
    
    for item in array {
        if counted.count(for: item) % 2 == 0 {
            sum += item
        }
    }
    
    return sum
}

sumEven(numbers: 1, 2, 3, 3, 3, 4, 4, 5)
sumEven(numbers: 1, 2, 2, 3, 3, 4)
