//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Solution {
    func uniqueWordAbbreviation(_ s: [String], _ word: String) -> Bool {
        var dict = [String : Int]()
        var abbreDict = [String: Int]()
        
        for item in s {
            if let _ = dict[item] {
                dict[item]! += 1
            }else{
                dict[item] = 1
            }
            
            let abbreItem = getAbbreviateWord(item)
            if let _ = abbreDict[abbreItem] {
                abbreDict[abbreItem]! += 1
            }else {
                abbreDict[abbreItem] = 1
            }
        }
        
        return dict[word] == abbreDict[getAbbreviateWord(word)]
        
    }
    
    func getAbbreviateWord(_ word: String) -> String {
        let charArr = word.map{String($0)}
        guard charArr.count > 3 else {
            return word
        }
        return charArr[0] + "\(charArr.count - 2)" + charArr[charArr.count - 1]
    }
}


