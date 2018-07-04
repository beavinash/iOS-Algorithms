import UIKit

func power(number: Int, pow: Int) -> Int {
    guard number > 0, pow > 0 else { return 0 }
    var solution = number
    for _ in 1..<pow {
        solution *= number
    }
    return solution
}

power(number: 3, pow: 4)
power(number: 4, pow: 3)


func power1(number: Int, pow: Int) -> Int {
    guard number > 0, pow > 0 else { return 0 }
    
    if pow == 1 {
        return 1
    }
    
    return number * power1(number: number, pow: pow - 1)
}

power1(number: 4, pow: 3)
