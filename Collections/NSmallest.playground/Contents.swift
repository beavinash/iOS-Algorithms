import UIKit

extension Collection where Iterator.Element: Comparable {
    func nSmallest(count: Int) -> [Iterator.Element] {
        let sorted = self.sorted()
        return Array(sorted.prefix(count))
    }
}

[1,2,3,4,5].nSmallest(count: 3)
["h", "q", "i"].nSmallest(count: 2)
