//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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


/*Find the maximum sum leaf to root path in a Binary Tree*/

//简化版
// 从root出发的最大值路径

func maxValuePathFromRoot(_ root: TreeNode?) -> Int{
    if root == nil {return 0}

    let left = maxValuePath(root!.left)
    let right = maxValuePath(root!.right)

    return max(left + root!.val, right + root!.val)

}

//Maximum Path Sum in a Binary Tree
//Given a binary tree, find the maximum path sum. The path may start and end at any node in the tree.

func maxValuePath(_ root: TreeNode?) -> Int {
    if root == nil {return 0}

    let left = maxValuePath(root!.left)
    let right = maxValuePath(root!.right)

    return max(max((left + right + root!.val), left), right)

}
