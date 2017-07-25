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


let tn = TreeNode(3)
tn.left
tn.right
tn.val

class Solution {
    var result : [String] = []
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let rootNode = root else {
            return []
        }

        searchPath(rootNode , "\(root!.val)")
        return result

    }
    func searchPath(_ rootNode: TreeNode,  _ path: String) {
        //var resultNew = result
        if rootNode.left == nil && rootNode.right == nil {
            result.append(path)
            //resultNew.append(path)
           // result = resultNew
        }
        if rootNode.left != nil {
            var updatepath = path + "->" + "\(rootNode.left!.val)"
            searchPath(rootNode.left!, updatepath)
        }

        if rootNode.right != nil {
            var updatepath = path + "->" + "\(rootNode.right!.val)"
            searchPath(rootNode.right!, updatepath)
        }
    }
    
}
