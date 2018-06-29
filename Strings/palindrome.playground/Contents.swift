//: Playground - noun: a place where people can play

import UIKit

func palindromeCheck(input: String) -> Bool{
    let lowerCaseString = input.lowercased()
    return Array(lowerCaseString.characters) == lowerCaseString.characters.reversed()
}

palindromeCheck(input: "rotator")
palindromeCheck(input: "Hellow, world!")
palindromeCheck(input: "Rats star")
