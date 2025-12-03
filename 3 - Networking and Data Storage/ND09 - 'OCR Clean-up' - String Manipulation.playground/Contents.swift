//  🏔️ MTECH Code Challenge ND09: "OCR Clean-up"
//  Concept: Practice evaluating and modifying a string character-by-character.

//  Instructions:
//  Your boss decided to save money by purchasing some cut-rate optical character recognition software for scanning in the text of old novels to your database. At first it seems to capture words okay, but you quickly notice that it throws in a lot of numbers at random places in the text.
//  Your harried co-workers are looking to you for a solution to take this garbled text and remove all of the numbers. Your program will take in a string and clean out all numeric characters, and return a string with spacing and special characters ~#$%^&!@*():;"'.,? all intact.

//  Examples:
    //  Input: "Ala3s, poo4r Yoric888k! I kn3ew h41im, H0or4at1i0o."
    //  Output: "Alas, poor Yorick! I knew him, Horatio."

//  ⌺ Black Diamond Challenge:
    //  Clearly there's a problem--what if the text contains numbers? Modify your program to only remove numbers if they are embedded in alphabetical characters--if a number has a space or special character before it, leave it intact.
    //  Input: "Ple3ase turn to page 71."
    //  Output: "Please turn to page 71."

import Foundation

// Uses a function to remove all number character from a string while keeping every other character (letters, spaces, punctions, and symbols).
func removeNumbers(from input: String) -> String {
    
    // Starts with an empty string that will hole the cleaned result
    var cleaned = ""
    
    // Loops through the string one character at a time
    for char in input {
        
        // Checks whether the character is a number (0-9) and keeps only charaters that are not numbers.
        if !char.isNumber {
            cleaned.append(char)
        }
    }
    // After everything is processed, returns the cleaned-upn version of the string.
    return cleaned
}


// Test
print(removeNumbers(from: "Ala3s, poo4r Yoric888k! I kn3ew h41im, H0or4at1i0o."))









// Black Diamond Challenge


// Uses a function to remove numbers only when they are embedded in letters.
func cleanEmbeddedNumbers(from input: String) -> String {
    
    
    // Converts the string to an array to be able to look at neighbors incase a number is found
    let chars = Array(input)
    var result = ""
    
    
    // Loops though each index to check previous/next characters
    for index in chars.indices {
        let current = chars [index]
        
        
        // If the current charater is not a number, it gets kept and stored
        if !current.isNumber {
            result.append(current)
            continue
        }
        
        
        // If it is a number, check neighbor characters
        let hasLetterBefore = index > chars.startIndex && chars[index - 1].isLetter
        let hasLetterAfter = index < chars.index(before: chars.endIndex) && chars[index + 1].isLetter
        
        
        //Removes the number Only if it's touching letters before and after
        if hasLetterBefore || hasLetterAfter {
            continue
        }
        
        
        // Otherwise, keeps the number
        result.append(current)
    }
    
    return result
}

// Test
print(cleanEmbeddedNumbers(from: "Ple3ase turn to page 71."))
