//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        
        var dic = [Int: Bool]()
        for num in nums {
            if dic[num] == nil {
                dic[num] = false
            }
        }
        var result = 1
        for num in nums {
            if dic[num] == false{
                var resultCount = 1
                var larger = num + 1
                var lower = num - 1
                while(dic[larger] != nil) {
                    resultCount += 1
                    dic[larger] = true
                    larger += 1
                }
                while(dic[lower] != nil) {
                    resultCount += 1
                    dic[lower] = true
                    lower -= 1
                }
                result = max(result, resultCount)
            }
        }
        return result
    }
}

var s = Solution()
var result = s.longestConsecutive([100, 4, 200, 1, 3, 2])


