import UIKit

func condenseWhitespace(input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    return components.filter{ !$0.isEmpty }.joined(separator: "")
}

condenseWhitespace(input: " Avinash Reddy")


func condenseWhiteSpaceA(input: String) -> String {
    var seenSpace = false
    var returnValue = ""
    for letter in input.characters {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
}

condenseWhiteSpaceA(input: "Hello, World!!!!")

func condenseWhiteSpaceB(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

condenseWhiteSpaceB(input: "Hello, World!!!")
