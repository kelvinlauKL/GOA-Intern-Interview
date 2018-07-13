import Foundation

func isPalindrome(_ word: String) -> Bool {
  
  let chars = Array(word.characters)

     for index in 0..<chars.count/2 {
      if chars[index] != chars[chars.count - index - 1]{
        return false
      }
    }
  
  return true
}


let word = "RACECAR"

//Output

if isPalindrome(word){
  print("\(word) is a palindrome!")
}
else{
  print("\(word) is not a palindrome.")
}
