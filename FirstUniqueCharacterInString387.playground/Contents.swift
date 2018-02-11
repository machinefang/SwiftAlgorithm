//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let a = Array(str.characters)
a.count

let b = str.map{String($0)}

b

let c = Array(str)


a == c

//convert character to ASCII
let aValue = Int(UnicodeScalar("a")!.value)
aValue





class Solution {
    func firstUniqChar(_ s: String) -> Int {

        var dict = [Character: Bool]()

        for char in s.characters {
            if let isUnip = dict[char] {
                dict[char]  = true
            }else {
                dict[char] = false
            }
        }

        for (i, char) in Array(s.characters).enumerated() {
            if !dict[char]! {
                return i
            }
        }

        return -1

    }
}


class Solution2 {
    func firstUniqChar(_ s: String) -> Int {

        var countArr = Array(repeating: 0, count: 256)
        let sArr = s.map{String($0)}

        for m in sArr {
            let index = Int(UnicodeScalar(m)!.value)
            countArr[index] += 1
        }

        for (i, element) in sArr.enumerated() {
            let index = Int(UnicodeScalar(element)!.value)
            if countArr[index] == 1 {
                return i
            }

        }

       return -1

    }
}











