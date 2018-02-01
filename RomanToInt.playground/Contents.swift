//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//enum roman : String {
//    case i = "I"
//    case v = "V"
//    case x = "X"
//    case l = "L"
//    case c = "C"
//    case d = "D"
//    case m = "M"
//
//    var getIntValue : Int {
//        switch self {
//        case .i:
//            return 1
//        case .v:
//            return 5
//        case .x:
//            return 10
//        case .l:
//            return 50
//        case .c:
//            return 100
//        case .d:
//            return 500
//        case .m:
//            return 1000
//        }
//    }
//
//}
//
let string = "Hello 🐶🐮 🇩🇪"
let stringArray = string.characters.map{String($0)}
stringArray




//func toInt(s: String) -> Int {
//    switch s {
//    case "I":
//        return 1
//    case "V":
//        return 5
//    case "X":
//        return 10
//    case "L":
//        return 50
//    case "C":
//        return 100
//    case "D":
//        return 500
//    case "M":
//        return 1000
//    default:
//        return 0
//    }
//}
//
//var value = toInt(s: "I")
//value



class Solution {

    func toInt(_ s: String) -> Int {
        switch s {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
        }
    }


    func romanToInt(_ s: String) -> Int {
        var romanArray = s.map{String($0)}
        var result = toInt(romanArray[0])

        for i in 1 ..< romanArray.count {
            result += toInt(romanArray[i])

            if  toInt(romanArray[i - 1]) < toInt(romanArray[i])
                 {
                result -= (toInt(romanArray[i - 1]) * 2)
            }

        }
        return result

    }
}


var solution = Solution()
solution.romanToInt("MMMCMXCIX")











