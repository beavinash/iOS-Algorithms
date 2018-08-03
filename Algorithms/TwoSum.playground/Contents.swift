import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let mapped = map[target - nums[i]] {
                return [mapped,i]
            }
            map[nums[i]] = i
        }
        return []
    }
}

let solution = Solution()
solution.twoSum([1,2,3], 3)
