//GOA Intern Interview Challenge: Algorithms Question Two
//Task: Create a function that checks if a string is a palindrome.

//Program created by Brad Peng in May 2018

//Copyright © 2018 BradPeng. All rights reserved.


import UIKit

func isPalindrome(word: String, isCaseSensitive: Bool, ignoreSpaces: Bool) -> Bool //takes in string, and wether or not to consider letter cases and/or spaces
 {
    var inputWord = word

    if isCaseSensitive == false //if the input string should NOT condsider cases.
    {
        inputWord = inputWord.lowercased() //change the word to all lower-case first to prevent case issues
    }

    if ignoreSpaces == true //if the input string should ignore spaces
    {
        inputWord = inputWord.replacingOccurrences(of: " ", with: "") //remove any spaces from the string
    }

    let wordArray = Array(inputWord.characters) //seperate the word into characters and store it in an array=

    if wordArray == wordArray.reversed() //check if the array is same both ways
    {
        return true
    } else
    {
        return false
    }
 }

//shows isPalindrome function words for many cases
print(isPalindrome(word: "Hello", isCaseSensitive: true, ignoreSpaces: false)) //returns false

print(isPalindrome(word: "racEcaR", isCaseSensitive: false, ignoreSpaces: false)) //returns true
print(isPalindrome(word: "racEcaR", isCaseSensitive: true, ignoreSpaces: false)) //returns false
print(isPalindrome(word: "RacEcaR", isCaseSensitive: true, ignoreSpaces: false)) //returns true

print(isPalindrome(word: "racecar ", isCaseSensitive: false, ignoreSpaces: true)) //returns true
print(isPalindrome(word: "racecar ", isCaseSensitive: false, ignoreSpaces: false)) //returns false
print(isPalindrome(word: " rac e car ", isCaseSensitive: false, ignoreSpaces: false)) //returns true


