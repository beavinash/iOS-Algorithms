import UIKit

func largestRange(_ numbers: [Int]) ->
    CountableClosedRange<Int>? {
        // this is the return value, nil by default
        var bestRange: CountableClosedRange<Int>? = nil
        var bestSum = 0
        // these track the current sequence of positive integers
        var currentStart: Int? = nil
        var currentSum = 0
        for (index, number) in numbers.enumerated() {
            if number > 0 {
                // if we don't have a start for the current range, set one now
                currentStart = currentStart ?? index
                currentSum += number
                if currentSum > bestSum {
                    // update our best range
                    bestRange = currentStart! ... index
                    bestSum = currentSum
                } } else {
                // reset the current range
                currentSum = 0
                currentStart = nil
            }
        }
        return bestRange
}


largestRange([0,1,1,-1,2,3,1])
