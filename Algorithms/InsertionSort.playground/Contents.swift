import UIKit

extension Array where Element: Comparable {
    func insertionSort() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = [Element]()
        for unsorted in self {
            if returnValue.count == 0 {
                returnValue.append(unsorted)
            } else {
                var placed = false
                for (index, sorted) in returnValue.enumerated() {
                    if unsorted < sorted {
                        returnValue.insert(unsorted, at: index)
                        placed = true
                        break
                    }
                }
                if !placed {
                    returnValue.append(unsorted)
                }
            }
        }
        return returnValue
    }
    
    func insertionSort1() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        
        for i in 1..<count {
            var currentItemIndex = i
            let itemToPlace = returnValue[currentItemIndex]
            
            while currentItemIndex > 0 && itemToPlace < returnValue[currentItemIndex - 1] {
                returnValue[currentItemIndex] = returnValue[currentItemIndex - 1]
                currentItemIndex -= 1
            }
            
            returnValue[currentItemIndex] = itemToPlace
        }
        return returnValue
    }
}


[1, 4, 2, 12, 8, 6, 5].insertionSort1()
