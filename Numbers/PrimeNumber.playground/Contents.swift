import UIKit

func primeNumber(number: Int) -> Bool {
    guard number > 2 else {return false}
    
    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

primeNumber(number: 1000)
primeNumber(number: 3)
primeNumber(number: 16777259)


