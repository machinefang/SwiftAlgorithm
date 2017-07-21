//public class Node<T> {
//  var value: T
//  var next: Node<T>?
//  weak var previous: Node<T>?
//
//  init(value: T) {
//    self.value = value
//  }
//}
//
//public class LinkedList<T> {
//  fileprivate var head: Node<T>?
//  private var tail: Node<T>?
//
//  public var isEmpty: Bool {
//    return head == nil
//  }
//
//  public var first: Node<T>? {
//    return head
//  }
//
//  public var last: Node<T>? {
//    return tail
//  }
//
//  public func append(value: T) {
//    let newNode = Node(value: value)
//    if let tailNode = tail {
//      newNode.previous = tailNode
//      tailNode.next = newNode
//    } else {
//      head = newNode
//    }
//    tail = newNode
//  }
//
//  public func nodeAt(index: Int) -> Node<T>? {
//    if index >= 0 {
//      var node = head
//      var i = index
//      while node != nil {
//        if i == 0 { return node }
//        i -= 1
//        node = node!.next
//      }
//    }
//    return nil
//  }
//
//  public func removeAll() {
//    head = nil
//    tail = nil
//  }
//
//  public func remove(node: Node<T>) -> T {
//    let prev = node.previous
//    let next = node.next
//
//    if let prev = prev {
//      prev.next = next
//    } else {
//      head = next
//    }
//    next?.previous = prev
//
//    if next == nil {
//      tail = prev
//    }
//
//    node.previous = nil
//    node.next = nil
//    
//    return node.value
//  }
//}
//
//extension LinkedList: CustomStringConvertible {
//  public var description: String {
//    var text = "["
//    var node = head
//
//    while node != nil {
//      text += "\(node!.value)"
//      node = node!.next
//      if node != nil { text += ", " }
//    }
//    return text + "]"
//  }
//}
//
//
//
//let dogBreeds = LinkedList<String>()
//dogBreeds.append(value: "Labrador")
//dogBreeds.append(value: "Bulldog")
//dogBreeds.append(value: "Beagle")
//dogBreeds.append(value: "Husky")
//print(dogBreeds)
//
//let numbers = LinkedList<Int>()
//numbers.append(value: 5)
//numbers.append(value: 10)
//numbers.append(value: 15)
//print(numbers)


public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
                 self.val = val
                     self.next = nil
             }
     }

var ln = ListNode.init(3)
ln = ListNode(5)
ln.next = ListNode(4)
ln.next!.val
ln.val

var ln2 = ListNode(7)
ln2.val
ln2.next = ListNode(6)
ln2.next!.val






func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let ln1 = l1 else {
        return nil
    }
    guard let ln2 = l2 else {
        return nil
    }

    var pointerln1 = ln1
    var pointerln2 = ln2
    var carrier : Int = 0
    var lnNew = ListNode(0)
    if pointerln1.val + pointerln2.val >= 10 {
        lnNew = ListNode((pointerln1.val + pointerln2.val) % 10)
        carrier = 1
    } else {
        lnNew = ListNode(pointerln1.val + pointerln2.val)
        carrier = 0
    }
        var pointerNew = lnNew

    while(pointerln1.next != nil && pointerln2.next != nil) {
        if (pointerln1.next!.val + pointerln2.next!.val + carrier) >= 10 {
            pointerNew.next = ListNode((pointerln1.next!.val + pointerln2.next!.val + carrier) % 10)
            carrier = 1
        }else {
            pointerNew.next = ListNode(pointerln1.next!.val + pointerln2.next!.val + carrier)
            carrier = 0
        }

        pointerln1 = pointerln1.next!
        pointerln2 = pointerln2.next!
        pointerNew = pointerNew.next!

    }

    if carrier == 1 {
        pointerNew.next = ListNode(1)
    }

    return lnNew

}

var lnnew = addTwoNumbers(ln, ln2)
lnnew?.val
lnnew?.next?.val
lnnew?.next?.next?.val







