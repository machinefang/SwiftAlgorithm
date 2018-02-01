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
let subArray = arrayOfInts[1...3]


// e.g. using joined()
let arr: [Any] = ["E", "x", "a", "m", "p", "l", "e"]
let st = arr.flatMap { $0 as? String }.joined()
print(st) // example


let m = "abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"


let n = m.map{String($0)}
n.count




class Solution {
    func longestPalindrome(_ s: String) -> String {
        let sChars = s.map{String($0)}

        guard sChars.count > 1 else {
            return s
        }

        var result = [sChars[0]]

        for i in 0 ..< sChars.count - 1{
            var j = i + 1
            while(j < sChars.count) {
                if sChars[i] == sChars[j]{
                    let subarr = Array(sChars[i...j])
                    if isPalindrome(subarr){
                        if subarr.count > result.count{
                            result = subarr
                        }
                    }
                }
                j += 1
            }
        }

        return result.flatMap{$0 as! String}.joined()
    }

     private func isPalindrome(_ chars: [String]) -> Bool {

        for i in 0 ..< chars.count / 2 {
            guard chars[i] == chars[chars.count - 1 - i] else {
                return false
            }
        }
        return true
    }
}




