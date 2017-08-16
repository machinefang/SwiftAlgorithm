//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count != 0 else {
            return 0
        }

        var maxProfit : [Int] = Array(repeating: 0, count: prices.count)
        var minPrice = prices[0]
        for i in 1 ..< prices.count {
            maxProfit[i] = max(maxProfit[i-1], prices[i] - minPrice)
            if (minPrice > prices[i]) {
                minPrice = prices[i]

            }

        }
        return maxProfit[prices.count - 1]


    }
}

let s = Solution()
let result = s.maxProfit([7, 1, 5, 3, 6, 4])
let result2 = s.maxProfit([])



