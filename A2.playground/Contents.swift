//: Playground - noun: a place where people can play

import UIKit

func isPalindrome(_ word: String) -> Bool {
    
    if !word.isEmpty {
        if word == String(word.characters.reversed()) {
            return true
        }
    }
    return false
}

//test program
var testString: String = "12321"

print(isPalindrome(testString))
