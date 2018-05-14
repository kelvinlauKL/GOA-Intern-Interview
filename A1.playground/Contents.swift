import UIKit

func firstDuplicatedElement(in array: [Int]) -> Int? {
    
    for firstNumber in stride(from: 0, to: array.count, by: 1) {
        for secondNumber in stride(from: firstNumber + 1, to: array.count, by: 1) {
            if array[firstNumber] == array[secondNumber] {
                return array[firstNumber]
            }
        }
    }
    return nil
}

// program testing
let testArray = [4, 5, 3, 5, 2, 0]

if let duplicate = firstDuplicatedElement(in: testArray) {
    print(duplicate)
}
