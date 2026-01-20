//  🏔️ MTECH Code Challenge ST06: "Product of Everything Else"
//  Concept: Practice solving unique math problems

//  Instructions:
    //  Create a function which accepts and returns an array of integers.
    //  For the output array, replace each number in the input array with the product of all the numbers in the array except the number at that index itself.
    //  So in [1, 2, 3, 4, 5], 1 would be replaced with 2 * 3 * 4 * 5 = 120.

//  Examples:
    //  Input: [1, 2, 3, 4, 5]
    //  Output: [120, 60, 40, 30, 24]

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle an additional optional parameter, 'excludeZeroes', which is a Boolean.
    //  If 'excludeZeroes' is true, the function should exclude any zeroes in the input array when calculating the products. Otherwise, the function should behave as originally specified.

import Foundation

// Uses a function to take a list of integers and return a new list
// where each value is the product of all the other numbers except itself.
func productOfEverythingElse(_ numbers: [Int]) -> [Int] {
    
    // Count how many zeros are in the array
    let zeroCount = numbers.filter { $0 == 0}.count
    
    // If more than one zero, every product will be zero
    if zeroCount > 1 {
        return Array(repeating: 0, count: numbers.count)
    }
    
    // Compute the product of all non-zero numbers
    let totalProduct = numbers.reduce(1) { result, number in number == 0 ? result : result * number
    }
    
    // Build the result array
    return numbers.map { number in
        if zeroCount == 1 {
            
            // Only the zero position gets the product
            return number == 0 ? totalProduct : 0
            
        } else {
            // No zeros — safe to divide
            return totalProduct / number
        }
    }
}


// Test

productOfEverythingElse([1, 2, 3, 4, 5])

productOfEverythingElse([1, 2, 0, 4])

productOfEverythingElse([0, 0, 3])
