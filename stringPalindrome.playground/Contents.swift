//: Playground - noun: a place where people can play

/*
 stringPalindrome
 
 Checks if a string is a palindrome
 This code allows the string to contain special characters and spaces in a non-palindromic way as they will be removed before checking if the string is a palindrome (ex. "Taco cat", "Madam, I'm Adam").
 
 created by Hod Kimhi
 May 8 2018
 
 modified by Hod Kimhi
 May 10 2018
 
*/

import UIKit

func isPalindrome(_ word: String) -> Bool {
    //define word as the input word, lowercased and without spaces or any special characters (only letters & numbers)
    var word = word.replacingOccurrences(of: "[^a-zA-Z0-9]", with: "", options: [.regularExpression]).lowercased()
    
    //define reverseWord as the reverse of the input word, lowercased and without spaces or special characters
    let reverseWord = String(word.characters.reversed())
    if reverseWord == word{ //check if reverseWord is the same as word
        return true //if it is, the string is a palindrome so we return true
    }else{
        return false //if they do not match, the string is not a palindrome so we return false
    }
}

if isPalindrome("Madam, I'm Adam"){
    print("The string is a palindrome")
}else{
    print("The string is not a palindrome")
}

isPalindrome("Madam, I'm Adam") //returns true