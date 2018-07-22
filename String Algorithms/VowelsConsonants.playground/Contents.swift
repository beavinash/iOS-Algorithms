import UIKit

func vowelsConsonants(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        
        if vowels.contains(letter) {
            vowelCount += 1
        } else if consonants.contains(letter) {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

func vowelsConsonants1(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        if (stringLetter.rangeOfCharacter(from: vowels) != nil) {
            vowelCount += 1
        } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}



vowelsConsonants(input: "aeiou")
vowelsConsonants(input: "afghziobcd")

vowelsConsonants1(input: "aeiou")
vowelsConsonants1(input: "afghziobcd")
