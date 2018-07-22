import UIKit

func stringReverse(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    let reversed = parts.map {String($0.reversed())}
    
    return reversed.joined(separator: " ")
}


stringReverse(input: "Avi is cool")
