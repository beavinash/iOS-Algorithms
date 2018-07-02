import UIKit

func duplicates(string: String) -> String {
    var used = [Character]()
    for letter in string {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}


duplicates(string: "Hello, World!")
duplicates(string: "Hello")


func duplicatesA(string: String) -> String {
    var used = [Character: Bool]()
    let result = string.characters.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}

duplicatesA(string: "Hello, World!")
duplicatesA(string: "Hello")
