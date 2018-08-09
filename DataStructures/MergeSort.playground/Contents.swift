import UIKit

func mergeSort(_ arrayToSort: [Int]) -> [Int] {
    if arrayToSort.count < 2 {
        return arrayToSort
    }
    
    let midIndex = arrayToSort.count / 2
    
    let left = Array(arrayToSort[0..<midIndex])
    let right = Array(arrayToSort[midIndex..<arrayToSort.count])
    
    let sortedLeft = mergeSort(left)
    let sortedRight = mergeSort(right)
    
    var sortedArray = Array(repeating: 0, count: arrayToSort.count)
    
    var currentLeftIndex = 0
    var currentRightIndex = 0
    
    for currentSortedIndex in 0..<arrayToSort.count {
        
        // sortedLeft's first element comes next
        // if it's less than sortedRight's first
        // element or if sortedRight is empty
        if currentLeftIndex < sortedLeft.count &&
            (currentRightIndex >= sortedRight.count ||
                sortedLeft[currentLeftIndex] < sortedRight[currentRightIndex]) {
            sortedArray[currentSortedIndex] = sortedLeft[currentLeftIndex]
            currentLeftIndex += 1
        } else {
            sortedArray[currentSortedIndex] = sortedRight[currentRightIndex]
            currentRightIndex += 1
        }
    }
    
    return sortedArray
}

mergeSort([100, 20, 10, 2, 15, 90, 80])
