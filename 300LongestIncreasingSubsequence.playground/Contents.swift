//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Given an unsorted array of integers, find the length of longest increasing subsequence.
//
//For example,
//Given [10, 9, 2, 5, 3, 7, 101, 18],
//The longest increasing subsequence is [2, 3, 7, 101], therefore the length is 4. Note that there may be more than one LIS combination, it is only necessary for you to return the length.
//
//Your algorithm should run in O(n2) complexity.
//
//Follow up: Could you improve it to O(n log n) time complexity?


class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        if nums.count == 0 {return 0}

        var dparr = Array(repeating: 1, count: nums.count)
        for i in 1 ..< nums.count {
            for j in 0 ..< i {
                if nums[j] < nums[i] && dparr[j] + 1 > dparr[i] {
                    dparr[i] = dparr[j] + 1
                }
            }
        }

        return dparr[nums.count - 1]

    }
}

var sol1 = Solution()
var result = sol1.lengthOfLIS([5,3,4,8,6,7])







