//: Playground - noun: a place where people can play

import UIKit

func isPalindrome(_ word: String) -> Bool {
    let originalWord = word
    let reversedWord = String(word.characters.reversed())
    
    if originalWord == reversedWord {
        print("\(originalWord) is a Palindrome")
    }else{
        print("\(originalWord) is not a Palindrome")
    }
    return true
}

isPalindrome("asdfdsa")
isPalindrome("hello")

let testArray = [2, 4, 5, 1, 3, 5, 4]

func firstDuplicatedElement(in array: [Int]) -> Int? {
    for firstValue in stride(from: 0, to: testArray.count, by: 1){
            for secondValue in stride(from: firstValue + 1, to: testArray.count, by: 1) {
                if testArray[firstValue] == testArray[secondValue] {
                    return testArray[firstValue]
                }
            }
        return nil
    }
}

if let duplicate = firstDuplicatedElement(in: testArray) {
    print(duplicate) // prints 4
}
