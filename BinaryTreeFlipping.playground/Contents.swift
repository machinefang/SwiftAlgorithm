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

var newRoot : TreeNode?
func upsideDownBinaryTree(_ root: TreeNode?) -> TreeNode? {
    guard root != nil else {
        return nil
    }
    
    flipTree(root!)
    return newRoot
    
}

func flipTree(_ node: TreeNode){
    guard node.left != nil else{ // check node.left, so node can be the current one
       newRoot = node
        return
    }
    flipTree(node.left!)
    node.left!.left = node.right
    node.left!.right = node
    node.left = nil
    node.right = nil
}

