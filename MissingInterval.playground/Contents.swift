//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Missing Interval
//http://www.lintcode.com/zh-cn/problem/missing-interval/
//http://www.jiuzhang.com/solutions/missing-interval/

//给定一个排序整数数组，其中元素的取值范围为[lower，upper] (包括边界)，返回其缺少的范围。
//样例
//给出序列 nums = [0, 1, 3, 50, 75], lower = 0 且 upper = 99
//返回 ["2", "4->49", "51->74", "76->99"]。


public class Solution {
    /*
     * @param nums: a sorted integer array
     * @param lower: An integer
     * @param upper: An integer
     * @return: a list of its missing ranges
     */

    var result = [String]()
    func findMissingRanges(nums: [Int], lower : Int, upper: Int) -> [String] {
    // write your code here

        guard nums.count != 0 else {
            return result
        }
        addRange(lower, nums[0] - 1)
        for i in 1 ..< nums.count {
            addRange(nums[i - 1] + 1, nums[i] - 1)
        }
        addRange(nums[nums.count - 1], upper)

        return result
    }

    private func addRange(_ lower: Int, _ upper: Int){
        guard lower < upper else {return}
        if lower == upper {
            result.append("\(lower)")
        }else {
            result.append("\(lower) -> \(upper)")
        }
    }
}

var s = Solution()

s.findMissingRanges(nums: [2147483647], lower: 0, upper: 2147483647)


