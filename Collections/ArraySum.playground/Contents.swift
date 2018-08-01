import UIKit

protocol Numeric {
    init()
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Numeric {}
extension Float: Numeric {}
extension Double: Numeric {}

func arraySum<T: Numeric>(numbers: [T]) -> T {
    var total = T()
    for number in numbers {
        total = total + number
    }
    
    return total
}


func arraySum1<T: Numeric>(numbers: [T]) -> T {
    return numbers.reduce(T(), +)
}


