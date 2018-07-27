import UIKit

extension Collection where Iterator.Element == Int {
    func countNumbers(count: Character) -> Int {
        var total = 0
        // loop over every element
        for item in self {
            let str = String(item)
            // loop over every letter in the string
            for letter in str {
                if letter == count {
                    total += 1
                }
            }
        }
        return total
    }
}

[5, 15, 25, 35, 45, 55].countNumbers(count: "5")
