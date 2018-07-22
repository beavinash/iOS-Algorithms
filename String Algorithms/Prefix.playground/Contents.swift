import UIKit

func prefixCheck(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    
    guard let first = parts.first else {
        return ""
    }
    
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    
    return bestPrefix
}

func findPrefix(of string: String) -> String {
    
    guard !string.isEmpty else { return "" }
    
    let array = string.split(separator: " ").map{ Array(String($0))}
    var letters = ""
    var diffLetters = ""
    var result = ""
    for i in 0..<array.first!.count {
        for j in 0..<array.count{
            letters.append(array[j][i])
        }
        diffLetters = letters.filter{ $0 != letters.first! }
        if diffLetters.isEmpty {
            result.append(letters.first!)
        }else {
            return result
        }
        letters.removeAll()
    }
    return result
}

prefixCheck(input: "Avi Avi Avi roc avi")
findPrefix(of: "Avi Avi Avi roc avi")

prefixCheck(input: "swift switch swill")
findPrefix(of: "flip flap flop")
