//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2d array in swift

var matrix : [[Int]] = Array(repeatElement(Array(repeatElement(0, count: 10)), count: 10))

print(matrix)
matrix[0][0] = 1
print(matrix)

//hashset in java = NSSet / NSMutableSet in swift
var s = NSMutableSet()
s.add("a")
s.add("b")
s.add("a")
s.add("b")
print("s: \(s)")

/* A Deque is a data structure comprised of two queues. This implementation has a front queue, which is reversed, and a back queue, which is not. Operations at either end of the Deque have the same complexity as operations on the end of either queue.
 */



struct Position{
    var x : Int
    var y : Int
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

}


public class SnakeGame {
    /*
     param width - screen width
     param height - screen height
     param food - a list of food positions
     */

    var gameOver: Bool = false
    var food: [[Int]] = []
    var foodGet : Int = 0
    var width : Int = 0
    var height: Int = 0
    var usedMap = NSMutableSet()
    //deque<Position> queue


    public func SnakeGame(width: Int, height: Int, food: [[Int]]){
    }

}
