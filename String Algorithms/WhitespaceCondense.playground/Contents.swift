import UIKit

func whitespaceCondense(input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    return components.filter{!$0.isEmpty}.joined(separator: "")
}

func whitespacecondense1(input: String) -> String {
    var seenSpace = false
    var returnValue = ""
    for letter in input {
        if letter == " " {
            if seenSpace {continue}
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
}

func whitespacecondense2(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression,range: nil)
}

whitespaceCondense(input: "   A")
whitespacecondense1(input: "   v")
whitespacecondense2(input: "   i")
