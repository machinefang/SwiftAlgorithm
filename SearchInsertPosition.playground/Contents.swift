//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 0 {
        return 0
    }
    var i = 0
    while (i < nums.count && nums[i] <= target) {
        if nums[i] == target {return i}
        i += 1


    }
    return i

}

searchInsert([1,3,5,6], 0)


