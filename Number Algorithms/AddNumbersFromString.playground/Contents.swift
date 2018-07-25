import UIKit

func addNumbers(input: String) -> Int {
    var currentNumber = ""
    var sum = 0
    
    for letter in input {
        let strLetter = String(letter)
        if Int(strLetter) != nil {
            currentNumber += strLetter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    sum += Int(currentNumber) ?? 0
    return sum
}

addNumbers(input: "4r5tu88")
