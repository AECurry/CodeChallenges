//  🏔️ MTECH Code Challenge ND07: "Difference Sums"
//  Concept: Practice sorting arrays and performing mathematical operations on them

//  Instructions:
    //  Create a function that takes an array of integers as input and returns an integer.
    //  Your task is to sum the differences between consecutive pairs. Find the absolute difference between each consecutive pair in the array (e.g., if the order is 2, 10, then the absolute difference would be 8, instead of the normal difference, -8.) Output the sum of the absolute differences.

//  Examples:
    //  Input: [2, 1, 10]
    //  Logic:
        //  Find differences: 2 - 1 = 1, 1 - 10 = -9 (so absolute difference is 9)
        //  Sum differences: 1 + 9 = 10
    //  Output: 10

//  Notes:
    //  If the array is empty or only has one element, the result should be 0.

//  ⌺ Black Diamond Challenge:
    //  Calculate and return the average difference as well.

import Foundation

// Takes an array of integers and returns the sum of absolute differences
func differenceSums(_ numbers: [Int]) -> Int {
    
    // If the array has fewer than 2 elements, there are no pairs to compare,
    // so the correct answer is simply 0.
    if  numbers.count < 2 {
        return 0
    }
    
    // This will store the running total of all absolute differences.
    var total = 0
    
    // Loops through the array from the first index up to the second-to-last.
    // Each index `i` will be paired with the next index `i + 1`.
    for i in 0..<(numbers.count - 1) {
        
        // Finds the difference between the current number and the next number.
        let diff = numbers[i] - numbers[i + 1]
        
        // `abs(diff)` turns any negative difference into a positive one.
        // We add that positive value to our running total.
        total += abs(diff)
    }
    
    // Returns the complete sum of all positive differences.
    return total
}

// Test
print(differenceSums([2, 1, 10]))
print(differenceSums([5, 5, 5]))
print(differenceSums([1]))
print(differenceSums([]))






// Black Diamond

// Takes an array of integers and returns the sum of absolute differences
func averageDifference(_ numbers: [Int]) -> Double {
    
    // If the array has fewer than 2 elements, there are no pairs to compare,
    // so the correct answer is simply 0.
    if numbers.count < 2 {
        return 0
    }
    
    // This will store the running total of all absolute differences.
    var total = 0
    
    // Loops through the array from the first index up to the second-to-last.
    // Each index `i` will be paired with the next index `i + 1`.
    for i in 0..<(numbers.count - 1) {
        let diff = abs(numbers[i] - numbers[i + 1])
        total += diff
    }
    
    // Number of pairs is always (count - 1)
    let pairCount = numbers.count - 1
    
    // Convert to Double so the average can include decimals.
    return Double(total) / Double(pairCount)
}


// Test
print(averageDifference([2, 1, 10]))
print(averageDifference([10, 20, 40]))
print(averageDifference([1]))
print(averageDifference([]))  
