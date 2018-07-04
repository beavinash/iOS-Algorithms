import UIKit

func binaryCount(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    let targetBinary = String(number, radix: 2)
    let targetOnes = targetBinary.filter {$0 == "1"}.count
    
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for i in number + 1...Int.max {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.filter {$0 == "1"}.count
        if targetOnes == currentOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0 ..< number).reversed() {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.filter {$0 == "1"}.count
        if targetOnes == currentOnes {
            nextLowest = i
            break
        }
    }
    
    return (nextHighest, nextLowest)
}

binaryCount(number: 4)
