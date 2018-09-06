//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func fiboSteps(numSteps: UInt) -> [Int] {
    var sequence = [0, 1]
    if numSteps == 0 || numSteps == 1 {
        return sequence
    }
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence[sequence.count - 1]
        
        sequence.append(first + second)
    }
    
    return sequence
}

//fiboSteps(numSteps: 5)

// rescursive cases

func fiboRecursion(numSteps: Int, first: Int, Second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    return [first + Second] + fiboRecursion(numSteps: numSteps - 1, first: Second, Second: first + Second)
}

[0, 1] + fiboRecursion(numSteps: 5, first: 0, Second: 1)


