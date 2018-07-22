import UIKit

func uniqueStrings(input: String) -> Bool {
    var resultString: String = ""
    for letter in input {
        if resultString.contains(letter) {
            return false
        } else {
            resultString.append(letter)
        }
    }
    return true
}

func uniqueStrings1(input: String) -> Bool {
    
    var usedCharacters = [Character]()
    for letter in input {
        if usedCharacters.contains(letter) {
            return false
        }
        usedCharacters.append(letter)
    }
    return true
}

func uniqueStrings2(input: String) -> Bool {
    return Set(input).count == input.count
}


uniqueStrings(input: "Avinash")
uniqueStrings(input: "AAVV")
uniqueStrings(input: "No duplicates")
uniqueStrings(input: "Hello, world!")

uniqueStrings1(input: "Avinash")
uniqueStrings1(input: "AAVV")
uniqueStrings1(input: "No duplicates")
uniqueStrings1(input: "Hello, world!")

uniqueStrings2(input: "Avinash")
uniqueStrings2(input: "AAVV")
uniqueStrings2(input: "No duplicates")
uniqueStrings2(input: "Hello, world!")
