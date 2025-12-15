//  🏔️ MTECH Code Challenge ND19: "ASCII Vowel Values"
//  Concept: Practice working with ASCII numerical representations of letters

//  Instructions:
    //  Write a function that takes an array of numbers and returns a [Character: [Int]] dictionary.
    //  For each number in the input array, check if it is an ASCII value for a lowercase vowel (a, e, i, o, u).
    //  If it is, add the index of that value to an array in a dictionary where vowels are the keys.
    //  Return the resulting dictionary which can now be used to get the locations of all the vowels in the input array.

//  Hints:
    //  🔗https://www.asciitable.com/
    //  🔗https://stackoverflow.com/questions/24354549/how-to-get-string-from-ascii-code-in-swift

//  Examples:
    //  Input: [97, 103, 98, 100]
    //  Logic: These represent the letters a, g, b, and d, respectively.
    //  Output: ["i": [], "o": [], "u": [], "e": [], "a": [0]]

//  ⌺ Black Diamond Challenge:
    //  Extend the function to also handle uppercase vowels (A, E, I, O, U).
    //  Store their indices in the dictionary separately from their lowercase counterparts.

import Foundation

// This function takes an array of integers that represent ASCII values and returns a dictionary showing where each lowercase vowel appears in the array.
func asciiVoewlValues(_ values: [Int]) -> [Character: [Int]] {
    
    // This dictionary stores the results starting with zero because a vowel may appear zero or more times.
    var result: [Character: [Int]] = [
        "a": [],
        "e": [],
        "i": [],
        "o": [],
        "u": []
    ]
    
    // Created a loop through the input array while keeping track
    // of both the index (position) and the value (ASCII number).
    for (index, value) in values.enumerated() {
        
        // Attempt to convert the ASCII number into a UnicodeScalar. If the number is invalid, this safely fails and skips it.
        if let scalar = UnicodeScalar(value) {
            
            // Convert the UnicodeScalar into a Character, so it can work with actual letters
            let character = Character(scalar)
            
            // Checks whether this character is one of the vowel keys.If it is, we add the current index to that vowel’s array.
            if result.keys.contains(character) {
                result[character]?.append(index)
            }
        }
    }
    
    // Returns the completed dictionary showing where each vowel appears in the input array.
    return result
}


// Test

let input = [97, 103, 98, 100]
let output = asciiVoewlValues(input)
print(output)
