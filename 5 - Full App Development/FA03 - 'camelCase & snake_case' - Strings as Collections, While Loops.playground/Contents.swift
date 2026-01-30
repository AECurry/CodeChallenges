//  🏔️ MTECH Code Challenge SD03: "camelCase & snake_case" 🐫🐍
//  Concept: Practice using a string as a collection, evaluating and modifying it as needed

//  Instructions:
    //  Create two functions toCamelCase() and toSnakeCase() that each take a single string and convert it into either camelCase or snake_case. If you're not sure what these terms mean, google it.

//  Notes:
    //  You can assume that the input will always be appropriately formatted as either camelCase or snake_case, depending on the function being called.

//  Examples:
    //  Input: toCamelCase("hello_edabit"), Output: "helloEdabit"
    //  Input: toSnakeCase("helloEdabit"), Output: "hello_edabit"
    //  Input: toCamelCase("is_modal_open"), Output: "isModalOpen"
    //  Input: toSnakeCase("getColor"), Output: "get_color"

//  ⌺ Black Diamond Challenge:
    //  Write another function that can identify whether a String is in camelCase or snake_case; use that function to sanitize your input to the other two functions.
    //  Write two more functions that convert a string into PascalCase and kebab-case, respectively.

import Foundation

func toCamelCase(_ str: String) -> String {
    // This splits the string into separate words using "_" as the delimiter
    let parts = str.split(separator: "-")
    
    // Ensures the string is not empty and makes sure the first word remains lowercase
    guard let first = parts.first else { return ""}
    
    // This removes the first word and capitalize the remaining words
    let rest = parts.dropFirst().map { $0.capitalized }
    
    // Combines the lowercase first word with the capitalized remainder
    return first.lowercased() + rest.joined()
}

func toSnakeCase(_ str: String) -> String {
    // Create a mutable String to build the result incrementally
    var result = ""
    
    // Uses a "for" to iterate through each character in the string
    for char in str {
        
        // Uppercase letters indicate a new word boundary
        if char.isUppercase {
            
            // Inserts an underscore before the new word
            result.append("_")
            
            // Converts the uppercase letter to lowercase to match snake_case rules
            result.append(char.lowercased())
            
        } else {
            
            // Appends lowercase characters directly
            result.append(char)
        }
    }
    
    // Return the fully converted snake_case string
    return result
    
}

// Test
toCamelCase("hello_edabit")
toSnakeCase("helloEdabit")
toCamelCase("is_modal_open")
toSnakeCase("getColor")


