//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var s = "egg"
var sArr = Array(s.characters)
sArr.count
sArr.indices.suffix(from:0)





//Given two strings s and t, determine if they are isomorphic同构.
//
//Two strings are isomorphic if the characters in s can be replaced to get t.
//
//All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
//
//Notice
//
//You may assume both s and t have the same length.
//
//
//Example
//Given s = "egg", t = "add", return true.
//
//Given s = "foo", t = "bar", return false.
//
//Given s = "paper", t = "title", return true.


func isIsomorphic(s :String, t : String) -> Bool {

    let sChar = s.map{String($0)}
    let tChar = t.map{String($0)}
//    let sChar = Array(s.characters)
//    let tChar = Array(t.characters)
   guard sChar.count == tChar.count else {
        return false
    }
    guard sChar.count != 0 else {
        return false
    }

    var dict : [String: String] = [:]
    for i in 0 ..< sChar.count {
        if dict[sChar[i]] == nil {
            dict[sChar[i]] = tChar[i]
        }else if dict[sChar[i]] != tChar[i] {
           return false
        }
    }
    return true
}
//

isIsomorphic(s: "egg", t: "foo")
isIsomorphic(s: "title", t: "paper")
isIsomorphic(s: "foo", t: "bar")
isIsomorphic(s: "", t: "")

