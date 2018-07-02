import UIKit

func stringRotation1(input: String, rotated: String) -> Bool {
    let combined = input + input
    return combined.contains(rotated)
}

stringRotation1(input: "abcde", rotated: "eabcd")
stringRotation1(input: "swift", rotated: "wifts")
stringRotation1(input: "abc", rotated: "a")


func stringRotation2(input: String, rotated: String) -> Bool {
    if input.count == rotated.count {
        let combined = input + input
        return combined.contains(rotated)
    } else {
        return false
    }
}

stringRotation2(input: "abc", rotated: "a")
stringRotation2(input: "abcde", rotated: "bcdea")
stringRotation2(input: "abcde", rotated: "deabc")

func stringRotation3(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else { return false }
    let combined = input + input
    return combined.contains(rotated)
}

stringRotation3(input: "abc", rotated: "a")
stringRotation3(input: "abcde", rotated: "edabc")
stringRotation3(input: "abcde", rotated: "deabc")
