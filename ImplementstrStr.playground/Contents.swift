//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




//Implement strStr().
//
//Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let hayStackArr = haystack.map{String($0)}
        let needleArr = needle.map{String($0)}
        print(needleArr)
        print(needleArr.count)


        guard needleArr.count != 0 else {
            return 0
        }


        guard hayStackArr.count > needleArr.count else {
            if haystack == needle{
                return 0
            }
            return -1
        }



        for i in 0 ..< hayStackArr.count - needleArr.count + 1{
            if hayStackArr[i] == needleArr[0] {
                let subArr =  Array(hayStackArr[i...(needleArr.count + i - 1)])

                if subArr == needleArr {
                    return i
                }

            }

        }
        return -1
    }
}

var s = Solution()
var result = s.strStr("a", "")



