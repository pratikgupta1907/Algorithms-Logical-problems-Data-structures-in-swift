//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



let numbers1 = [1, 3, 6, 7, 7, 12, 14]

//: 1 - bruteforce nested for loop compare all (n2)
func bruteForceTwoSum(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
        for j in i..<array.count where j != i {
            if array[j] + array[i] == sum {
                print("true: \(array[i]) + \(array[j])")
                return true
            } else {
                print("false: \(array[i]) + \(array[j])")
            }
        }
    }
    
    return false
}

//bruteForceTwoSum(array: numbers1, sum: 23)


let numbers2 = [1, 3, 6, 7, 7, 12, 14]
//: 2 - Binary search for compliment (because it's sorted) - n log n

func twoSumBinarySearch(array: [Int], sum: Int) -> Bool {
    
    if array.count == 0 {
        return false
    }
    
    for i in 0..<array.count {
        let compliment = sum - array[i]
        
        var tempArray = array
        tempArray.remove(at: 1)
        
    }
    
    return false
}

twoSumBinarySearch(array: numbers2, sum: 10)














