//: Playground - noun: a place where people can play

import UIKit

public func binarySearch(_ array:[Int],_ key:Int) -> Bool {
    var upperBound:Int = array.count - 1
    var lowerBound:Int = 0
    var midIndex:Int = 0
    
    while(true) {
        if upperBound < lowerBound {
            return false
        }
        
        midIndex = lowerBound + (upperBound - lowerBound)/2
        if (array[midIndex] > key) {
            upperBound = midIndex - 1
        } else if (array[midIndex] < key) {
            lowerBound = midIndex + 1
        } else {
            return true
        }
    }
}

let array:[Int] = [10, 13, 123, 255, 434]
binarySearch(array, 123)
