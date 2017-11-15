//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Predictor {


    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count != 0 else {return 0}

        var profit = 0

        for i in 0 ..< prices.count - 1 {
            if prices[i+1] > prices[i] {
                profit += profit + (prices[i+1] - prices[i])
            }
        }

        return profit

    }


}
