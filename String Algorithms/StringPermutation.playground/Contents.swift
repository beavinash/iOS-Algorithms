import UIKit

func stringPermutation(input: String, current: String = "") {
    let length = input.count
    let strArray = Array(input)
    
    if length == 0 {
        // theres is nothing left to arrange, print the result
        print(current)
        print("*******")
    } else {
        print(current)
        
        // loop through every character
        for i in 0 ..< length {
            // get the letters before me
            let left = String(strArray[0 ..< i])
            
            // get the letters after me
            let right = String(strArray[i+1 ..< length])
            
            // put those together and carry on
            stringPermutation(input: left + right, current: current + String(strArray[i]))
        }
        
    }
    
    
}

stringPermutation(input: "a")
stringPermutation(input: "abc")
stringPermutation(input: "ab")

