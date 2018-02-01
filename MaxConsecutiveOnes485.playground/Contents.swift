//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {

        var maxHere = 0
        var result = 0

        for i in 0 ..< nums.count {
            if nums[i] == 1 {
                maxHere += 1
            } else {
                result = max(result, maxHere)
                print(result)
                maxHere = 0
            }

        }
        return result

    }
}

var s = Solution()
let ans = s.findMaxConsecutiveOnes([1, 0])


