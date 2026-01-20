//  🏔️ MTECH Code Challenge ND20: "Sum the Smallest"
//  Concept: Practice sorting and manipulating arrays.

//  Instructions:
    //  Create a function take that takes an Array<Int> and returns an Int
    //  The output of your function is the sum of the two smallest positive numbers in the array.
    //  If the array has too few positive integers, return nil.

//  Examples:
    //  Input: [19, 5, 42, 2, 77, -5]
    //  Output: 7

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle an additional optional parameter, another array of Ints called 'exclude'.
    //  The function should return the sum of the two smallest positive numbers in the array that are not in the 'exclude' array.
    //  If there are too few positive integers left after excluding the specified numbers, return nil.

import Foundation

// Uses a funtion to take in an array of numbers that might return a number or nothing at all
func take(_ numbers: [Int]) -> Int? {
    
    
    // Filter through the number and only give me back positive numbers
    let positives = numbers.filter { $0 > 0 }
    
    
    // Loop through all the numbers and make sure there are at least 2 positive numbers to work with otherwise return nil
    if positives.count < 2 {
        return nil
    }
    
    
    // Now from all the positive numbers found let find the smallest and the second smallest positive numbers
    let sortedPositives = positives.sorted()

    
    // Add those two numvers together and return the answer
    let sum = sortedPositives[0] + sortedPositives[1]
    return sum
}

// Test

take([19, 5, 42, 2, 77, -5])
take([-19, -5, -42, 2, -77, -5])
take([-19, -5, 42, -2, 77, -5])

// Black Diamond


