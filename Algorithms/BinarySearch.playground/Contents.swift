//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numbers = [1, 4, 6, 9, 10, 12, 18, 19, 23, 34, 30, 44, 46, 70, 56, 66, 78, 4, 69, 98, 789]
func binarySearch(array: [Int], key : Int) -> Bool{
    
    if array.count == 0 {
        return false
    }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midvalue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in the array")
        return false
    }
    if key > midvalue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    if key < midvalue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    if key == midvalue {
        print("\(key) found in the array")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 70)
