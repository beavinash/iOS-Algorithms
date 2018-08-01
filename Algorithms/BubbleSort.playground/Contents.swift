import UIKit

extension Array where Element: Comparable {
    func bubbleSort() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        var swapsMade: Bool
        
        repeat {
            swapsMade = false
            
            for index in 0..<returnValue.count {
                let element = returnValue[index]
                let nextElement = returnValue[index + 1]
                
                if element > nextElement {
                    returnValue.swapAt(index, index + 1)
                    swapsMade = true
                }
            }
        } while swapsMade == true
        return returnValue
    }
    
    func bubbleSort1() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        var swapsMade: Bool
        
        repeat {
            swapsMade = false
            
            for index in 0..<returnValue.count {
                let element = returnValue[index]
                let nextElement = returnValue[index + 1]
                
                if element > nextElement {
                    print("Before: \(returnValue)")
                    returnValue.swapAt(index, index + 1)
                    
                }
                swapsMade = true
                print("After: \(returnValue)")
            }
        } while swapsMade == true
        return returnValue
    }
    
    func bubbleSort2() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        var highestSortedIndex = count
        
        repeat {
            var lastSwapIndex = 0
            for index in 0..<highestSortedIndex - 1 {
                let element = returnValue[index]
                let nextElement = returnValue[index + 1]
                
                if element > nextElement {
                    returnValue.swapAt(index, index + 1)
                    lastSwapIndex = index + 1
                }
            }
            highestSortedIndex = lastSwapIndex
        } while (highestSortedIndex != 0)
        return returnValue
    }
}

[1,2,3,6,1,12,7].bubbleSort2()
