//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for number in 1...100 {
    if number % 15 == 0 {
        print("\(number) FIZZ-BUZZ")
    } else if number % 5 == 0 {
        print("\(number) BUZZ")
    } else if number % 3 == 0 {
        print("\(number) FIZZ")
    } else {
        print(number)
    }
}
