//: Playground - noun: a place where people can play

import UIKit

let testArray = [2, 4, 5, 1, 3, 5, 4]

var result: Int? //creating an optional Int so that any number can work in the array (if we used 0 as default value and 0 was the first duplicate, we would have no way of knowing if there is or isn't a duplicate)

func firstDuplicatedElement(in array: [Int]) -> Int? {
    for i in 0..<testArray.count - 2 { //for loop to define the element in the array we are comparing against. We only need to go up to testArray.count - 2 since the previous loop with the second last element already checks if the last element in the array is a duplicate
        for n in i+1..<testArray.count{ //for loop to compare every element after the previous one for duplicates
            if(testArray[i] == testArray[n]){ //if element i == element n, we have a duplicate
                result = testArray[n]; //define result as the duplicated element so we can return it later
                //print("Success")
                /* compares the two values (should be same) */
                //print(testArray[i], testArray[n])
                return result //return the duplicated element
            }else{ //if element i != element n (not a duplicate)
                /* just to see the values of i an n */
                //print("i is: \(testArray[i])")
                //print("n is: \(testArray[n])")
            }
        }
        //print("\n")
    }
    
    return result //by default, result is nil so this will return nil
}

let duplicate = firstDuplicatedElement(in: testArray)

if duplicate != nil { //if there is a duplicate (the return value of the func is not nil)
    print("The first duplicate in the array is \(duplicate!)")
} else { //if duplicate == nil (the array has no duplicates)
    print("The array has no duplicates")
}
