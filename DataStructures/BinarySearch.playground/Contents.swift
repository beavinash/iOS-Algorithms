import UIKit

func binarySearch(for target: Int, in nums:[Int]) -> Bool {
    guard nums.count >= 1 else { return false }
    
    var floorIndex = -1
    var ceilingIndex = nums.count
    
    while floorIndex + 1 < ceilingIndex {
        let distance = ceilingIndex - floorIndex
        let halfDistance = distance / 2
        let guessIndex = floorIndex + halfDistance // 4
        
        let guessValue = nums[guessIndex]
        
        if guessValue == target {
            return true
        }
        
        if guessValue > target {
            ceilingIndex = guessIndex
        }
        
        if guessValue < target {
            floorIndex = guessIndex
        }
    }
    
    return false
}


binarySearch(for: 84, in: [11, 22, 33, 44, 55, 66, 77, 82, 84, 99])
