//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


public class TreeNode{ // if switch to struct, it will be recersive/ infinate
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ value: Int) {
        self.val = value
    }
}

func inorderSuccessor(_ root: TreeNode?, _ node: TreeNode?) -> TreeNode? {
    
    guard let r = root, let n = node else {
        return nil
    }
    
    if r.val <= n.val {
       return inorderSuccessor(r.right, n)
    }else {
        let left = inorderSuccessor(r.left, n)
        return left == nil ? left : r
        
    }
    
}

var treeNode = TreeNode(20)
var treeNode2 = TreeNode(8)
var treeNode3 = TreeNode(22)
var treeNode4 = TreeNode(10)
var treeNode5 = TreeNode(12)
var treeNode6 = TreeNode(14)

treeNode.left = treeNode2
treeNode.right = treeNode3
treeNode3.left = nil
treeNode3.right = nil



treeNode2.left = nil
treeNode2.right = treeNode4


treeNode4.left = nil
treeNode4.right = treeNode5
treeNode5.left = nil
treeNode5.right = nil


var node = inorderSuccessor(treeNode, treeNode4)











