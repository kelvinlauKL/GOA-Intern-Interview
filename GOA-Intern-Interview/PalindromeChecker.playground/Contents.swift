//: Playground - noun: a place where people can play

import UIKit

var word  = ""

var word2 = String(word.characters.reversed())

if word != "" {
        if word2 == word{
            print("This is a palindrome")
        }else{
            print("This isn't a palindrome")
    }
}else{
    print("Please insert a word")
}
