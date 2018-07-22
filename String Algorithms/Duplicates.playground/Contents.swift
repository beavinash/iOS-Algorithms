import UIKit

func removeDuplicates(input: String) -> String {
    var used = [Character]()
    for letter in input {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}

func removeDuplicates1(input: String) -> String {
    var used = [Character: Bool]()
    
    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}

removeDuplicates(input: "Hello")
removeDuplicates(input: "Testingg")

removeDuplicates1(input: "Hello")
removeDuplicates1(input: "Testingg")
