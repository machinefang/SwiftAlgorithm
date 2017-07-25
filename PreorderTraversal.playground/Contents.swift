//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public class TreeNode {
    var val: Int
    var left : TreeNode?
    var right : TreeNode?
    public init(_ val: Int) {
        self.val = val

    }

}

//traverse
public class Solution1 {
    var result : [Int] = []
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let rootNode = root else {
            return result
        }
        traverse(rootNode)
        return result

    }
    func traverse(_ root: TreeNode?){
        if root == nil {
            return
        }
        result.append(root!.val)
        traverse(root!.left)
        traverse(root!.right)

    }
}


//divide & conquer

public class Solution2 {
    var result : [Int] = []
    func preorderTraversal(_ root: TreeNode?) ->[Int] {
        guard let rootNode = root else {
            return result
        }

        result.append(rootNode.val)


        //Divide
        var left = preorderTraversal(rootNode.left)
        var right = preorderTraversal(rootNode.right)

        //conquer


        return result


    }
}


