import UIKit

func integerString(input: String) -> Bool {
    return UInt(input) != nil
}

func integerString1(input: String) -> Bool {
    for letter in input {
        if Int(String(letter)) == nil {
            return false
        }
    }
    return true
}

func integerString2(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
}

func integerString3(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
}


integerString(input: "73738494g")
integerString(input: "3739484474")


integerString1(input: "37394844743739484474")
