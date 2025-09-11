//  🏔️ MTECH Code Challenge SF22: "Sum of Positives"
//  Concept: Practice iterating through an array using For Loops; instructor will introduce or review the map method as well

//  Instructions:
    // Create a function that takes an array of numbers, and returns the sum of all of the positives ones.

//  Notes:
    //  If there is nothing to sum, output 0.

//  Examples:
    //  Input: [1,-4,7,12]
    //  Math: 1 + 7 + 12 = 20
    //  Output: 20

//  ⌺ Black Diamond Challenge:
    //  Create a second function that instead returns two arrays, separating the positive and the negative numbers in the array. You can return it as an ([Int], [Int]) tuple, or as a custom structure holding both arrays.

import Foundation
func sumOfPositives(_ numbers: [Int]) -> Int {
    var total = 0
    
    for n in numbers {
        if n > 0 {
            total += n
        }
    }
    return total
}

print(sumOfPositives([1, -4, 7, 12]))
print(sumOfPositives([-5, -2, 0]))


func separatingPositivesAndNegatives(_ numbers: [Int]) -> (positives: [Int], negatives: [Int]) {
    var positives: [Int] = []
    var negatives: [Int] = []
    
    for n in numbers {
        if n > 0 {
            positives.append(n)
        } else if n < 0 {
            negatives.append(n)
        }
    }
    return (positives: positives, negatives: negatives)
}

let separated = separatingPositivesAndNegatives([5, -3, 0, -8, 2])
print("Positives: \(separated.positives)")
print("Negatives: \(separated.negatives)")
