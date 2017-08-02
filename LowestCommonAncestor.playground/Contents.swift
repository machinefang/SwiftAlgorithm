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



public class Solution{

    public func lowestCommonAncestor(){


    }
}


//public TreeNode lowestCommonAncestor(TreeNode root, TreeNode node1, TreeNode node2) {
//    if (root == null || root == node1 || root == node2) {
//        return root;
//    }
//
//    // Divide
//    TreeNode left = lowestCommonAncestor(root.left, node1, node2);
//    TreeNode right = lowestCommonAncestor(root.right, node1, node2);
//
//    // Conquer
//    if (left != null && right != null) {
//        return root;
//    }
//    if (left != null) {
//        return left;
//    }
//    if (right != null) {
//        return right;
//    }
//    return null;
//}
//}
