import UIKit

func primeNumber(upTo max: Int) -> [Int] {
    guard max > 1 else { return [] }
    
    var check = [Bool](repeating: true, count: max)
    check[0] = false
    check[1] = false
    
    for number in 2..<max {
        if check[number] == true {
            for multiple in stride(from: number * number, to: check.count, by: number) {
                check[multiple] = false
            }
        }
    }
    return check.enumerated().flatMap { $1 == true ? $0 : nil}
}

primeNumber(upTo: 100)
