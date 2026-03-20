//  🏔️ MTECH Code Challenge PC11: "Additive Persistence"
//  Concept: Practice solving unique math problems as Swift code

//  Instructions:
    //  The additive persistence of an integer, n, is the number of times you have to replace n with the sum of its digits until n becomes a single digit integer.
    //  Create a function that take an integer as an argument and return its additive persistence.

//  Examples:
    //  Input: additivePersistence(1679583)
    //  Math: 
        //  1 + 6 + 7 + 9 + 5 + 8 + 3 = 39
        //  3 + 9 = 12
        //  1 + 2 = 3
        //  It takes 3 iterations to reach a single-digit number.
    //  Output: 3

    //  Input: additivePersistence(123456)
    //  Math:
        //  1 + 2 + 3 + 4 + 5 + 6 = 21
        //  2 + 1 = 3
    //  Output: 2

    //  Input: additivePersistence(6)
    //  Output: 0 (it is already a single digit)

//  ⌺ Black Diamond Challenge:
    //  Create another function. This will take an input, "maximum", and return a dictionary. The keys of the dictionary will be every integer starting from 0 up until maximum, and the values of the dictionary will be the additivePersistence of each given integer.

import Foundation

func additivePersistence(_ n: Int) -> Int {
    var currentNumber = n
    var count = 0
    
    // When the number is 10 or greater, it has at least 2 digits
    while currentNumber >= 10 {
        // 1. Convert the number to a string to access individual characters (digits)
        let digits = String(currentNumber)
        
        // 2. Maps those characters back to integers and sums them up
        let sum = digits.compactMap { Int(String($0)) }.reduce(0, +)
        
        // 3. Updates currentNumber with the new sum
        currentNumber = sum
        
        // 4. Increments the persistence counter
        count += 1
        
        print("Iteration \(count): New sum is \(currentNumber)")
    }
    
    return count
}

// Test cases
print("Result: \(additivePersistence(1679583))")
print("Result: \(additivePersistence(123456))")
print("Result: \(additivePersistence(6))")
