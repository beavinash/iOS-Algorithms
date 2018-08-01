import UIKit

func isomorphicFunction(first firstValue: Any, second secondValue: Any) -> Bool {
    let first = String(describing: firstValue)
    let second = String(describing: secondValue)
    
    guard first.count == second.count else { return false }
    
    var characterMap = [Character: Character]()
    let firstArray = Array(first)
    let secondArray = Array(second)
    
    for (index, character) in firstArray.enumerated() {
        let otherCharacter = secondArray[index]
        if let currentMapping = characterMap[character] {
            if currentMapping != otherCharacter {
                return false
            }
        } else {
            if characterMap.values.contains(otherCharacter) {
                return false
            }
            
            characterMap[character] = otherCharacter
        }
    }
    return true
}

isomorphicFunction(first: "clap", second: "slap")
