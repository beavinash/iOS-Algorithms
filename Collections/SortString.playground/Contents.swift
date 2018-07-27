import UIKit

extension Collection where Iterator.Element == String {
    func sortString() -> [String] {
        return self.sorted {$0.count > $1.count}
    }
}

["a", "ab", "abc"].sortString()
