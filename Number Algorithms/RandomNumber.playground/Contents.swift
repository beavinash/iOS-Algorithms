import UIKit

var str = "Hello, playground"

func randomNumber(min: Int, max: Int) -> Int {
    guard min > 0 && max > 0 else {
        return 0
    }
    
    return Int(arc4random_uniform(UInt32(max - min + 1))) + min
}

randomNumber(min: 1, max: 5)
