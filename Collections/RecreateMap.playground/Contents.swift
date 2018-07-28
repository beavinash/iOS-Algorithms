import UIKit

extension Collection {
    func recreatedMap<T> (_ transform: (Iterator.Element) throws -> T) rethrows -> [T] {
        var returnValue = [T]()
        for item in self {
            returnValue.append(try transform(item))
        }
        
        return returnValue
    }
}

var test = [1,2,3].recreatedMap { String($0)}
print(test)
