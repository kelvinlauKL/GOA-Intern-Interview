let testArray = [2, 4, 5, 1, 3, 5, 4]
let testArray2: [Int] = []
let testArray3 = [3, 3]
let testArray4 = [1, 2, 3, 4, 5]

// Slow solution - O(n^2)
func firstDuplicatedElement(in array: [Int]) -> Int? {

  var left = array.startIndex // aka 0
  var right = array.index(before: array.endIndex) // aka count - 1
  
  while left < array.endIndex {
    
    while left < right {
      if array[left] == array[right] {
        return array[left]
      }
      
      array.formIndex(before: &right)
    }
    
    array.formIndex(after: &left)
    right = array.index(before: array.endIndex)
  }
  return nil
}

firstDuplicatedElement(in: testArray)

// Improved solution - O(n log n)
func improvedFirstDuplicatedElement(in array: [Int]) -> Int? {
  let sortedArray = array.sorted()
  
  for (index, value) in sortedArray.enumerated() {
    guard index != sortedArray.startIndex else { continue }
    if sortedArray[index - 1] == value {
      return value
    }
  }
  return nil
}

improvedFirstDuplicatedElement(in: testArray)


// Optimized solution - O(n)
func optimizedFirstDuplicatedElement(in array: [Int]) -> Int? {
  var dict: [Int: Int] = [:]
  for value in array {
    dict[value, default: 0] += 1
  }
  
  for value in array {
    if dict[value]! > 1 {
      return value
    }
  }
  
  return nil
}

optimizedFirstDuplicatedElement(in: testArray)
