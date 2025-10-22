//  🏔️ MTECH Code Challenge TP10: "Palindromes"
//  Concept: Practice finding mathematical/code/logical solutions to language related tasks. You'll need to think about what makes a palindrome a palindrome and how that can translate to code.

//  Instructions:
    //  You may remember that a palindrome is a word that's spelled the same backward and forwards — like "mom" or "racecar."
    //  Create a function that accepts a string as input and returns TRUE if the string is a palindrome.

//  Examples:
    //  Input: "rotator"
    //  Output: true

    //  Input: "mississippi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Find a way to check whether a phrase or sentence is a palindrome — for example, "Taco Cat" or, "Too bad I hid a boot." You'll have to find a way to remove spaces in your phrases to get the function to work.

//  Fun Facts:
    //  The Finnish word "saippuakauppias" is 15 letters, is a palindrome, and is used regularly.
    //  "A man, a plan, a canal - panama!" is a famous palindrome by Leigh Mercer; Dan Hoey expanded it to 540 words: 🔗http://complex.gmu.edu/people/ernie/witty/Hoey_palindrome.html

import Foundation

func isPalindrome(_ phrase: String) -> Bool {
    
    let lowercased = phrase.lowercased()
    
    let cleaned = lowercased.filter { $0.isLetter }
    
    let reversed = String(cleaned.reversed())
    
    return cleaned == reversed
}

print(isPalindrome("rotator"))
print(isPalindrome("mississippi"))
print(isPalindrome("A man, a plan, a canal - panama!"))
print(isPalindrome("saippuakauppias"))
print(isPalindrome("Hello there"))


// Black Diamond
func isPhrasePhalindrome(_ phrase: String) -> Bool {
    
    let cleaned = phrase.lowercased().filter { $0 >= "a" && $0 <= "z"}
    
    return cleaned == String(cleaned.reversed())
}

print(isPhrasePhalindrome("Taco Cat"))
print(isPhrasePhalindrome("Too bad I hid your boot"))
print(isPhrasePhalindrome("Never odd or even"))
print(isPhrasePhalindrome("Hello, world!"))
