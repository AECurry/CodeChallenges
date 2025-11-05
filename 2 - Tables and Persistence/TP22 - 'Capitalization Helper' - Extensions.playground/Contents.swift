//  🏔️ MTECH Code Challenge TP22: "Capitalization Helper"
//  Concept: Practice creating simple extensions to add custom methods for standard types

//  Instructions:
    //  Your coworker was supposed to write a simple helper function to capitalize the first character of a string and lowercase the rest before they went on vacation.

    // Unfortunately, they have now left and the code they gave you doesn't work. Fix the helper function they wrote so that:
        //  It capitalizes the first character of the input string
        //  It does not require an input parameter, but mutates the string it is called on instead

//  Examples:
    //  Input: "clown Husbandry"
    //  Call: input.captializingOnlyFirst()
    //  Output: "Clown husbandry"

//  ⌺ Black Diamond Challenge:
    //  Add another function to String that cApItAlIzEs EvErY oThEr LeTtEr. Note that letters alternate capitaliztion between words, as well; spaces do not interrupt the pattern.

import Foundation

// This extension adds a custom method to the String type that
// capitalizes only the first letter of the string while
// converting the rest to lowercase.

extension String {
    
    /// Mutates the string by capitalizing only its first character
    /// and making all remaining characters lowercase.
    mutating func capitalizingOnlyFirst() {
        // Exit early if the string is empty (nothing to modify)
        guard !self.isEmpty else { return }
        
        // Get the first character and make it uppercase
        let first = self.prefix(1).uppercased()
        
        // Get the rest of the string (after the first character) and make it lowercase
        let rest = self.dropFirst().lowercased()
        
        // Combine the two parts and assign the result back to 'self'
        self = first + rest
    }
}

//Test
var example1 = "cloWN HusBandRy"

//This will capitalize only the first letter and lowercase all the rest.
example1.capitalizingOnlyFirst()
print(example1) // ✅ "Clown husbandry"


// Black Diamond
extension String {
    
    // Alternates capitalization across all letter in the string
    mutating func alternatingCaps() {
        guard !self.isEmpty else { return }  // Exit if string is empty
        var result = "" // Holds the new string
        
        var index = 0// Tracks even/odd letters
        
        // Loop through each character in the string
        for char in self {
            
            // Check if the current character is a letter (A-Z or a-z)
            if char.isLetter {
                // Even index → uppercase, odd index → lowercase
                if index % 2 == 0 {
                    //append uppercase letter
                    result.append(char.uppercased())
                } else {
                    // Append lowercase letter
                    result.append(char.lowercased())
                }
                index += 1  // Only increment for letters to maintain alternating pattern
            } else {
                // If the character is not a letter (space, punctuation, number),
                // leave it unchanged and add it to the result
                result.append(char)
            }
        }
        
        self = result  // Assign the final string back to self
    }
}

// Test
var example2 = "black diamond challenge"
example2.alternatingCaps()
print(example2)

var example3 = "HELLO WORLD!"
example3.alternatingCaps()
print(example3)

