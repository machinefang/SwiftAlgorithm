//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Initialize the Array
var a = [6,3,2,1,5,4]

// Sort (ascending) its elements

a = a.sorted { $0 < $1 }

a



//Given an array of 2n integers, your task is to group these integers into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.
//
//Example 1:
//Input: [1,4,3,2]
//
//Output: 4
//Explanation: n is 2, and the maximum sum of pairs is 4 = min(1, 2) + min(3, 4).
//Note:
//n is a positive integer, which is in the range of [1, 10000].
//All the integers in the array will be in the range of [-10000, 10000].


class Solution{
    func arrayPartition(arr: [Int]) -> Int{

        var array = arr.sorted{$0 < $1}
        var i = 0
        var j = 1

        var result = 0

        while(j <= array.count) {
            result += min(array[i], array[j])
            i += 2
            j += 2
        }

        return result


    }
}


let s = Solution()
s.arrayPartition(arr: [1,4,3,2])


