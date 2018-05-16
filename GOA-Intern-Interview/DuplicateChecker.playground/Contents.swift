
import UIKit
let duplicateArray = [2, 4, 5, 9, 4, 2, 5]

func firstDuplicatedElement(in array: [Int]) -> Int?{
    for firstElement in stride(from: 0, to: duplicateArray.count, by: 1){
        for secondElement in stride(from: firstElement + 1, to: duplicateArray.count, by: 1){
            if array[firstElement] == array[secondElement]{
                return array[firstElement]
            }
        }
        
       
    }
    return nil
}
if let duplicate = firstDuplicatedElement(in: duplicateArray){
        print(duplicate)
}
