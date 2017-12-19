//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Identify Celebrity
//http://www.lintcode.com/zh-cn/problem/identify-celebrity/
//http://www.jiuzhang.com/solutions/identify-celebrity/


//假设你和 n 个人在一个聚会中(标记为 0 到 n - 1)，其中可能存在一个名人。名人的定义是所有其他 n - 1 人都认识他/她，但他/她不知道任何一个。
//现在你想要找出这个名人是谁或者验证这个名人不存在。你唯一可以做的事情就是提出如下问题：“你好，A，你认识B吗？” 来获取A是否认识B。您需要通过询问尽可能少的问题(以渐近的意义)来找出名人是谁(或验证其不存在)。
//你得到一个辅助函数 bool know(a，b)，它会告诉你A是否知道B.实现一个函数 int findCelebrity(n)，你的函数应该使 knows 的调用次数最少。
//
//注意事项
//
//如果在这个聚会中有名人， 那么有且只有一个。如果有名人在聚会中则返回名人的标签，如果没有名人，返回 -1。
//
//您在真实的面试中是否遇到过这个题？ Yes
//样例
//给出 n = 2
//
//2// 接下来 n * (n - 1) 行
//0 认识 1
//1 不认识 0
//返回 1

func findCelebrity(n: Int) -> Int {
    var knownPeple = [Int]()
    for i in 0 ..< n-2 {
        if know(a: n-1, b: i) {
          knownPeple.append(i)
        }
    }


}


func know(a: Int, b : Int) -> Bool {
    return false
}



