//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let aValue = Int(UnicodeScalar("a")!.value)

let arr1 = [1, 2, 3, 4]
let arr2 = [1, 2, -3, 5]

let a = zip(arr1, arr2).map{abs($0.0 - $0.1)}
a

let b = a.reduce(0, +)
b


//class Solution {
//    func findAnagrams(_ s: String, _ p: String) -> [Int] {
//        let sCharArr = s.map{String($0)}
//        let pCharArr = p.map{String($0)}
//        var pDic = [String: Int]()
//        var sSubDic = [String: Int]()
//        var result = [Int]()
//
//        guard pCharArr.count <= sCharArr.count else {
//            return []
//        }
//
//        //put p key value and s key value
//        for (i, item) in pCharArr.enumerated() {
//            if pDic[item] != nil {
//                pDic[item]! += 1
//            }else {
//                pDic[item] = 1
//            }
//
//            if sSubDic[sCharArr[i]] != nil {
//                sSubDic[sCharArr[i]]! += 1
//            }else {
//                sSubDic[sCharArr[i]] = 1
//            }
//        }
//
//        if pDic == sSubDic {
//            result.append(0)
//        }
//
//        //loop s
//        for i in pCharArr.count ..< sCharArr.count {
//            let rightItem = sCharArr[i] //new element to point
//            let leftItem = sCharArr[i - pCharArr.count] // element to cut
//
//
//            if sSubDic[rightItem] != nil {
//                sSubDic[rightItem]! += 1
//            }else {
//                sSubDic[rightItem] = 1
//            }
//
//            if sSubDic[leftItem] == 1 {
//                //delete leftItem
//                sSubDic[leftItem] = nil
//            }else {
//                sSubDic[leftItem]! -= 1
//            }
//
//            if pDic == sSubDic {
//                result.append(i - pCharArr.count + 1)
//            }
//        }
//
//        return result
//    }
//}


//let s = Solution()
//let result = s.findAnagrams("cbaebabacd", "abc")

class Solution2 {
    func getHash(_ c: Character) -> Int {
        return Int(c.unicodeScalars.first!.value)
    }

    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var res = [Int]()
        var hash = [Int](repeating: 0, count: 256)
        var s = Array(s), p = Array(p)

        for c in p {
            hash[getHash(c)] += 1
        }

        var left = 0 , right = 0 , count = p.count
        while right < s.count {
            if hash[getHash(s[right])] >= 1 {
                count -= 1
            }
            hash[getHash(s[right])] -= 1
            right += 1

            if count == 0 { res.append(left) }

            if right - left == p.count {
                if hash[getHash(s[left])] >= 0 {
                    count += 1
                }
                hash[getHash(s[left])] += 1
                left += 1
            }
        }
        return res
    }
}


let s2 = Solution2()
let result2 = s2.findAnagrams("cbaebabacd", "abc")




