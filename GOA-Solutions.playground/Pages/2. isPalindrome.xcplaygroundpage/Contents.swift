//

// Improved solution - O(n)
func isPalindrome(_ word: String) -> Bool {
  return String(word.reversed()) == word
}

isPalindrome("radar")
isPalindrome("bob")
isPalindrome("asdfdsa")
isPalindrome("Hello world")

// Optimized solution - O(1/2 * n)
func isPalindromeOptimized(_ word: String) -> Bool {
  var left = word.startIndex
  var right = word.index(before: word.endIndex)
  
  while left < right {
    if word[left] != word[right] {
      return false
    }
    
    word.formIndex(after: &left)
    word.formIndex(before: &right)
  }
  
  return true
}

isPalindromeOptimized("radar")
isPalindromeOptimized("bob")
isPalindromeOptimized("asdfdsa")
isPalindromeOptimized("Hello world")
