import UIKit

func stringPermutations(string: String, current: String = "") {
    let length = string.count
    let strArray = Array(string)
    
    if (length == 0) {
        print(current)
        print("********")
    } else {
        print(current)
        
        for i in 0 ..< length {
            let left = String(strArray[0 ..< i])
            let right = String(strArray[i+1 ..< length])
            stringPermutations(string: left + right, current: current + String(strArray[i]))
        }
    }
}

stringPermutations(string: "wombat", current: "cba")


