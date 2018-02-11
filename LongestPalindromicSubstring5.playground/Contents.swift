//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let index = str.index(str.startIndex, offsetBy: 5)
let index2 = str.index(after: index)
let mySubstring = str[..<index] // Hello
let mySub2 = str[index2]

let start = str.index(str.startIndex, offsetBy: 7)
let end = str.index(str.endIndex, offsetBy: -6)
let range = start..<end

let mySubstring3 = str[range]  // play


let arrayOfInts = [ 0, 1, 2, 3, 4, 5 ]
let subArray = arrayOfInts[1...3] // is not a string, need to use String()
String(describing: subArray)
let a = subArray.isEmpty




// e.g. using joined()
let arr: [Any] = ["E", "x", "a", "m", "p", "l", "e"]
let st = arr.flatMap { $0 as? String }.joined()
print(st) // example


let m = "abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"


let n = m.map{String($0)}
n.count




//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//        let sChars = s.map{String($0)}
//
//        guard sChars.count > 1 else {
//            return s
//        }
//
//        var result = [sChars[0]]
//
//        for i in 0 ..< sChars.count - 1{
//            var j = i + 1
//            while(j < sChars.count) {
//                if sChars[i] == sChars[j]{
//                    let subarr = Array(sChars[i...j])
//                    if isPalindrome(subarr){
//                        if subarr.count > result.count{
//                            result = subarr
//                        }
//                    }
//                }
//                j += 1
//            }
//        }
//
//        return result.flatMap{$0 as! String}.joined()
//    }
//
//     private func isPalindrome(_ chars: [String]) -> Bool {
//
//        for i in 0 ..< chars.count / 2 {
//            guard chars[i] == chars[chars.count - 1 - i] else {
//                return false
//            }
//        }
//        return true
//    }
//}


class Solution{

    func longestPalindrome(_ s: String) -> String {

        let stringArr = s.map{String($0)}

        guard stringArr.count > 1 else {
            return s
        }
        //choose a center: actually is choose start point of left and right
        //1:  use one element as center
        //2:  use space between two element as center
        var len = 0, start = 0, end = 0

        for i in 0 ..< stringArr.count {

            let len1 = expandAroundCenter(stringArr, i, i) //one element as center
            let len2 = expandAroundCenter(stringArr, i, i + 1)
            len = max(len1, len2)
            if (len > end - start) {
                start = i - (len - 1)/2 //rethink
                end = i + len/2
            }
        }

        return stringArr[start...end].flatMap{$0 as! String}.joined()

    }

    func expandAroundCenter(_ m: [String], _ left: Int, _ right: Int) -> Int {
        var le = left
        var ri = right
        while(le >= 0 && ri < m.count) {
            if m[le] == m[ri] {
                le -= 1
                ri -= 1
            }
        }

      return ri - le - 1

    }

}






