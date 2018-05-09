//: Playground - noun: a place where people can play

import UIKit

let testArray = [2, 4, 5, 1, 3, 5, 4]

func firstDuplicatedElement(in array: [Int]) -> Int?
    {
    var existedInt = [Int]()
    var dupInt = [Int]()
    var dup: Int = 0
    var returnValue: Int?
    
    //this for loop is to find out whether that integer is a duplicated number or not
    for ex in testArray
        {
        if existedInt.contains(ex) == false
            {
            existedInt.append(ex)
            print(existedInt)
            }
        else
            {
            dupInt.append(ex)
            print(dupInt)
            }
        }
    
    //this while loop is to find out which is the first element in testArray to be the same as one of the duplicated numbers
    while returnValue == nil
        {
        if dupInt.contains(testArray[dup])
            {
            returnValue = testArray[dup]
            }
        else
            {
            dup += 1
            }
        }
    
    return returnValue
    }

if let duplicate = firstDuplicatedElement(in: testArray)
    {
    print(duplicate) // prints 4
    }
