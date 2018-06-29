//: Playground - noun: a place where people can play

import UIKit

func compareTwoStrings(string1: String, string2: String) -> Bool {
    var checkString: String = string2
    for letter in string1.characters {
        if let index = checkString.characters.index(of: letter) {
            checkString.characters.remove(at: index)
        } else {
            return false
        }
    }
    return checkString.characters.count == 0
}

compareTwoStrings(string1: "abca", string2: "acba")
compareTwoStrings(string1: "abc", string2: "cba")
compareTwoStrings(string1: "abc", string2: "cbAa")
compareTwoStrings(string1: "abc", string2: "Abc")


func compareTwoStringsStart(string1: String, string2: String) -> Bool {
    let array1 = Array(string1.characters)
    let array2 = Array(string2.characters)
    
    return array1.sorted() == array2.sorted()
}

compareTwoStringsStart(string1: "abca", string2: "acba")
compareTwoStringsStart(string1: "abc", string2: "cba")
compareTwoStringsStart(string1: "abc", string2: "cbAa")
compareTwoStringsStart(string1: "abc", string2: "Abc")
compareTwoStringsStart(string1: "fuelon", string2: "fuelon")
