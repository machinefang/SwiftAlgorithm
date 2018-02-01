//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Edit Distance II
//给你两个字符串 S 和 T, 判断他们是否只差一步编辑。

//样例
//给你字符串 s = "aDb", t= "adb"
//返回 true

//Insert a character
//Delete a character
//Replace a character

func isOneEditDistance(s: String, t: String)-> Bool {
    let sChar = s.map{String($0)}
    let tChar = t.map{String($0)}

    guard abs(sChar.count - tChar.count) <= 1 else {
        return false
    }

    if sChar.count == tChar.count {//replace
        var diffCount = 0
        for i in 0 ..< sChar.count {
            if sChar[i] != tChar[i] {
                diffCount += 1
            }
        }
        guard diffCount == 1 else {return false}
        return true
    } else {
        if sChar.count > tChar.count {
            return deleteOrInsert(less: tChar, more: sChar)
        } else {
            return deleteOrInsert(less: sChar, more: tChar)
        }

    }

}

func deleteOrInsert(less: [String], more: [String]) -> Bool {
    var diffCount = 0
    var diffIndex = 0
    var moreArr = more
    for i in 0 ..< moreArr.count {
        if !less.contains(moreArr[i]){
            diffCount += 1
            guard diffCount <= 1 else {return false}
            diffIndex = i
        }
    }

    moreArr.remove(at: diffIndex)
    return less == moreArr
}


isOneEditDistance(s: "", t: "ab")







