//  🏔️ MTECH Code Challenge ND03: "Is It Uppercase?"
//  Concept: Learn a useful String method as a path to understanding more about types and methods; use for loops

//  Instructions:
    //  Create a function that takes a String as input and returns a Bool.
    //  Your function should check to see whether the input string is in ALL CAPS.

//  Examples:
    //  Input: "Hello"
    //  Output: false

    //  Input: "IT'S SO NICE TO MEET YOU"
    //  Output: true

//  Notes:
    //  An empty string input should return true.
    //  You may assume the input string only contains letters and spaces, no numbers or special characters.

//  ⌺ Black Diamond Challenge:
    //  Make another function. This one should accept an array of strings and check if all of them are uppercased, some are, or none are. If all are, return 1; if some are, return 0; if none are, return -1.
    //  Make both your functions account for numbers and special characters.

import Foundation

// Uses a function called "isUppercase" with no argument
//
// "input" parameter is of a String that returns a Bool (true/false)
func isUppercase(_ input: String) -> Bool {
    
    // Checks if the string is all upper case letters
    // Returns a true/false according to what it finds
    return input == input.uppercased()
}

// Test
print(isUppercase("Hello"))
print(isUppercase("IT'S SO NICE TO MEET YOU"))
print(isUppercase("Nice DAY we are having"))





// Black Diamond

// Uses a function called checkUppercaseStatus with no argument
// Uese an array of strings and returns an Int

func checkUppercaseStatus(_ strings: [String]) -> Int {
    
    // Goes through each string in teh array and keeps only the uppercase ones
    // Counts how many uppercase strings were found
    // uppercaseCount will be a number from 0 to the total number of strings
    let uppercaseCount = strings.filter { isUppercase($0) }.count
    
    // Switch checks different cases based on the uppercaseCount
    switch uppercaseCount {
    // If ALL strings are uppercase (count equals total strings)
    case strings.count: return 1
    // If NO strings are upper case (count is zero
    case 0: return -1
    // If Some strings are uppercase (any other count)
    default: return 0
    }
}


// Test
print(checkUppercaseStatus(["HELLO", "WORLD"]))
print(checkUppercaseStatus(["hello", "world"]))
print(checkUppercaseStatus(["HELLO", "World"]))
