//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {

        let numsR = nums.count
        let numsC = nums[0].count

        guard numsR * numsC == r * c else {
            return nums
        }

        let flatNums = nums.flatMap{(array) in
            return array}

        var result = [[Int]]()

        var elementArray = [Int]()
        for j in 0 ..< flatNums.count {

            if (j + 1) % c  != 0 {
                elementArray.append(flatNums[j])
            }
            else {
                elementArray.append(flatNums[j])
                result.append(elementArray)
                elementArray = [Int]()
            }
        }

        return result


    }
}

var c = Solution()
c.matrixReshape([[1,2],[3,4]], 1, 4)



