import UIKit

func squareRoot(input: Int) -> Int {
    guard input != 1 else { return 1 }
    
    var lowerBound = 0
    var upperBound = 1 + input / 2
    
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle
        
        if middleSquared == input {
            return middle
        } else if middleSquared < input {
            lowerBound =  middle
        } else {
            upperBound = middle
        }
    }
    return lowerBound
}

func squareRoot1(input: Int) -> Int {
    return Int(floor(pow(Double(input), 0.5)))
}

squareRoot(input: 5)
squareRoot1(input: 45)
