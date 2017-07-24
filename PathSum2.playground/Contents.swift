//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let someArray = [2, 2, 8, 4, 3, 5]
var resultant = someArray.reduce(0, +)
resultant



public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Solution {
    var result : [[Int]] = []
    var goal : Int = 0
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        goal = sum
        if root == nil {
            return []
        }

     findPath(root: root!, path: [root!.val])
     return result

    }

    func findPath(root: TreeNode, path : [Int]) {
        if root.left == nil && root.right == nil {//this node is a leaf
            if path.reduce(0, +) == goal {
                result.append(path)
            }
        }

        if root.left != nil {
            var updatePath = path
            updatePath.append(root.left!.val)
            findPath(root: root.left!, path: updatePath)

        }
        if root.right != nil {
            var updatePath = path
            updatePath.append(root.right!.val)
            findPath(root: root.right!, path: updatePath)
        }

    }
}

