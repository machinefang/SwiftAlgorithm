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
    var sum: [Int] = [] // array store sum of element s[i] = s[i-1] + next 前缀和 数组；sum[0] = 0 -> 创造一个dummy init
    var id : Int

    init (range: Int) {
        self.range = range
        sum = Array(repeating: 0, count: 1000000)
        id = 0
    }

    func next(s: Int) -> Double {

        id += 1 // **
        sum[id] = sum[id - 1] + s

        if (id - range > 0){
            return Double((sum[id] - sum[id - range])/range) // return type should be the same

        }else {
           return Double(sum[id]/range)
        }

    }
}

var m = MovingAverage(range: 3)
m.next(s: 3)
m.next(s: 5)
m.next(s: 10)
m.next(s: 0)
m.next(s: 11)


// 改进：如何节省空间？ 因为sum = Array(repeating: 0, count: 1000000)占有很大空间

//方法： 数组滚动： 将最新计算出来的sum值放入已不会再使用的位置上。

class MovingAverageII {
    let range : Int
    var currentIndex = 0
    var arr : [Int] = []
    var sum: [Int] = [] // array store sum of element s[i] = s[i-1] + next 前缀和 数组；sum[0] = 0 -> 创造一个dummy init
    var id : Int

    init (range: Int) {
        self.range = range
        sum = Array(repeating: 0, count: range+1)
        id = 0
    }

    func mod(_ x : Int) -> Int{
       return x % (range + 1)

    }


    func next(s: Int) -> Double {

        id += 1 // **
        sum[mod(id)] = sum[mod(id - 1)] + s

        if (id - range > 0){
            return Double((sum[mod(id)] - sum[mod(id - range)])/range) // return type should be the same

        }else {
            return Double(sum[mod(id)]/range)
        }

    }
}


