//  🏔️ MTECH Code Challenge TP15: "Removing Spaces"
//  Concept: Practice modifying strings

//  Instructions:
    //  Create a function that accepts a string as input and returns a different string.
    //  Remove the spaces from the input string, then return the resultant string.

//  Examples:
    //  Input: "Hello, world!"
    //  Output: "Hello,world!"

//  ⌺ Black Diamond Challenge:
    //  Make it so that spaces are not removed if they come after a period, exclamation point, or question mark.
    //  Create another function that can accept as input any string that has previously been returned and give you the original input string.

import Foundation

func removeSpaces(from text: String) -> String {
    return text.replacingOccurrences(of: " ", with: "")
}

let input1 = "Hello, world!"
let output1 = removeSpaces(from: input1)
print(output1)

let input2 = "Peter Piper Picked A Peck of Pickled Peppers"
let output2 = removeSpaces(from: input2)
print(output2)


// Black Diamond
func removeSpacesAfterPunctuations(from text: String) -> String {
    var result = ""
    let characters = Array(text)
    
    for i in 0..<characters.count {
        let char = characters[i]
        
        if char == " " {
            if i > 0 {
                let previousChar = characters[i - 1]
                if previousChar == "." || previousChar == "!" || previousChar == "?" {
                    result.append(" ")
                }
            }
        } else {
            
            result.append(char)
        }
    }
    
    return result
    
}

let test1 = "Hello, world! How are you?"
print(removeSpacesAfterPunctuations(from: test1))

let test2 = "Wait! Stop. Don't go? I have something for you."
print(removeSpacesAfterPunctuations(from: test2))
