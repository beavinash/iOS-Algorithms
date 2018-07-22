import UIKit

func threeCharacterDifference(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count else {
        return false
    }
    let firstArray = Array(string1)
    let secondArray = Array(string2)
    
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            if differences > 3 {
                return false
            }
        }
    }
    return true
}

threeCharacterDifference(string1: "Avinash", string2: "Avi")
threeCharacterDifference(string1: "Avi", string2: "Avin")
threeCharacterDifference(string1: "avi", string2: "Avi")
