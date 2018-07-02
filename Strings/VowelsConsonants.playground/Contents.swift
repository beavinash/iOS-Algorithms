import UIKit

func vowelsConsonants(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    var vowelCount = 0
    var consonantCount = 0
    for letter in input.lowercased() {
        let stringLetterConv = String(letter)
        if stringLetterConv.rangeOfCharacter(from: vowels) != nil {
            vowelCount += 1
        } else if stringLetterConv.rangeOfCharacter(from: consonants) != nil {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

vowelsConsonants(input: "San Francisco!")
vowelsConsonants(input: "Massachusetts.")
