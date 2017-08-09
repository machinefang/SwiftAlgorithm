//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*Give an integer array nums, find the sum of the elements between indices i and j (i <= j), inclusive. 
 eg: Given nums = [-2, 0, 3, -5, 2, -1]
 
 sumRange(0,2) -> 1
 sumRange(2,5) -> -1

 */

var nums = [-2, 0, 3, -5, 2, -1]
var newArr = nums[0...3]
newArr.reduce(0, +)


class NumArray {
    var sum : [Int]!

     init(_ n: [Int]) {
        sum = [Int](repeating: 0, count: n.count + 1)
        for i in 0 ..< n.count {
            sum[i + 1] = sum[i] + n[i]
        }


    }

    func sumRange(_ i : Int, _ j : Int) -> Int {
        return sum[j+1] - sum[i]


    }



}





