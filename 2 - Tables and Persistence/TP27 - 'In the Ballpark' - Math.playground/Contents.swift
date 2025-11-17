//  🏔️ MTECH Code Challenge TP27: "In the Ballpark" ⚾️
//  Concept: Evaluate data with custom parameters

//  Instructions:
//  Create a function called ballparkCompare that accepts 3 integers: a, b, and an optional margin. It should return an integer.
//  The function should identify whether a is lower than, close to, or higher than b.
//  We will consider "a" in the ballpark of "b" if the distance between a and b is less than the margin value.
//  When a is close to b, return 0.
//  When a is less than b, return -1.
//  When a is greater than b, return 1.

//  Notes:
//  If margin is not given or is less than 0, treat it as zero.

//  Examples:
//  Input: (a: 103, b: 880, margin: 300)
//  Output: -1

//  Input: (a: 39, b: 10, margin: 50)
//  Output: 0

//  ⌺ Black Diamond Challenge:
//  Enhance the ballparkCompare function to accept two additional optional parameter called "rounding" and "roundValue".
//  The "rounding" parameter should be an enum with cases for "up", "down", and "nearest".
//  If "rounding" is provided, the function should round the values of a and b before comparing them, according to the rounding rule specified
//  Round the numbers to the nearest multiple of the roundValue (i.e., if roundValue is 30, then 77 would round to 90)
//  Ensure that the function still considers the margin when comparing the rounded values.

import Foundation

// Evaluates whether "a" is less than, close to, or greater than "b"
// Function takes three Int parameters ("a", "b", and an optional margin)
// and returns an Int result (-1, 0, or 1) based on comparison logic.
func ballparkCompare(a: Int, b: Int, margin: Int = 0) -> Int {
    
    // Using a ternary operator to ensure margin cannot be negative.
    // If 'margin' < 0, set 'effectiveMargin' to 0; otherwise, keep the original value.
    let effectiveMargin = margin < 0 ? 0 : margin
    
    // Using abs() to get the absolute value of the difference between "a" and "b".
    // This makes sure the comparison is not affected by which number is larger.
    let difference = abs(a-b)
    
    // Using standard conditional statements to evaluate and return an Int result.
    // No loop is needed here because we're comparing just two values.
    if difference <= effectiveMargin {
        return 0 // Returns a 0 when "In the ballpark"
    } else if a < b {
        return -1 // Returns a -1 when "a" is lower than "b"
    } else {
        return 1 // Retruns a 1 when "a" is higher than "b"
        
    }
}


// Test
print(ballparkCompare(a: 103, b: 880, margin: 300))
print(ballparkCompare(a: 39, b: 10, margin: 50))
print(ballparkCompare(a: 120, b: 100, margin: 10))
print(ballparkCompare(a: 99, b: 100))
print(ballparkCompare(a: 100, b: 100))







// Black Diamond Challenge

// Using an enum makes the code more readable and prevents string-based errors.
enum RoundingType {
    case    up,
            down,
            nearest
}

// Function takes two Int parameters (a and b),
// plus three optional parameters: margin (Int), rounding (enum), and roundValue (Int).
// Returns an Int result (-1, 0, or 1) after comparing a and b with optional rounding.
func ballparkCompareRoundedUpAndDown(a: Int, b: Int, margin: Int = 0, rounding: RoundingType? = nil, roundValue: Int = 1) -> Int {
    
    
    // Ensures that negative margins are treated as zero, preventing invalid comparisons.
    // Also checks that roundValue is not zero or negative to avoid math errors.
    let effectiveMargin = margin < 0 ? 0 : margin
    let base = roundValue <= 0 ? 1 : roundValue
    
    // Declares two new Int variables that will store the (possibly rounded) values of a and b.
    let roundedA: Int
    let roundedB: Int
    
    
    // If a rounding rule is provided, the code applies the chosen rounding behavior.
    // Uses built-in math functions (ceil, floor, round) to round to a custom multiple (e.g., 10, 50, etc.).
    if let roundingType = rounding {
        switch roundingType {
        case .up:
            // Rounds a and b up to the next multiple of roundValue.
            roundedA = Int(ceil(Double(a) / Double(base))) * base
            roundedB = Int(ceil(Double(b) / Double(base))) * base
            
            
        case .down:
            // Rounds a and b down to the previous multiple of roundValue.
            roundedA = Int(floor(Double(a) / Double(base))) * base
            roundedB = Int(floor(Double(b) / Double(base))) * base
            
            
        case .nearest:
            // Rounds a and b to the nearest multiple of roundValue.
            roundedA = Int(round(Double(a) / Double(base))) * base
            roundedB = Int(round(Double(b) / Double(base))) * base
        }
        
    } else {
        // If no rounding option is given, keep the original values of a and b.
        roundedA = a
        roundedB = b
    }
    
    // Calculates the absolute difference between the (possibly rounded) values.
    // Using abs() ensures the result is always positive.
    let difference = abs(roundedA - roundedB)
    
    
    // Final comparison logic
    if difference <= effectiveMargin {
        return 0 // Returns a 0 when "In the ballpark"
    } else if roundedA < roundedB {
        return -1 // Returns a -1 when a is lower than b
    } else {
        return 1 // Retruns a 1 when a is higher than b
        
    }
}
