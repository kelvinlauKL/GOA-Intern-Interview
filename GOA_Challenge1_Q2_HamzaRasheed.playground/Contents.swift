//: Playground - noun: a place where people can play

import UIKit

let word = "bob"
//Revereses the order of a word, compares it to the originally and returns a value of true or false if the two words are identical or not, respectivly
func isPalindrome(_ word: String) -> Bool {
    
    let wordForward = word
    let wordBackward = String(word.characters.reversed())
    //let wordBackward = String(word.characters.reversed())
    //if the original word is not the same as the same word with it's characters inverted, it will return false.
    if (wordForward != wordBackward) {
       
        return false
      
    }
    
    return true
    
}
//prints whether the word is identical with the order of it's characters reversed

print(isPalindrome("aba")) // prints true
print(isPalindrome("amanaplanacanalpanama")) // prints true
print(isPalindrome("log")) // prints false
print(isPalindrome("fall")) // prints false
