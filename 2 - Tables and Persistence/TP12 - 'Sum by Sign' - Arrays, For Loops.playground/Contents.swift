//  🏔️ MTECH Code Challenge ST12: "Sum by Sign"
//  Concept: Practice evaluating data in an array using for loops

//  Instructions:
//  Create a function that takes an array of integers as input and returns an array of just two integers.
//  The first returned element is the COUNT of all positives numbers in the input array; the second element is the SUM of negative numbers.
//  0 is neither positive nor negative, so ignore it if it appears.

//  Notes:
// If the input is an empty array or is nil, return nil.

//  Examples:
//  Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
//  Math: There are 10 positive integers; -11 + -12 + -13 + -14 + -15 = -65
//  Output: [10, -65]

//  ⌺ Black Diamond Challenge:
//  Modify the function to accept an optional third parameter. This parameter should be a closure that takes an integer as input and returns a boolean value. This closure allows you to define custom logic for what constitutes a "positive" or "negative" number.

import Foundation

func sumBySign(_ numbers: [Int]?) -> [Int]? {
    guard let numbers = numbers, !numbers.isEmpty else {
        return nil
    }
    
    var positiveCount = 0
    var negativeSum = 0
    
    for number in numbers {
        if number > 0 {
            positiveCount += 1
        } else if number < 0 {
            negativeSum += number
        }
    }
    
    return [positiveCount, negativeSum]
}

let result = sumBySign([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])
print(result!)

//Black Diamond

func sumBySignCustom(_ numbers: [Int]?, logic: ((Int) -> Bool)? = nil) -> [Int]? {
    guard let numbers = numbers, !numbers.isEmpty else {
        return nil
    }
    
    var positiveCount = 0
    var negativeSum = 0
    
    for number in numbers {
        if let logic = logic {
            if logic(number) {
                positiveCount += 1
            } else{
                negativeSum += number
            }
        } else {
            if number > 0 {
                positiveCount += 1
            } else if number < 0 {
                negativeSum += number
            }
        }
    }
    
    return [positiveCount, negativeSum]
}

print(sumBySignCustom([1, -2, 3, -4, 0])!)
