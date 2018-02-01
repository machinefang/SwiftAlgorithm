//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {

        guard timeSeries.count != 0 else {
            return 0
        }

        var result = 0
        var begin = timeSeries[0]

        for i in 1 ..< timeSeries.count {
            result = result + (timeSeries[i] < begin + duration ? timeSeries[i] - begin : duration)
            begin = timeSeries[i]

        }
        return result + duration
    }
}

var s = Solution()
var res = s.findPoisonedDuration([1,2], 2)

