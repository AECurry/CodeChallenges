//  🏔️ MTECH Code Challenge ND17: "Chickens, Cows, Heads, Legs" 🐓🐄🗣️🦵
//  Concept: Solve unique math problems in Swift code

//  Instructions:
    //  Everybody has probably heard of the animal heads and legs problem from the earlier years at school. It goes:
        //  “A farm contains chickens and cows. There are x heads and y legs. How many chickens and cows are there?”
    //  where x <= 1000 and y <=1000

    //  Task
    //  Create a function that takes two integers as input, representing number of heads and legs.
    //  Assuming there are no other types of animals, work out how many of each animal are there.
    //  Return the amount in an Int array: [numberOfChickens, numberOfCows]
    //  If either the heads & legs is negative, the result of your calculation is negative, or the result is not a whole integer, return nil

//  Examples:
    //  Input: 72 heads, 200 legs
    //  Output: 44 chickens, 28 cows

    //  Input: 72 heads, 201 legs
    //  Output: nil (no solutions)

//  Notes:
    //  If 0 heads and 0 legs are given always return [0, 0] since zero heads must give zero animals.
    //  There are many different ways to solve this; you can use any as long as your formula correctly counts the number of animals.

//  ⌺ Black Diamond Challenge:
    //  Create another similar function. This time, add another Int parameter, numberOfSheep. 🐑
    //  Take into account how many sheep are mixed into the number of heads and legs, then return all three animal types, chickens, cows, and sheep in your calculation.
    //  If there are no valid solutions, return nil.

import Foundation

// Uses a function to take the total number of animal heads and legs,
// and returns those numbers in an array.
func countAnimals(heads: Int, legs: Int) -> [Int]? {
    
    // Reject impossible or negative inputs
    if heads < 0 || legs < 0 { return nil }
    
    // Special case: zero heads must mean zero animals
    if heads == 0 && legs == 0 { return [0, 0] }
    
    // If every animal on the farm were a cow (and cows have 4 legs),
    // then the total number of legs would be 4 times the number of
    // heads.
    // The difference between that number and the actual legs
    // tells us how many chickens there are, because each chicken
    // uses 2 fewer legs than a cow.
    // Then whatever heads remain must be cows
    let chickensNumerator = 4 * heads - legs
    
    // If this is odd, chickens won't be a whole number — invalid case
    if chickensNumerator % 2 != 0 { return nil }
    
    // Each chicken has 2 legs, so dividing by 2 gives us the actual number of chickens.
    let chickens = chickensNumerator / 2
    
    // Once we know how many chickens there are, the rest of the heads must belong to cows.
    // So we subtract chickens from the total number of heads to get the number of cows.
    let cows = heads - chickens
    
    // Reject negative results — impossible in real life
    if chickens < 0 || cows < 0 { return nil }
    
    // Return the exact number of chickens and cows
    return [chickens, cows]
}


// Text
countAnimals(heads: 72, legs: 200)

countAnimals(heads: 72, legs: 201)

countAnimals(heads: 0, legs: 0)
