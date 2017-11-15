//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let i = "3"

i > "10"

CharacterSet.decimalDigits.contains("1")

//Given a non-empty string word and an abbreviation abbr, return whether the string matches with the given abbreviation.
//
//A string such as "word" contains only the following valid abbreviations:
//
//["word", "1ord", "w1rd", "wo1d", "wor1", "2rd", "w2d", "wo2", "1o1d", "1or1", "w1r1", "1o2", "2r1", "3d", "w3", "4"]
//Notice
//
//Notice that only the above abbreviations are valid abbreviations of the string word. Any other string is not a valid abbreviation of word.
//
//
//Example
//Example 1:
//
//Given s = "internationalization", abbr = "i12iz4n":
//Return true.
//Example 2:
//
//Given s = "apple", abbr = "a2e":
//Return false.

func validWordAbbreviation(s: String, abbr: String) -> Bool {

    var i = 0
    var j = 0
    let sChar = s.map{String($0)}
    let abbrChar = abbr.map{String($0)}

    while(i < sChar.count && j < abbrChar.count) {
        if(sChar[i] == abbrChar[j]) {
            i += 1
            j += 1
        }else if(abbrChar[j] > "0" && abbrChar[j] <= "9"){//If you care only for the (ASCII) digits "0" ... "9"
            var abbrNum = 0
            while (abbrChar[j] > "0" && abbrChar[j] <= "9" ) {
                abbrNum = abbrNum * 10 + Int(abbrChar[j])!
                j += 1
            }
            i += abbrNum

            if(sChar[i] == abbrChar[j]) {
                return true

            } else {
                return false

            }

        }else {return false}

    }

    return (i == sChar.count && j == abbrChar.count)

}





