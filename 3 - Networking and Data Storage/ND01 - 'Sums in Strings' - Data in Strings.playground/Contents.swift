//  🏔️ MTECH Code Challenge ND01: "Sums in Strings"
//  Concept: Practice converting Strings to other types and evaluating data stored within them

//  Instructions:
//  Create a function that takes a String as input and returns an Integer.
//  Your task is to calculate the sum of the integers inside an input string.

//  Examples:
//  Input: "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"
//  Math: 30 + 20 + 10 + 0 + 1203 + 914 + 3 + 1349 + 102 + 4
//  Output: 3635

//  ⌺ Black Diamond Challenge:
//  Make another function. This one should also execute any mathematical operators contained in the string (+, -, /, * or x). If no operator separates two integers, add them by default. Thus, the string "13-3is10" would produce 20 (13 - 3 + 10).

import Foundation

// Using a function to find all the numbers hidden inside a string and returns their total sum
func sumofNumbers(in text: String) -> Int {
    
    // Using a var to hold all the digits as they are collected (e.g., "1203")
    var currentNumber = ""
    
    // This var keeps the running total of all found numbers
    var total = 0
    
    
    // Loop through each character in the string
    for char in text {
        if char.isNumber {
            
            // If the character is a digit, add it to the current number we're building
            currentNumber.append(char)
            
        } else {
            
            // If the character is not a digit, that means the number we were building is finished,
            // so we convert it and add it to the total.
            if let value = Int(currentNumber) {
                //finished reading the number, so it gets added to the running total
                total += value
            }
            
            // Resets so it can start collecting the next number
            currentNumber = ""
        }
    }
    
    // After the loop ends, there may still be a number stored (if the string ended with digits)
    if let value = Int(currentNumber) {
        //finished reading the number, so it gets added to the running total
        total += value
    }
    
    // Gives back the full sum
    return total
    
}

//Test
let input = "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"
let result = sumofNumbers(in: input)
print(result)
