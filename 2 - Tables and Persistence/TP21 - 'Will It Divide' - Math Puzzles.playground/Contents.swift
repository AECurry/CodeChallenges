//  🏔️ MTECH Code Challenge TP21: "Will It Divide"
//  Concept: Practice translating simple math into Swift code

//  Instructions:
    //  Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

//  Examples:
    //  Input: n: 10, x: 2, y: 5
    //  Logic: 10 is divisible by 2 and 5
    //  Output: true

    //  Input: n: 27, x: 9, y 2
    //  Logic: 27 is not divisible by 2
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Extend the function to accept an additional array parameter, 'divisors', which is an array of integers.
    //  The function should return true if the number n is divisible by *all* numbers in the 'divisors' array, and false if it is not divisible by any one of them.

import Foundation

// takes in three numbers: n, x, y, and returns true or false
func isDivisible(_ n: Int, by x: Int, and y: Int) -> Bool {
    // safty check if any number is a 0 or negative number return false immediately
    guard n > 0, x > 0, y > 0 else { return false }
    
    // checks if n is divisible by x with no remainders
    let divisibleByX = n % x == 0
    // checks if n is divisible by y with no remainders
    let divisibleByY = n % y == 0
    
    // returns true only if both checks are true
    return divisibleByX && divisibleByY
}

// Test
print(isDivisible(10, by: 2, and: 5))
print(isDivisible(27, by: 9, and: 2))



// Black Diamond
// Takes in a number n and an array called divisors and returns a Bool
func isDivisibleByAll(_ n: Int, divisors: [Int]) -> Bool {
    // if n is 0 or negative, return false
    guard n > 0 else { return false }
    // if divisors array is empty retrun true
    guard !divisors.isEmpty else { return true }
    
    // starts looping through each number in the divisors array
    for divisor in divisors {
        // says if current divisor is zero or negative, return false
        guard divisor > 0 else { return false }
        
        // says if n divided by divisor has any remainders, return false
        if n % divisor != 0 {
            return false
        }
    }
    // if all divisors pass and all divided evenly pass, return true
    return true
}

// Test
print(isDivisibleByAll(12, divisors: [2, 3, 4]))
print(isDivisibleByAll(12, divisors: [2, 3, 5]))
print(isDivisibleByAll(10, divisors: []))
print(isDivisibleByAll(10, divisors: [2, 5]))
