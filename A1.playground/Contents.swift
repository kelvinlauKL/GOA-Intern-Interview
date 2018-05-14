//: Playground - noun: a place where people can play

import UIKit


/*
 func firstDuplicatedElement(in array: [Int]) -> Int? {
 for firstNumber in array.count {
 for secondNumber in stride(from: firstNumber + 1, to: array.count, by: 1) {
 if array(firstNumber) == array(secondNumber) {
 return firstNumber
 }
 }
 }
 return -1
 }
 */
func firstDuplicatedElement(in array: [Int]) -> Int? {
    
    for firstNumber in stride(from: 0, to: array.count, by: 1)  {
        
        for secondNumber in stride(from: firstNumber + 1, to: array.count, by: 1) {
            
            if array[firstNumber] == array[secondNumber] {
                
                return array[firstNumber]
            }
        }
        
    }
    return nil
}

let testArray = [2, 4, 5, 1, 2]

if let duplicate = firstDuplicatedElement(in: testArray) {
    print(duplicate)
}
 