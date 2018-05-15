//
//  isPalindrome.swift
//  Algorithms
//
//  Created by Raymond Liu on 5/14/18.
//  Copyright © 2018 Raymond Liu. All rights reserved.
//

import Foundation

func isPalindrome(_ word: String) -> Bool {
    let wordArray = Array(word.characters)
    for i in 0..<wordArray.count {
        if wordArray[i] != wordArray[wordArray.count - 1 - i] {
            return false
        }
    }
    return true
}
