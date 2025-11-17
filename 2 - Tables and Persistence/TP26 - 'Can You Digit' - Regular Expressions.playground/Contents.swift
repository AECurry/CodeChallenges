//  🏔️ MTECH Code Challenge TP26: "Can You Digit"
//  Concept: Practice using regular expressions

//  Instructions:
    //  Create a function take that takes a string as input and returns a boolean.
    //  Your function should return true if the input string is a single digit, and false if it is anything else.
    //  You must use a regular expression to determine this. (Don't use Character's isNumber() method.)

//  Examples:
    //  Input: "7"
    //  Output: true

    //  Input: "838"
    //  Output: false

    //  Input: "hi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle the following cases:
    //  1. Leading or trailing spaces: "  7  " should return true.
    //  2. Single digit with a positive or negative sign: "+7" and "-7" should return true.
    //  3. A digit within a string: "abc7xyz" should return true.

import Foundation

// function that takes in a string as input and returns a boolean
// Checks if the input string is a single digit using regex
func canYouDigIt(_ input: String) -> Bool {
    
    // Regular expression pattern for exatcly one digit
    // ^ (starts string), [0-9] checks if the chacter is a digit (0-9), $ (ends string)
    let pattern = "^[0-9]$"
    
    // If input matches the patter, ranges(of:) will return a non-nill value
    return input.range(of: pattern, options: .regularExpression) != nil
}

// Test
print(canYouDigIt("7"))
print(canYouDigIt("838"))
print(canYouDigIt("Hi, how are you today?"))
print(canYouDigIt("0"))





// function that takes in a string as input and returns a boolean
// Extended version that detects digits even with spaces, signs, or within text.
func canYouDigitPro(_ input: String) -> Bool {
    
    // Pattern breakdown:
    // - "\\s*"   → allows optional spaces before and after
    // - "[+-]?"  → optional plus or minus sign
    // - "\\d"    → any single digit (same as [0-9])
    // - ".*"     → allows characters before or after the digit (to catch it anywhere in the string)
    let pattern = ".*\\s*[+-]?\\d\\s*.*"
    
    // Returns true if the input contains a match for this pattern
    return input.range(of: pattern, options: .regularExpression) != nil
}

// Test
print(canYouDigitPro("  7  "))
print(canYouDigitPro("+7"))
print(canYouDigitPro("-7"))
print(canYouDigitPro("abc7xyz"))
print(canYouDigitPro("no digits"))

