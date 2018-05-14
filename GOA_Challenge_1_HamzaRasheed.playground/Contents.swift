//: Playground - noun: a place where people can play

import UIKit


var array = [2, 4, 5, 1, 3, 5, 4]

func check(in array: [Int]) -> Int
{
  //one element in this array is compared to all other elements in the array, then the next element is compared to the others and so on
  var arrayCopy = array
  //countdown timer so the loop this timer controls only goes as many times as there are elements in the array. Named inner because it controls the inner while statment
  var counterInner = 0
  //used to change which element is being checked by arrayCopy[0]
  var index = 1
  //countdown timer so the loop this timer controls only goes as many times as there are elements in the array. Named outer because it controls the outer while statment
  var counterOuter = 0
  //the number moved to the beginning of the array that is checking other elements
  var movedNum = Int()
  //the value we are looking for with this function.
  var duplicated = Int()
  //used to reset the index and countdown timer of the inner while loop. Also used to shift the position of all elements one to the right. For example, if the array was [1, 2, 3, 4] before going through this loop, it would be [4, 1, 2, 3] after going through it once
  while counterOuter <= arrayCopy.count - 2
  {
    //used to compare the first element in the array to the next element (array[1]). If the elements are identical, it will return set a value to the variable duplicated and return it. If they are not, the countdown timer will go down by one (in other words, it will go up by one, approaching a limit) and increase the index by one in order to preform the same comparison to the next element (array[1 + 1]) and so on
    while counterInner <= arrayCopy.count - 2
    {
      //if these elements are identical, then the value will be returned and the function will end
      if arrayCopy[0] == arrayCopy[index]
      {
        duplicated = arrayCopy[0]
        return duplicated
        //if the elements are not identical, this code will run
      } else {
        counterInner += 1
        index += 1
      }
    }
    
    index = 1
    counterInner = 0
    //this is the element at the last position in the array
    movedNum = arrayCopy[arrayCopy.count - 1]
    //removes the element at the last position in the array
    arrayCopy.remove(at: arrayCopy.count - 1)
    //adds the previously removed element at the first position (array[0]) in the array
    arrayCopy.insert(movedNum, at: 0)
    
    counterOuter += 1
  }
  
  
  return duplicated
}
//prints the result when the function (check) is applied an array (array)
print(check(in: array)) // prints 4
