import UIKit

func runLengthEncode(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    for letter in input {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            currentLetter = letter
            letterCounter = 1
        }
    }
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    return returnValue
}

runLengthEncode(input: "aabbcc")
runLengthEncode(input: "aaabaaabaaa")
runLengthEncode(input: "Work")
runLengthEncode(input: "aabcabcabc")


