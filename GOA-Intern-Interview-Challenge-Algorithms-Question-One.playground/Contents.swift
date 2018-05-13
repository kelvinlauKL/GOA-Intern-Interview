//GOA Intern Interview Challenge: Algorithms Question One
//Task: Create a function that accepts an array of integers and returns the first duplicate value.

//Program created by Brad Peng in May 2018

//Copyright © 2018 BradPeng. All rights reserved.

import UIKit

let array = [2, 4, 5, 1, 3, 5, 4]
let noRepeatArray = [1, 2, 3, 4]

func firstDuplicatedInt(in array: [Int]) -> Int!
{
    var repeatedNumber = Int() //Store value of the repeated number, if any exists
    
    for firstNum in 0...array.count - 2 //range of this for loop is used as the index for finding the initial number that will be compared agaisnt. Is "array.count - 2" because arrays start counting at index 0 and we don't need to compare the last value with itself
    {
        for comparedNum in firstNum + 1...array.count - 1 //find the number that the first number from the previous for loop will be compared agaisnt. Is "firstNum + 1" because we don't need to check the first number with itself.
        {
            if array[firstNum] == array[comparedNum]
            {
                repeatedNumber = array[comparedNum]
                return repeatedNumber //function ends when value is returned
            }
        }
    }
    
    return nil //return nil if no duplicated number is found
}

print(firstDuplicatedInt(in: array)) //prints 4
print(firstDuplicatedInt(in: noRepeatArray)) //prints nil
