import Foundation

let testArray = [2, 0, 8, 1, 1, 3, 5, 99]

func firstDuplicatedElement(in array: [Int]) -> Int? {
  
  for i in 0...array.count-2 {
    for j in i+1...array.count-1 {
      if array[i] == array[j] {
        return array[i]
      }
    }
  }
  return nil
}
  
if let duplicate = firstDuplicatedElement(in: testArray) {
  print(duplicate)
}
