import UIKit

func countCharacter(input: String, count: Character) -> Int {
    var countValue = 0
    for character in input.characters {
        if character == count {
            countValue += 1
        }
    }
    return countValue
}

countCharacter(input: "Hello, World!", count: "a")
countCharacter(input: "Hello World!", count: "o")
