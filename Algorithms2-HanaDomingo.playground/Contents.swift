//: Playground - noun: a place where people can play

import UIKit

func isPalindrome(_ word: String) -> Bool {
    var reverse = ""
    let lowerWord = word.lowercaseString
    //this loop reverses the string
    for character in lowerWord.characters {
        let ch = "\(character)"
        reverse = ch + reverse
    }
    //check if the reversed string is the same as the original string
    return(lowerWord==reverse)
}


isPalindrome("qwertyuiopasdfghjklzxcvbnmnbvcxzlkjhgfdsapoiuytrewq")
isPalindrome("Bob")
