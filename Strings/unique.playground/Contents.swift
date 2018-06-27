//: Playground - noun: a place where people can play

import UIKit

func uniqueString(input: String) -> Bool {
    var usedLetters = [Character]()
    for letter in input.characters {
        if (usedLetters.contains(letter)) {
            return false
        }
        usedLetters.append(letter)
    }
    return true
}

uniqueString(input: "No duplicates")
uniqueString(input: "Hello, World!")
uniqueString(input: "Win")

func uniqueStringWithSet(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}


uniqueStringWithSet(input: "No duplicates")
uniqueStringWithSet(input: "Hello, World!")
uniqueStringWithSet(input: "Win")
