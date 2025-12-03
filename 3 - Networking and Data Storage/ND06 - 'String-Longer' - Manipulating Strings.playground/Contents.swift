//  🏔️ MTECH Code Challenge ND06: "String-Longer"
//  Concept: Practice manipulating Strings in unique ways and outputting the result

//  Instructions:
    //  Create a function that takes and returns a String.
    //  Given any input string, return a string in which each character (case-sensitive) is repeated once.

//  Examples:
    //  Input: "String"
    //  Output: "SSttrriinngg"
    
    //  Input: "...1234!"
    //  Output: "......11223344!!"

//  ⌺ Black Diamond Challenge:
    //  Extend the function to accept an additional parameter n (an integer) that specifies the number of times each character should be repeated.
    //  If n is not provided, it should default to 2 (i.e., each character is repeated once).
    //  Additionally, create a second function that reverses the resulting string from the first function (e.g. "SSttrriinngg" becomes "ggnniirrttSS").

import Foundation

 // Uses a function that takes in a string as an input and returns a new string
func stringLonger(_ input: String) -> String {
    // Stores the final result as it is being built
    var result = ""
    
    // Loops through each character in the string
    for char in input {
        
        // Appends the same character twice
        result.append(char)
        result.append(char)
    }
    
    // Returns the completed string
    return result
}

//Test
print(stringLonger("String"))
print(stringLonger("...1234!"))




// BlackDiamond

// Uses a function that repeats each character n times (default is 2)
func repeatCharacters(_ input: String, repeatCount n: Int = 2) -> String {
    var result = ""
    
    for char in input {
        for _ in 0..<n {
            result.append(char)
        }
    }
    
    return result
}

// Function that reverses the expanded string
func reverseString(_ input: String, repeatCount n: Int = 2) -> String {
    let expanded = repeatCharacters(input, repeatCount: n)
    return String(expanded.reversed())
}


// MARK: - Tests

let doubledString = repeatCharacters("String")
print(doubledString)

let reversedString = reverseString("String")
print(reversedString)

let doubledNumbers = repeatCharacters("...1234!")
print(doubledNumbers)

let reversedNumbers = reverseString("...1234!")
print(reversedNumbers)
