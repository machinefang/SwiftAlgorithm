//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




//Sliding window average from data stream

//给出一串整数流和窗口大小，计算滑动窗口中所有整数的平均值。
//
//样例
//MovingAverage m = new MovingAverage(3);
//m.next(1) = 1 // 返回 1.00000
//m.next(10) = (1 + 10) / 2 // 返回 5.50000
//m.next(3) = (1 + 10 + 3) / 3 // 返回 4.66667
//m.next(5) = (10 + 3 + 5) / 3 // 返回 6.00000

class MovingAverage {
    let range : Int
    var currentIndex = 0
    var arr : [Int] = []

    init (range: Int) {
        self.range = range
    }

    func next(s: Int) -> Double {

        if arr.count == 0 {
            arr = [s]
        }else {
            arr.append(s)
            currentIndex += 1
        }

            var index = currentIndex
        print(index)
            var nominator = 0

        if currentIndex <= 2 {
            var i = currentIndex
            while(i >= 0){
                nominator += arr[index]
                index -= 1
                i -= 1
            }
            return Double(nominator / (currentIndex + 1))
        }else {
            var i = 3
            while(i > 0){
                nominator += arr[index]
                index -= 1
                i -= 1
            }
            return Double(nominator / range)

        }

    }
}

var m = MovingAverage(range: 3)
m.next(s: 3)
m.next(s: 5)
m.next(s: 10)
m.next(s: 0)
m.next(s: 11)




