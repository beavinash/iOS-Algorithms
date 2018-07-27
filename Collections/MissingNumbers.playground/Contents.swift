import UIKit

func missingNumbers(input: [Int]) -> [Int] {
    let correctArray = Array(1...100)
    var missingNum = [Int]()
    
    for number in correctArray {
        if !input.contains(number) {
            missingNum.append(number)
        }
    }
    return missingNum
}


missingNumbers(input: [1,2,3,4,5,6,7,8])

func missingNumbers1(input: [Int]) -> [Int] {
    let correctNumbers = Array(1...100)
    let inputSet = Set(input)
    var missingNum = [Int]()
    
    for number in correctNumbers {
        if !inputSet.contains(number) {
            missingNum.append(number)
        }
    }
    return missingNum
}


missingNumbers1(input: [1,2,4,3,3,3,6])


func missingNumbers2(input: [Int]) -> [Int] {
    let inputSet = Set(input)
    let testSet = Set(1...100)
    
    return Array(testSet.subtracting(inputSet).sorted())
}


missingNumbers2(input: [1,2,4,3,3,3,6])
