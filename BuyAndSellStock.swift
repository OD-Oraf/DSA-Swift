//
//  BuyAndSellStock.swift
//  DSA-Swift
//
//  Created by OD Orafidiya on 4/30/24.
//

import Foundation

class BuyAndSellStock {
    
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
            
            maxProfit = max(maxProfit, price - currMin)
        }
    
        
        return maxProfit
    }
}


