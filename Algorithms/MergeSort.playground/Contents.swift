//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Split Arrays
func mergeSort(array: [Int]) -> [Int] {

    guard array.count > 1 else {
        return array
    }
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))

}

//Merge Arrays

func merge(left: [Int], right: [Int]) -> [Int] {
    var mergeArray: [Int] = []
    var left = left
    var right = right

    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergeArray.append(left.removeFirst())
        } else {
            mergeArray.append(right.removeFirst())
        }
    }
    
    return mergeArray + left + right
}

var numbers: [Int] = []

for _ in 0..<10 {
    let randomInt = Int(arc4random_uniform(UInt32(100)))
    numbers.append(randomInt)
}

print([74, 4, 60, 53, 25, 31, 21, 13, 72, 62])
print()
print(mergeSort(array: [74, 4, 60, 53]))

