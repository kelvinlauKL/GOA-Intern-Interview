func isPalindrome(_ word: String) -> Bool {
    let wordArray = Array(word.characters)
    for i in 0..<wordArray.count {
        if wordArray[i] != wordArray[wordArray.count - 1 - i] {
            return false
        }
    }
    return true
}