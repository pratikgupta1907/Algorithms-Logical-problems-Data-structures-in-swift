//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// convert integer to binary
let number = 145
let binaryNUmber = String(number, radix: 2)

var gapValueAssign = 0
var tempZeros = 0

// loop through the binary
for i in binaryNUmber {
    if i == "0" {
        tempZeros += 1
    }
    
    if i == "1" {
        if tempZeros > gapValueAssign {
            gapValueAssign = tempZeros
    }
        tempZeros = 0
    }
}

gapValueAssign
