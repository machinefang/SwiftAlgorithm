//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let start = str.index(str.startIndex, offsetBy: 1)
let end = str.index(str.startIndex, offsetBy: 5) //从右开始数3个
let range = start..<end
str.substring(with: range)



//Strings Serialization
//http://www.lintcode.com/zh-cn/problem/strings-serialization/
//http://www.jiuzhang.com/solutions/strings-serialization/

//设计一个将字符串列表编码为字符串的算法。 已经编码的字符串之后会通过网络发送同时也会被解码回到原始的字符串列表。
//请实现 encode 和 decode
//
//您在真实的面试中是否遇到过这个题？ Yes
//样例
//给定字符串 strs = ["lint","code","love","you"]
//string encoded_string = encode(strs)
//当你调用 decode(encoded_string)时 返回 ["lint","code","love","you"]



class Solution {

    func encode(strs: [String]) -> String {
        var newString = ""
        for i in 0..<strs.count {
            var strArr = strs[i].map{String($0)}
            var j = 0
            while(j < strArr.count) {
                if strArr[j] == ":" {
                    newString.append("::")
                }else{
                    newString.append(strArr[j])
                }
                j += 1
            }
            if i < strs.count - 1 {
                newString.append(":;")
            }

        }

        print(newString)

        return newString
    }

    func decode(str: String) -> [String] {
        var arr = [String]() //result array

        var charArr = str.map{String($0)}
        var i = 0
        var decodeString = ""

        while(i < charArr.count - 1) {
            if charArr[i] == ":"{
                if charArr[i + 1] == ";" {
                    i = i + 2
                    arr.append(decodeString)
                    decodeString = ""
                }else if charArr[i + 1] == ":" {
                    decodeString = decodeString + ":"
                    i = i + 2
                }
            } else {
                decodeString = decodeString + charArr[i]
                i = i + 1
            }
    }
        decodeString.append(charArr[i])
        arr.append(decodeString)

        if arr[0] == "" {
            arr.remove(at: 0)
        }
        return arr
}

}









//class Solution{
//    func encode(s: [String]) -> String {
//        guard s.count > 1 else {
//            return ""
//        }
//
//        var result = ""
//        for i in 0 ..< s.count {
//            result += s[i] + ","
//        }
//
//        return result
//    }
//
//    func decode(s: String) -> [String] {
//        var newArr : [String] = []
//        var sChar = s.map{String($0)}
//
//        var startIndex = 0
//        for i in 0 ..< sChar.count {
//            if sChar[i] == "," {
//               let start = s.index(s.startIndex, offsetBy: startIndex)
//                let end = s.index(s.startIndex, offsetBy: i)
//                let range = start..<end
//                newArr.append(s.substring(with: range))
//                startIndex = i + 1
//            }
//        }
//        return newArr
//
//    }
//}
//
var solution = Solution()

let encodeString = solution.encode(strs: ["lint","co::;de","love","you"])
let result = solution.decode(str: encodeString)






