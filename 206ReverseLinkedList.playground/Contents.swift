//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }

//iteratively

class Solution {
    var next : ListNode?
    var pre : ListNode?

    func reverseList(_ head: ListNode?) -> ListNode? {

        if head == nil {return nil}
        var p = head!

        while (p != nil) {
            next = p.next
            p.next = pre
            pre = p
            p = next!

        }
        return pre

    }
}

//recurssion

class Solution2 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {return nil}

        var next = head!.next
        head!.next = nil

        var result = reverseList(next)

        next!.next = head

        return result

    }

}
