//: Playground - noun: a place where people can play

import UIKit

func findDup(values: [Int]) -> [Int] {
    //turns array into set to rid the duplicates
    let uValue = Set<Int>(values)
    let remove = Array<Int>(uValue)
    var newVal = values
    //I attempted to find the duplicate values by comparing the two arrays
    //But I couldn't seem to figure out how  to remove a singular integer in an array
    //without removing other integers of the same value
    newVal = newVal.filter{!remove.contains($0)}
    return newVal
}

var test = [1,2,4,4,3,2]
findDup(test)
