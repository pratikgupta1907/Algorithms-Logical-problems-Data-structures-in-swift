//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}

var stackPerform = Stack(array: [1])
stackPerform.push(23)
stackPerform.push(34)
stackPerform.push(12)
stackPerform.array               // [1,23,34,12]
stackPerform.pop()                // 12
stackPerform.array                  // [1,23,34]
stackPerform.isEmpty                   // false
stackPerform.count                    // 3
stackPerform.top                       //34

//A stack is like an array but with limited functionality. You can only push to add a new element to the top of the stack, pop to remove the element from the top, and peek at the top element without popping it off.
//
//Why would you want to do this? Well, in many algorithms you want to add objects to a temporary list at some point and then pull them off this list again at a later time. Often the order in which you add and remove these objects matters.
//
//A stack gives you a LIFO or last-in first-out order. The element you pushed last is the first one to come off with the next pop. (A very similar data structure, the queue, is FIFO or first-in first-out.)
//
//For example, let's push a number on the stack:
//
//stack.push(10)
//The stack is now [ 10 ]. Push the next number:
//
//stack.push(3)
//The stack is now [ 10, 3 ]. Push one more number:
//
//stack.push(57)
//The stack is now [ 10, 3, 57 ]. Let's pop the top number off the stack:
//
//stack.pop()
//This returns 57, because that was the most recent number we pushed. The stack is [ 10, 3 ] again.
//
//stack.pop()
//This returns 3, and so on. If the stack is empty, popping returns nil or in some implementations it gives an error message ("stack underflow").



