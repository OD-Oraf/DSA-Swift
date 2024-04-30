import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Create hashmap of number and index
        var map = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            let complement = target - num //target - current number
            
            if let complementIndex = map[complement] {
                return [complementIndex, i]
            }
            
            map[num] = i
        }
        
        return [-1,-1]
    }
}


var nums = [2,7,11,15]
var target = 9

print(Solution().twoSum(nums, target))
