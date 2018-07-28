import UIKit

extension Collection where Iterator.Element: Comparable {
    func recreateMin() -> Iterator.Element? {
        var lowest: Iterator.Element?
        
        for item in self {
            if let unwrappedLowest = lowest {
                if item < unwrappedLowest {
                    lowest = item
                } else {
                    lowest = item
                }
            }
        }
        return lowest
    }
    
    func recreateMin1() -> Iterator.Element? {
        guard var lowest = self.first else { return nil }
        
        for item in self {
            if item < lowest {
                lowest = item
            } else {
                lowest = item
            }
        }
        return lowest
    }
    
    func recreateMin2() -> Iterator.Element? {
        var it = makeIterator()
        guard var lowest = it.next() else { return nil }
        
        while let item = it.next() {
            if item < lowest {
                lowest = item
            }
        }
        return lowest
    }
    
    func recreateMin3() -> Iterator.Element? {
        guard let lowest = self.first else { return nil }
        
        return reduce(lowest) { $1 < $0 ? $1: $0}
    }
    
    func recreateMin4() -> Iterator.Element? {
        return self.sorted().first
    }
}



[1,2,3,0].recreateMin2()

