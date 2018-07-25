import UIKit

func primeNumber(input: Int) -> Bool {
    guard input >= 2 else { return false }
    
    for i in 2..<input {
        if input % i == 0 {
            return false
        }
    }
    return true
}

primeNumber(input: 150684848)

func primeNumber1(input: Int) -> Bool {
    guard input >= 2 else { return false }
    guard input != 2 else { return false }
    
    let max = Int(ceil(sqrt(Double(input))))
    
    for i in 2...max {
        if ( input % i == 0) {
            return false
        }
    }
    return true
}


primeNumber1(input: 160000889)
