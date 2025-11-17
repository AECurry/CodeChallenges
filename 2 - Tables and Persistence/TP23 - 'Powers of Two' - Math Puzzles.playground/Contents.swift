//  🏔️ MTECH Code Challenge TP23: "Powers of Two"
//  Concept: Practice translating math into Swift code

//  Instructions:
    //  Create a function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n (inclusive).

//  Examples:
    //  Input: 2
    //  Math: 2^0, 2^1, 2^2
    //  Output: [1, 2, 4]

    //  Input: 5
    //  Math: 2^0, 2^1, 2^2, 2^3, 2^4, 2^5
    //  Output: [1, 2, 4, 8, 16, 32]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, return all powers of N with the exponent ranging from 0 to n (inclusive).
    //  Input: 4, Output: [1, 4, 16, 64, 256]

import Foundation

//Returns an array of all powers of 2 from 2^0 up to 2^n
func powersOfTwo(upTo n: Int) -> [Int] {
    
    //Start with 2^0 = 1
    var results = [1]
    
    //Repeat n times
    for _ in 1...n {
        
        //Double the last value in each loop
        results.append(results.last! * 2)
    }
    
    //Return all computed powers
    return results
}

//Test
print(powersOfTwo(upTo: 2))
print(powersOfTwo(upTo: 5))


//Black Diamond
//Retruns an array of all powers of a given base nember from
//base^0 up to base^n
func powersOf(base: Int, upTo n: Int) -> [Int] {
    
    //Start with base^0 = 1
    var results = [1]
    
    //Repeat n times
    for _ in 1...n {
        
        //Multiply last value by base each loop
        results.append(results.last! * base)
    }
    
    //Return completed array
    return results
}


//Test
print(powersOf(base: 4, upTo: 4))
print(powersOf(base: 3, upTo: 5))
print(powersOf(base: 10, upTo: 3))
