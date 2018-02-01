//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = [1,2,3,4]
var b = [1,2,3,4]
var c = [Int]()




class Solution1 { //空间复杂度为O（n）
    func productExceptSelf(_ nums: [Int]) -> [Int] {

        var mProduct = [Int](repeatElement(1, count: nums.count)) //product before i
        var nProduct = [Int](repeatElement(1, count: nums.count))  // product after i


        for i in 1 ..< nums.count {
            mProduct[i] = mProduct[i - 1] * nums[i - 1]
        }

        for i in (0 ..< nums.count - 1).reversed() {
            nProduct[i] = nProduct[i + 1] * nums[i + 1]
        }

        return zip(mProduct, nProduct).map{$0 * $1}

    }
}

var s = Solution1()

var result = s.productExceptSelf([1,2,3,4])
var result2 = s.productExceptSelf([0,0])


class Solution2 { 
    func productExceptSelf(_ nums: [Int]) -> [Int] {

        var result = [Int](repeatElement(1, count: nums.count))

        var p = 1


        for i in 1 ..< nums.count {
            p = p * nums[i - 1]
            result[i] = p
        }

        p = 1

        for i in (0 ..< nums.count - 1).reversed() {
            p = p * nums[i + 1]
            result[i] = result[i] * p
        }
        return result

    }
}




