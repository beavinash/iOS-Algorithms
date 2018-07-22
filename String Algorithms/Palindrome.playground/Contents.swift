import UIKit

func isPalindrome(input: String) -> Bool {
    var palindromeResult: String = ""
    let lowerCaseInput = input.lowercased()
    for letter in lowerCaseInput {
        palindromeResult = "\(letter)\(palindromeResult)"
    }
    return palindromeResult == lowerCaseInput
}

func isPalindrome1(input: String) -> Bool {
    return input.reversed() == Array(input)
}

func isPalindrome2(input: String) -> Bool {
    let unwantedSymbols = ["*", ",", "'", "$"]
    
    for letter in unwantedSymbols {
        if input.contains(letter) {
            return false
        }
    }
    return input.reversed() == Array(input)
}

isPalindrome(input: "Avinash")
isPalindrome(input: "MADAM")
isPalindrome(input: "rotatoR")

isPalindrome1(input: "Avinash")
isPalindrome1(input: "MADAM")

isPalindrome2(input: "Avinash")
isPalindrome2(input: "RotatoR")
