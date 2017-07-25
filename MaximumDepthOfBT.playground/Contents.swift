//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

max(5, 6)
max(0, 0)




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

//divide and conquer
class Solution1 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let rootNode = root else {
            return 0
        }

        var left = maxDepth(rootNode.left!)
        var right = maxDepth(rootNode.right!)
        return max(left, right) + 1

    }
}

// traverse

class Solution2 {

    var result : Int = 0
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let rootNode = root else {
            return 0
        }
        traverse(rootNode: rootNode, counter: 1)
        return result

    }

    func traverse(rootNode : TreeNode?, counter : Int){
        if rootNode == nil {
            result = max(result, counter)

        }

        traverse(rootNode: rootNode!.left!, counter: counter + 1)
        traverse(rootNode: rootNode!.right!, counter: counter + 1)

    }
}
