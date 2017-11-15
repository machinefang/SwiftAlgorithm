//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var strChar = str.map{String($0)}

var strArr = [""]
strArr.append("hello")
strArr

//Given an array of n distinct non-empty strings, you need to generate minimal possible abbreviations for every word following rules below.
//
//Begin with the first character and then the number of characters abbreviated, which followed by the last character.
//If there are any conflict, that is more than one words share the same abbreviation, a longer prefix is used instead of only the first character until making the map from word to abbreviation become unique. In other words, a final abbreviation cannot map to more than one original words.
//If the abbreviation doesn't make the word shorter, then keep it as original.
//Notice
//
//Both n and the length of each word will not exceed 400.
//The length of each word is greater than 1.
//The words consist of lowercase English letters only.
//The return answers should be in the same order as the original array.
//
//
//Example
//Given dict = ["like", "god", "internal", "me", "internet", "interval", "intension", "face", "intrusion"]
//return ["l2e","god","internal","me","i6t","interval","inte4n","f2e","intr4n"]


func wordsAbbreviation(arr: [String]) -> [String] {

    var returnArr  = [String](repeating: "", count: arr.count)
    if arr.count == 0 {return returnArr}



    var dict:[String : Int] = ["" : 0]//abbre will be key, arr element will be value

    for i in 0 ..< arr.count {
        var charArr = arr[i].map{String($0)}
        if charArr.count > 3 {
            let newString = charArr[0] + String(charArr.count - 2) + charArr.last!
            if dict[newString] == nil {
                returnArr[i] = newString
                dict[newString] = i
            }else{
                let abbreString = abbreviateWordHelper(exsit: arr[dict[newString]!], t: arr[i])
                returnArr[i] = abbreString
                dict[abbreString] = i

                let updateAbbre = abbreviateWordHelper(exsit: arr[dict[abbreString]!], t: arr[dict[newString]!])

                dict[updateAbbre] = dict[newString]!
                returnArr[dict[newString]!] = updateAbbre
            }

        }else {
            returnArr[i] = arr[i]

        }
    }
    return returnArr

}


func abbreviateWordHelper(exsit: String, t: String) -> String{
    var tChar = t.map{String($0)}
    var exsitChar = exsit.map{String($0)}

    var i = 0
    while(i < tChar.count && tChar[i] == exsitChar[i]){
        i += 1
    }
    if i >= tChar.count - 3 {
        return t
    }

    //get substring
    let index = t.index(t.startIndex, offsetBy: i + 1)
    let subString = t.substring(to: index)

    return subString + String(tChar.count - i - 2) + tChar.last!
}

let result = wordsAbbreviation(arr: ["like", "god", "internal", "me", "internet", "interval", "intension", "face", "intrusion"])
print(result)














