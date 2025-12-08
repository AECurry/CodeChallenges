//  🏔️ MTECH Code Challenge ND12: "ShortLongShort"
//  Concept: Practice concatenating strings based on unique criteria

//  Instructions:
    //  Create a function that takes two strings, "a" and "b", as input, and returns a string.
    //  Your function should combine the input strings in the form short+long+short, with the shorter string on the outside and the longer string on the inside.

//  Notes:
    //  The strings will not be the same length, but they may be empty (zero length).

//  Examples:
    //  Input: "hey", "howdy"
    //  Output: "heyhowdyhey"
    
    //  Input: "after", "time"
    //  Output: "timeaftertime"

//  ⌺ Black Diamond Challenge:
    //  Create a function that can split back apart the shortlongshort strings, returning them in a Tuple of type (String, String)

import Foundation

// This function takes two strings and returns a new string
// in the format: short + long + short
func shortLongShort(_ a: String, _ b: String) -> String {
    
    // Determine which string is shorter
    let shortStr = a.count < b.count ? a : b
    
    // Determine which string is longer
    let longStr = a.count < b.count ? b : a
    
    // Return the final combined string in the format:
    // short + long + short
    return shortStr + longStr + shortStr
    
}


// Test
print(shortLongShort("hey", "howdy"))

print(shortLongShort("after", "time"))







// Black Diamond

// A function that takes ONE combined string in the pattern "short + long + short"
// and returns a TUPLE containing the original two pieces: (short, long).
func splitSLS(_ combined: String) -> (String, String) {
    
    // We only need to test up to half the total length,
    // because the pattern is short + long + short.
    for n in 1...(combined.count / 2) {
        
        // Take the first n characters and assume THEY are the short string.
        let short = String(combined.prefix(n))
        
        
        // Remove that first instance of the short string
        // so we can inspect what remains afterward.
        let afterRemovingFirst = combined.dropFirst(n)
        
        // Check if what's left ends with the same short string.
        // If it does, then we know the structure really is short + long + short.
        if afterRemovingFirst.hasSuffix(short) {
            
            // Remove the ending short from the remaining string,
            // leaving us with only the middle "long" portion.
            let long = String(afterRemovingFirst.dropLast(n))
            
            // Return the separated pieces in a tuple.
            return (short, long)
        }
    }
    
    // If nothing matches the expected pattern, return empty strings.
    return("", "")
}



// Test
print(splitSLS("heyhowdyhey"))
print(splitSLS("timeaftertime"))
print(splitSLS("xyabcdxy"))
