import UIKit

func powerOfTwoNumbers(number: Int, power: Int) -> Int {
    guard number > 0 && power > 0 else { return 0 }
    
    var returnValue = 1
    
    for _ in 1...power {
        returnValue *= number
    }
    return returnValue
}

powerOfTwoNumbers(number: 5, power: 3)


func powerOfTwoNumbers1(number: Int, power: Int) -> Int {
    guard number > 0 && power > 0 else { return 0 }
    
    if power == 1 {
        return number
    }
    
    return number * powerOfTwoNumbers1(number: number, power: power - 1)
}

powerOfTwoNumbers1(number: 5, power: 3)

