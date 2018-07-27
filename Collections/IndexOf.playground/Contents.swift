import UIKit

extension Collection where Iterator.Element: Equatable {
    func indexOfMethod(indexOf search: Iterator.Element) -> Int? {
        for (index, itemValue) in self.enumerated() {
            if itemValue == search {
                return index
            }
        }
        return nil
    }
}


[1,2,3,5,6].indexOfMethod(indexOf: 5)
