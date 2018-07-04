import UIKit

func randomNumberGeneration(minimum: Int, maximum: Int) -> Int {
    return Int(arc4random_uniform(UInt32(maximum - minimum + 1))) + minimum
}

randomNumberGeneration(minimum: 1, maximum: 5)
randomNumberGeneration(minimum: 12, maximum: 12)
