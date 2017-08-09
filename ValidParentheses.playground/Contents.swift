//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
1 % 2
2 % 2
0 % 2


//func isValid(_ s: String) -> Bool {
//    var charArr = s.characters.map{String($0)}
//
//    var i = 0
//
//    guard charArr.count % 2 == 0 else {
//        return false
//    }
//
//    while(i < charArr.count) {
//        if i % 2 == 0 && (charArr[i] == "(" || charArr[i] == "{" || charArr[i] == "[") && charArr[i+1] == findParter(charArr[i]) {
//            i += 2
//        }
//
//        if (i == charArr.count) {return true}
//
//    }
//
//    return false
//
//}
//
//func findParter(_ charString : String) -> String{
//
//    switch charString {
//    case "(":
//        return ")"
//    case "{":
//        return "}"
//    case "[":
//        return "]"
//    default:
//        return ""
//    }
//}
//
//isValid("(){}[]")
//isValid("(){}[")
//isValid("()")
//
//
//let sample = "http:/asdlfkasdflkjas/url=?"
//sample.hasPrefix("http:/asdlfkasdflkjas")

struct Stack<T> {
    fileprivate var array: [T] = []

    mutating func push(_ element: T) {
        array.append(element)
    }

    mutating func pop() -> T? {
        return array.popLast()
    }

    func peek() -> T? {
        return array.last
    }

    func isEmpty() -> Bool {
        return array.count == 0
    }
}


func isValid(_ s: String) -> Bool{
    var stack = Stack<String>()
    var charArr = s.characters.map{String($0)}

    for i in 0 ..< charArr.count { //? if in sequence
        if "([{".contains(charArr[i]) {
            stack.push(charArr[i])
        }else {
            guard !stack.isEmpty() else {
                return false
            }

            if isParter(stack.peek()!, charArr[i]) {
                stack.pop()!
            }
            else {return false}

        }
    }

    return stack.isEmpty()


}

func isParter(_ c1 : String, _ c2 : String) -> Bool {
    return ((c1 == "(" && c2 == ")") || (c1 == "[" && c2 == "]") || (c1 == "{" && c2 == "}"))

}


isParter("(", "]")


isValid("(])")













