//  🏔️ MTECH Code Challenge ND05: "Name Swap"
//  Concept: Practice manipulating the contents of strings algorithmically

//  Instructions:
    //  Write a function that takes a String as input and returns another String.
    //  The input string will be a first and last name. Return a string with the names swapped, last name first, first name last.

//  Example:
    //  Input: "john McClane"
    //  Output: "McClane john"

//  Notes:
    //  You can assume the input will always be a single pair of names, first and last.

//  ⌺ Black Diamond Challenge:
    //  Write another function that accepts a full name as input (first, middle, last) and returns a string in the format, "lastName, firstName middleInitial." Include the comma, abbreviate the middle initial to one letter and add a period.

import Foundation

// This funtion that takes a full name as a single string and returns first and last names swapped
func nameSwap(_ fullName: String) -> String {
    
    // Splits the input string into separate words using a space as the separator
    let parts = fullName.split(separator: " ")
    
    // stores the first name and the second name separately
    let first = parts[0]
    let last = parts [1]
    
    // Builds and returns the new string with the order reversed
    return "\(last) \(first)"
}


// Test
print(nameSwap("John McClane"))
print(nameSwap("Sally Owens"))






// Black Diamond
// This funtion that takes a full name as a single string and returns first and last names swapped and only takes the first letter of the middel name
func formatFullName(_ fullName: String) -> String {
    // Splits the input into name components
    let parts = fullName.split(separator: " ")
    
    // Guard to expect exactly 3 parts: first, middle, last
    guard parts.count == 3 else {
        return "Invalid name format"
    }
    
    // stores each name separately
    let first = String(parts [0])
    let middle = String(parts[1])
    let last = String(parts[2])
    
    // Takes only the first letter of the middle ame and adds a period
    let middleInitial = middle.prefix(1).uppercased() + "."
    
    
    // Builds and returns the new string with the order reversed and only the middle initial of the middle name along with a "."
    return "\(last), \(first) \(middleInitial)"
}
