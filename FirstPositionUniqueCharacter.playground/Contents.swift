//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let characters = Array(str)


//First Position Unique Character
//http://www.lintcode.com/zh-cn/problem/first-position-unique-character/
//http://www.jiuzhang.com/solutions/first-position-unique-character/

//给出一个字符串。找到字符串中第一个不重复的字符然后返回它的下标。如果不存在这样的字符，返回 -1。
//
//给出字符串 s = "lintcode"，返回 0。
//给出字符串 s = "lovelintcode"，返回 2。

func firstUnique(s: String) -> Int {
    let charArr = s.map{String($0)}
    guard charArr.count != 1 else {
        return 0
    }

    var currentIndex = 0
    var myDict = [String: Int]()
    myDict[charArr[currentIndex]] = currentIndex
    while(currentIndex < charArr.count){
        for i in currentIndex + 1 ..< charArr.count {
            if myDict[charArr[i]] == nil {
                myDict[charArr[i]] = i
            }
            else if charArr[i] == charArr[currentIndex]{
                currentIndex += 1
                break
            }
            if (i == charArr.count - 1 ) {
                return currentIndex
            }

        }


    }

    return currentIndex < charArr.count + 1 ? currentIndex : -1
}


var i = firstUnique(s: "lintcode")













