//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var charArray = str.characters.map{String($0)}

charArray

let index = str.index(str.startIndex, offsetBy: 5)
str.substring(to: index)










class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        guard strs.count != 0 else {
            return ""
        }

        var prefix : String = strs[0]

        for i in 1 ..< strs.count {
            var j = 0
            let prefixCharArr = prefix.characters.map{String($0)}
            let strCharArr = strs[i].characters.map{String($0)}

            if j <= prefixCharArr.count && j <= strCharArr.count && prefixCharArr[j] == strCharArr[j] {
                j += 1
            }

            if j == 0 {
                return ""
            }
            let index = prefix.index(prefix.startIndex, offsetBy: j+1)
            prefix = prefix.substring(to: index)

        }

        return prefix

    }
}
