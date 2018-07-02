import UIKit

func reverseString(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    let reversed = parts.map {String($0.reversed())}
    return reversed.joined(separator: " ")
}

reverseString(input: "coding challenges...")
reverseString(input: "Swift Programming Exercises")
