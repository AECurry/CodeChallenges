//  🏔️ MTECH Code Challenge PC17: "Cup Swapping"
//  Concept: Practice processing an input as a set of instructions and manipulate data in response

//  Instructions:
    //  There are three cups on a table, at positions A, B, and C. At the start, there is a ball hidden under the cup at position B.
    //  However, I perform several swaps on the cups, which is notated as two letters. For example, if I swap the cups at positions A and B, I could notate this as AB or BA.
    //  Create a function that returns the letter position that the ball is at, once I finish swapping the cups. The swaps will be given to you as an array.

//  Examples:
    //  Input: cupSwapping(["AB", "CA", "AB"])
    //  Logic:
        //  Ball begins at position B.
        //  Cups A and B swap, so the ball is at position A.
        //  Cups C and A swap, so the ball is at position C.
        //  Cups A and B swap, but the ball is at position C, so it doesn't move.
    //  Output: "C"

    //  Input: cupSwapping(["AB", "CA"]), Output: "C"
    //  Input: cupSwapping(["AC", "CA", "CA", "AC"]), Output: "B"
    //  Input: cupSwapping(["BA", "AC", "CA", "BC"]), Output: "A"

//  Notes:
    //  A swap could be notated in two different ways, since both ways end up with the same outcome.
    //  All swaps will be notated as capital letters and will be valid.
    //  You cannot swap a cup with itself.

//  ⌺ Black Diamond Challenge:
    //  In addition to determining the final position of the ball, extend the function to also return the final positions of all three cups (A, B, and C) after the swaps.

import Foundation

enum Position: String {
    case A, B, C
}

func cupSwapping(_ swaps: [String]) -> String {
    // The ball starts at position B
    var ballPosition = Position.B
    
    for swap in swaps {
        // Convert the string (e.g., "AB") into an array of characters
        let cups = Array(swap).map { String($0) }
        let cup1 = cups[0]
        let cup2 = cups[1]
        
        // If the ball is under one of the cups being swapped,
        // it moves to the other cup's position.
        if ballPosition.rawValue == cup1 {
            ballPosition = Position(rawValue: cup2)!
        } else if ballPosition.rawValue == cup2 {
            ballPosition = Position(rawValue: cup1)!
        }
        
        // If the ball isn't under either cup, nothing happens!
    }
    
    return ballPosition.rawValue
}

// Test
print(cupSwapping(["AB", "CA", "AB"]))
print(cupSwapping(["AB", "CA"]))
print(cupSwapping(["AC", "CA", "CA", "AC"]))
print(cupSwapping(["BA", "AC", "CA", "BC"]))

