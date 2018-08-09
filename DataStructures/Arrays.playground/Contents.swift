import UIKit

var myArray = [1, 2, 3, 4, 5, 10, 15, 20, 16, 18, 8]

let sliceResult1 = Array(myArray[0..<myArray.count])
let tailOfArray = Array(myArray[1..<myArray.count])


func squareArrayInPlace(_ numbers: inout [Int]) -> [Int] {
    for i in 0..<numbers.count {
        numbers[i] *= numbers[i]
    }
    
    return numbers
}

squareArrayInPlace(&myArray)


func squareArrayOutOfPlace(numbers: [Int]) -> [Int] {
    var squaredArray = Array(repeating: 0, count: numbers.count)
    
    for i in 0..<numbers.count {
        squaredArray[i] = numbers[i] * numbers[i]
    }
    return squaredArray
}

squareArrayOutOfPlace(numbers: myArray)

var originalArray = [2, 3, 4, 5]
let squaredArray  = squareArrayInPlace(&originalArray)

print("squared: \(squaredArray)")
// prints: squared: [4, 9, 16, 25]

print("original array: \(originalArray)")

var gasPrices: [Int] = []
gasPrices.append(122)
gasPrices.append(211)

