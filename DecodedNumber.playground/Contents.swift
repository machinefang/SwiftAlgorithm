//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array = ["11", "43", "26", "11", "33", "40"]
let intArray = array.map { Int($0)!} // [11, 43, 26, 11, 45, 40]
intArray
Int("3")


func decodeNumber(num: String) -> Int{

    let chars = num.map{String($0)}
    let length = chars.count
    if length == 0 {return 0}

    var track = Array(repeating: 0, count: length + 1)
    track[0] = 1

    for i in 1 ..< (length + 1) {
        if chars[i - 1] != "0" {
            track[i] += track[i - 1]
        }
        if i >= 2 {
     //       print("\(i) is \(chars[i - 1])")
            if (Int(chars[i - 2])! * 10 + Int(chars[i - 1])!) < 27 {
                track[i] += track[i - 2]
            }
        }

    }
    return track[length]

}

var result = decodeNumber(num: "129222")
result
//
//
//
