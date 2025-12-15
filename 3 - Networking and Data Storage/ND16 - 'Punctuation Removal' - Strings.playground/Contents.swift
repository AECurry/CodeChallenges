//  🏔️ MTECH Code Challenge ND16: "Punctuation Removal"
//  Concept: Practice manipulating a string

//  Instructions:
    //  Remove any punctuation mark from the end of a string.
    //  If the string ends with a punctuation mark (e.g., '.', ',', '!', '?', ';', ':', '-', '_'), remove only the last occurrence of such a mark.
    //  If the input string is empty, return an empty string.

//  Examples:
    //  Input: "Greetings, friends!!"
    //  Output: "Greetings, friends!"

    //  Input: "Wow."
    //  Output: "Wow"

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, remove all leading and trailing punctuation, including multiples.
    //  Input: "...This is a good example!!!", Output: "This is a good example"

import Foundation

// Uses a function to look at the entire text of a String,
// removes a single punctuation mark at the end,
// and returns a new String with either one punctuation mark at the
// very end or none at all.
func removeEndingPunctuation(_ text: String) -> String {
    
    // Punctuation marks we want to remove when they appear at the END
    let punction: Set<Character> = [".", ",", "!", "?", ";", ":", "-", "_"]
    
    // If the string is empty, just return it
    guard let last = text.last else {
        return ""
    }
    
    // If the last character is punctuation, remove it
    if punction.contains(last) {
        return String(text.dropLast())
    }
    
    // Otherwise return the original string untouched
    return text
}

// Test

print(removeEndingPunctuation("Greetings, friends!!"))

print(removeEndingPunctuation("Wow."))





// Black Diamond

// Uses a function to check the beginning and end of a String,
// removes any punctuation characters found there (including multiples in a row),
// and returns a new cleaned-up String with only the actual text remaining.
func removeOuterPunctuation(_ text: String) -> String {
    // Define the punctuation characters we want to remove from the start and end
    let punctuation: CharacterSet = .punctuationCharacters
    
    // Trim any punctuation from both ends of the string
    let trimmed = text.trimmingCharacters(in: punctuation)
    
    // Return the cleaned string
    return trimmed
}


// Test

print(removeOuterPunctuation("...This is a good example!!!"))


