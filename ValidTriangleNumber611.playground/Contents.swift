//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//解题思路： 两边之和大于第三边
//暴力算法： 固定两边a,b，第三边c遍历。之后a或b也应遍历，三个loop。每个都是n-1，所以共nnn
//优化：三边都需要指针。应如何减少遍历时间？
//1. 因为有比较，所以可sort input
//2.

class Solution {
    func triangleNumber(_ nums: [Int]) -> Int {
        var result = 0
        let sortedNums = nums.sorted()
        for i in (2 ..< sortedNums.count).reversed() {
            var m = i - 1
            var n = 0

            while (m > n) {
                if sortedNums[n] + sortedNums[m] >= nums[i] {
                    result += 1
                    m -= 1
                }else {
                    n += 1
                }

            }
        }
        return result
    }
}

var s = Solution()
let reuslt = s.triangleNumber([2,2,3,4])

