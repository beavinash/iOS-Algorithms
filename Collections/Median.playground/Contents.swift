import UIKit

extension Collection where Iterator.Element == Int {
    func medianNumber() -> Double? {
        guard count != 0 else {
            return nil
        }
        
        // sort the items so center is found
        let sorted = self.sorted()
        let middle = sorted.count / 2
        
        if sorted.count % 2 == 0 {
            // return mean average of two center items
            return Double(sorted[middle] + sorted[middle - 1]) / 2
        } else {
            return Double(sorted[middle])
        }
    }
}


[1,2,3].medianNumber()
[1,3,2,5,6,2].medianNumber()
