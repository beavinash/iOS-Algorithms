import UIKit

func characterCount(input: String, count: Character) -> Int {
    var letterCount = 0
    for letter in input {
        if letter == count {
            letterCount += 1
        }
    }
    return letterCount
}

func characterCount1(input: String, count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1: $0
    }
}
////
//func characterCount2(input: String, count: Character) -> Int {
//    let array = input.map {String($0)}
//    let counted = NSCountedSet(array: array)
//    return counted.count(for: count)
//}

characterCount(input: "Hello", count: "H")
characterCount(input: "Hello", count: "l")

characterCount1(input: "Hello", count: "H")
characterCount1(input: "Hello", count: "l")
//

