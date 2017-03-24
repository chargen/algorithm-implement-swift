//: Playground - noun: a place where people can play

import UIKit

public func insertionSort(_ array:[Int]) -> [Int] {
    var sorted = array
    var positionToFill:Int = 0
    var valueToFill:Int = 0
    
    for i in (1..<sorted.count) {
        positionToFill = i
        valueToFill = sorted[i]
        
        while (positionToFill > 0 && valueToFill < sorted[positionToFill-1]) {
            sorted[positionToFill] = sorted[positionToFill - 1]
            positionToFill = positionToFill - 1
        }
        
        sorted[positionToFill] = valueToFill
    }
    
    return sorted
}


var arr = [1, 3, 2, 45, 432, 32, 34, 67]
var sorted = insertionSort(arr)