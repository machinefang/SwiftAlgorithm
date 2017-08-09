//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//recursion
//注意index of range问题
//注意边界条件
//从简化版本思考

func countAndSay(_ n: Int) -> String {
    guard n != 0 else {
    return ""
    }

    if n == 1  {return "1"}

    var str = countAndSay(n-1)

    return helper(str)


}


// give an Int, count and read this Int
//give: "1211" -> "111221"

func helper(_ preResult : String) -> String {
    guard preResult != "" else {return ""}

    var charArr = preResult.characters.map{String($0)}
    var result = ""
    var i = 1
    var counter = 1
    while (i < charArr.count) {
        if charArr[i] == charArr[i - 1] {
            counter += 1

        }else {
            result.append("\(counter)\(charArr[i-1])")
            counter = 1
        }
        i += 1

    }

        result.append("\(counter)\(charArr[i - 1])")

    return result

}

helper("1")

countAndSay(5)









