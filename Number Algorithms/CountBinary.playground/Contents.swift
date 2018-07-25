import UIKit

func countBinary(number: Int) -> (nextHighest: Int?,
    nextLowest: Int?) {
        let targetBinary = String(number, radix: 2)
        let targetOnes = targetBinary.filter { $0 ==
            "1" }.count
        var nextHighest: Int? = nil
        var nextLowest: Int? = nil
        for i in number + 1...Int.max {
            let currentBinary = String(i, radix: 2)
            let currentOnes = currentBinary.filter { $0 ==
                "1" }.count
            if targetOnes == currentOnes {
                nextHighest = i
                break
                
            } }
        for i in (0 ..< number).reversed() {
            let currentBinary = String(i, radix: 2)
            let currentOnes = currentBinary.filter { $0 ==
                "1" }.count
            if targetOnes == currentOnes {
                nextLowest = i
                break
            } }
        return (nextHighest, nextLowest)
}


func countBinary1(number: Int) -> (nextHighest: Int?,
    nextLowest: Int?) {
        func ones(in number: Int) -> Int {
            let currentBinary = String(number, radix: 2)
            return currentBinary.filter { $0 ==
                "1" }.count }
        let targetOnes = ones(in: number)
        var nextHighest: Int? = nil
        var nextLowest: Int? = nil
        for i in number + 1...Int.max {
            
            if ones(in: i) == targetOnes {
                nextHighest = i
                break
            } }
        for i in (0 ..< number).reversed() {
            if ones(in: i) == targetOnes {
                nextLowest = i
                break
            } }
        return (nextHighest, nextLowest)
}


countBinary(number: 4)
countBinary1(number: 7)
