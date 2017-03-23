//: Playground - noun: a place where people can play

import UIKit

public struct Stack<T> {
    fileprivate var array:[T] = []
    
    public func size() -> Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public func peek() -> T {
        return array.last!
    }
    
    public mutating func pop() -> T {
        return array.removeLast()
    }
}

var sampleStack:Stack<String> = Stack()
sampleStack.push("a")
sampleStack.push("b")
sampleStack.push("c")
sampleStack.peek()
