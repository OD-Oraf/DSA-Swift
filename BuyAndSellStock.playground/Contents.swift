import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var currMin = prices[0]
        
        for (i, price) in prices.enumerated() {
            if (i == 0) {
                continue
            }
            if (price < currMin) {
                currMin = price
            }
            
            maxProfit = price - currMin
        }
    
        
        return maxProfit
    }
}

var prices = [7,1,5,3,6,4]

print(Solution().maxProfit(prices))
