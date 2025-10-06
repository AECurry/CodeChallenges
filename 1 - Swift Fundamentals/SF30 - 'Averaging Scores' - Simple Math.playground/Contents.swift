//  🏔️ MTECH Code Challenge SF30: "Averaging Scores"
//  Concept: Practice calculating the average of numbers in an array and rounding down the result

//  Instructions:
    //  It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy! You just need to write a script.
    //  Return the average of the given array rounded down to its nearest integer.

//  Notes:
    //  The array will never be empty.

//  Examples:
    //  Input: array: [90, 80, 70, 60, 50]
    //  Output: 70

    //  Input: array: [1, 2, 3, 4, 5]
    //  Output: 3

//  ⌺ Black Diamond Challenge:
    //  Create a function that not only calculates the average and rounds down, but also returns the highest and lowest values in the array.

import Foundation

func getAverage(_ scores: [Int]) -> Int {
    var sum = 0
    for score in scores {
        sum += score
    }
    
    let average = sum / scores.count
    
    return average
}

print(getAverage([90, 80, 70, 60, 50]))
print(getAverage([1, 2, 3, 4, 5, 6, 7]))

func analyzeScores(_ scores: [Int]) -> (average: Int, highest: Int, lowest: Int) {

    var sum = 0
    for score in scores {
        sum += score
    }

    let average = sum / scores.count
    
    // Find the highest score
    var highest = scores[0] // Start by assuming the first number is the highest
    for score in scores {
        if score > highest {
            highest = score
        }
    }
    
    // Find the lowest score
    var lowest = scores[0] // Start by assuming the first number is the lowest
    for score in scores {
        if score < lowest {
            lowest = score
        }
    }
    
    // return all three as a tuple
    return(average, highest, lowest)
}

let results = analyzeScores([90, 80, 70, 60, 50])
print(results.average)
print(results.highest)
print(results.lowest)

