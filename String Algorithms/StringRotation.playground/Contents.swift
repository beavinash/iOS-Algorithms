import UIKit

func stringRoation(input: String, rotation: String) -> Bool {
    guard input.count == rotation.count else {
        return false
    }
    let combined = input + input
    return combined.contains(rotation)
}

stringRoation(input: "abcde", rotation: "eabcd")
stringRoation(input: "abc", rotation: "a")
stringRoation(input: "abcde", rotation: "abced")


//func isRotated(string: String, rotated: String) -> Bool {
//    if rotated.count != string.count {
//        return false
//    }
//    var array = Array(string)
//    for _ in 0..<array.count {
//        if let tempElement = array.last {
//            array.removeLast()
//            array.insert(tempElement, at: 0)
//            if String(array) == rotated {
//                return true
//            }
//        }
//    }
//    return false
//}
