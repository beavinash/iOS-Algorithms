import UIKit

func differentStrings(first: String, second: String) -> Bool {
    guard first.count == second.count else {return false}
    let firstArray = Array(first)
    let secondArray = Array(second)
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

differentStrings(first: "Clamp", second: "Cramp")
differentStrings(first: "Tennis", second: "Football")
