//: Playground - noun: a place where people can play

import UIKit

func isPalindrome(_ word: String) -> Bool
    {
    let wordCount = word.characters.count
    var wordArray = [String]()
    var step2Stopper: Bool = false
    var step2Counter = 0
    //make the word entered into an array
    for x in word.characters
        {
            wordArray.append(String(x))
        }
    //search each word to see if they are the same
    while step2Stopper == false && step2Counter < wordCount/2
        {
            switch wordArray[step2Counter] == wordArray[wordCount - 1 - step2Counter]
            {
            case true:
                print("\(wordArray[step2Counter])" + "\(step2Counter)" + "\(wordCount)")
                step2Counter += 1
            case false:
                step2Stopper = true
            }
        }
    if step2Stopper == true
        {
            return false
        }
    else
        {
            return true
        }
    }

isPalindrome("asdsa")