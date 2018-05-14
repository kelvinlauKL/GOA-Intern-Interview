//: Playground - noun: a place where people can play

import UIKit

//DUPLICATE INTS

func firstDuplicatedElement(in array: [Int]) -> Int?
{
   let myArrayLength = array.count
    
    //The j loop goes through all the numbers once per time the i loop goes through a round. The function compares the number at the i position in the array with every value in the array as it passes through the j loop.
    //HOWEVER: NOTE THAT IT IS THE FIRST ORDINAL VALUE THAT IS THE FIRST DUPLICATE NOT THE FIRST NUMBER WHOSE DUPLICATE OCCURS IN SEQUENCE.
    var i : Int = 0
    while i < myArrayLength {
        //if j is set to = to i then in the if statement you must ensure to include a clause that states that i CANNOT equal j. with j = i+1 j will NEVER equal i. You cannot have the only clause being myArray[i] == myArray[j] if j does not equal i+1.
        var j : Int = i+1
        while j < myArrayLength {
            if (array[i] == array[j]) {
                return array[i]
            }
            j += 1
        }
        i += 1
    }
    //returns nil because it could not find any duplicates.
    return nil
}
//This is Test code
let testArray = [2, 4, 5, 1, 3, 5, 4]

let duplicate = firstDuplicatedElement(in: testArray)
if duplicate != nil{
    print("The first duplicate is \(duplicate) \n")
}

let testArray2 = [2, 4, 5, 1, 3, 6, 7]

let duplicate2 = firstDuplicatedElement(in: testArray2)
if duplicate2 != nil {
    print("The first duplicate is \(duplicate2) \n")
}
else {
    print("there is no duplicate.")
}
print("============================================================== \n")
//PALINDROME

func isPalindrome(_ word:String) -> Bool
{
    //Checks if the reversed characters are the same as the characters of the word
    if word == "" {
        return false
    }
    else if String(word.characters.reversed()) == String(word){
        return true
    }
    else {
        return false
    }
}

//This is test code to check that the case sensitive function works
let testValue1 = "bob"
let testValue2 = "Bob"
let testValue3 = "love"
let testValue4 = "Love"

if isPalindrome(testValue1){
    print("Using isPalindrome func \(testValue1) is a palindrome")
}
else {
    print("Using isPalindrome func \(testValue1) isn't a palindrome \n")
}

if isPalindrome(testValue3){
    print("Using isPalindrome func \(testValue3) is a palindrome ")
}
else {
    print("Using isPalindrome func \(testValue3) isn't a palindrome")
}

//This is the palindrome with mixed case. It does not register as a palindrome because of the mixed case. See neext function for solution.
if isPalindrome(testValue2){
    print("Using isPalindrome func \(testValue2) is a palindrome")
}
else {
    print("Using isPalindrome func \(testValue2) isn't a palindrome\n")
}
print("============================================================== \n")

//Case insensitive palindrome checker. converts everything to lowercase in case the word has mixed case which may not match. eg: Bob != boB
func isPalindromeCaseInsensitive(_ word:String) -> Bool
{
    //Checks if the reversed characters are the same as the characters of the word
    if word == "" {
        return false
    }
    else {
        let lcWord = word.lowercased()
        if String(lcWord.characters.reversed()) == String(lcWord){
        return true
        }
        else {
            return false
        }
    }
}


// This is test code to check that the case insensitive function works.
if isPalindromeCaseInsensitive(testValue2){
    print("Using isPalindromeCaseInsensitive \(testValue2) is a palindrome")
}
else {
    print("Using isPalindromeCaseInsensitive \(testValue2) isn't a palindrome")
}

if isPalindromeCaseInsensitive(testValue1){
    print("Using isPalindromeCaseInsensitive \(testValue1) is a palindrome")
}
else {
    print("Using isPalindromeCaseInsensitive \(testValue1) isn't a palindrome")
}

if isPalindromeCaseInsensitive(testValue4){
    print("Using isPalindromeCaseInsensitive \(testValue4) is a palindrome")
}
else {
    print("Using isPalindromeCaseInsensitive \(testValue4) isn't a palindrome")
}




