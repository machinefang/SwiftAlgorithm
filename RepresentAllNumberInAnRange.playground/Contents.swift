//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*Given an array A and a Number n, how many number need to be added in the array so that all element in array can represent all number in range [1,n]
 
 example1: A = [1,3], n = 6, so the answer is it needs 1 element added which is [2]
 example2: A = [1,5,10], n = 20, so the answer is it needs (2) elements added which is [2, 4]
 */


//简化版，若array is nil

func representRange(n: Int) -> [Int] {
    if n <= 0 {return [0]}

    var array : [Int] = []
    array.append(1)

    while(array.reduce(0, +) <= n) {
        var currentSum = array.reduce(0, +)
        array.append(currentSum + 1)
    }

    return array

}

let result1 = representRange(n: 5)
let result2 = representRange(n: 20)
let result3 = representRange(n: 2)
let result4 = representRange(n: 0)

//
//func representRange(array: [Int], n: Int) -> Int {
//    /*
//     1. if array == nil, greedy algorithm
//     2. if array != nil, array[0] == 1,
//     
//     
//     */
//
//}













