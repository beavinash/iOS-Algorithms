import UIKit

func balancedBracket(input: String) -> Bool {
    let validBrackets = "([{<>}])"
    let validCharacterSet = CharacterSet(charactersIn: validBrackets).inverted
    
    guard input.rangeOfCharacter(from: validCharacterSet) == nil else {
        return false
    }
    
    let matchingBrackets: [Character: Character] = ["(": ")", "[": "]", "{": "}", "<": ">"]
    var usedBrackets = [Character]()
    
    for bracket in input {
        if matchingBrackets.keys.contains(bracket) {
            usedBrackets.append(bracket)
        } else {
            if let previousBracket = usedBrackets.popLast() {
                if matchingBrackets[previousBracket] != bracket {
                    return false
                }
            } else {
                return false
            }
        }
    }
    return usedBrackets.count == 0
}

balancedBracket(input: "()")
balancedBracket(input: "([])")

balancedBracket(input: "<{}>")
