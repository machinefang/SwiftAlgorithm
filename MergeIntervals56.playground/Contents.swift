//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Merge intervals
//http://www.lintcode.com/zh-cn/problem/merge-intervals/
//http://www.jiuzhang.com/solutions/merge-intervals/
//给出若干闭合区间，合并所有重叠的部分。
//
//给出的区间列表 => 合并后的区间列表：
//
//[                     [
//    [1, 3],               [1, 6],
//    [2, 6],      =>       [8, 10],
//    [8, 10],              [15, 18]
//    [15, 18]            ]
//]


/**
 * Definition for an interval.
 * public class Interval {
 *   public var start: Int
 *   public var end: Int
 *   public init(_ start: Int, _ end: Int) {
 *     self.start = start
 *     self.end = end
 *   }
 * }
 */
 public class Interval {
       public var start: Int
       public var end: Int
       public init(_ start: Int, _ end: Int) {
             self.start = start
             self.end = end
           }
     }

class Solution {
    func merge(_ intervals: [Interval]) -> [Interval] {
        let sortedInterval = intervals.sorted{$0.start < $1.start}

        guard intervals.count > 1 else {
            return intervals
        }

        var result = [Interval]()

        var curInterval = sortedInterval[0]
        result.append(curInterval)
        for i in 1 ..< sortedInterval.count {
            if curInterval.end < sortedInterval[i].start {
                result.append(sortedInterval[i])
                curInterval = sortedInterval[i]

            }else {
                curInterval.end = max(curInterval.end, sortedInterval[i].end)

            }
        }
        return result
    }
}

var s = Solution()
s.merge([Interval(1,4),Interval(0,4),Interval(7, 9),Interval(5,6)])

var interArr = [Interval(1,4),Interval(0,4),Interval(7, 9),Interval(5,6)]
interArr.sorted{$0.start < $1.start}
interArr





