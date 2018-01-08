//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Insert interval
//http://www.lintcode.com/zh-cn/problem/insert-interval/
//http://www.jiuzhang.com/solutions/insert-interval/

//给出一个无重叠的按照区间起始端点排序的区间列表。
//
//在列表中插入一个新的区间，你要确保列表中的区间仍然有序且不重叠（如果有必要的话，可以合并区间）。
//
//插入区间[2, 5] 到 [[1,2], [5,9]]，我们得到 [[1,9]]。
//
//插入区间[3, 4] 到 [[1,2], [5,9]]，我们得到 [[1,2], [3,4], [5,9]]。

struct Hard_057_Insert_Interval {
    static func insert(intervals: [[Int]], newInterval newI: [Int]) -> [[Int]]{
        var newInterval = newI
        var res: [[Int]] = intervals

        for i in 0 ..< intervals.count {
            if newInterval[0] > intervals[i][1] {
                res.append(intervals[i])
            }
            else if newInterval[1] < intervals[i][0] {
                res.append(newInterval)
                newInterval = intervals[i]
            }else{
                newInterval[0] = min(newInterval[0], intervals[i][0])
                newInterval[1] = max(newInterval[1], intervals[i][1])
            }
        }
        res.append(newInterval)
        return res
    }
}
