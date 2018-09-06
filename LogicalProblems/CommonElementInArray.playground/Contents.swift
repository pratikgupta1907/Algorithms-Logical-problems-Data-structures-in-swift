//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var colorArray = ["black", "blue", "red", "green", "blue", "blue", "yellow", "black", "blue", "red", "green", "blue", "blue", "yellow", "black", "blue", "red", "green", "blue", "blue", "yellow", "black", "blue", "red", "green", "blue", "blue", "yellow", "black", "blue", "red", "green", "blue", "blue", "yellow"]

func getMostCommonColor(array: [String]) -> [String] {
    
    var topColors: [String] = []
    var colorDictionary: [String: Int] = [:]
    
    for color in array {
        if let count = colorDictionary[color] {
          colorDictionary[color] = count + 1
        } else {
            colorDictionary[color] = 1
        }
    }
    
    let highestValue = colorDictionary.values.max()
    
    for(color, _) in colorDictionary {
        if colorDictionary[color] == highestValue {
            topColors.append(color)
        }
    }
    
    return topColors
}

getMostCommonColor(array: colorArray)
















