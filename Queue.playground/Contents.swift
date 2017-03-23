//: Playground - noun: a place where people can play

import UIKit

public struct Queue<T> {
    fileprivate var array:[T] = []
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T {
        return array.removeFirst()
    }
    
    public func peek() -> T {
        return array.first!
    }
    
    public func isEmpty() -> Bool {
        return array.isEmpty
    }
}

var q:Queue<String> = Queue()

q.enqueue("a")
print(q)
q.enqueue("b")
print(q)
q.enqueue("c")
print(q)
q.enqueue("d")
print(q)

q.dequeue()
q.peek()
q.isEmpty()