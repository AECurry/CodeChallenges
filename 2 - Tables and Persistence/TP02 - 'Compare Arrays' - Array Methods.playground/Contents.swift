//  🏔️ MTECH Code Challenge TP02: "Compare Arrays"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    // Write a function that takes in two arrays of Strings.
    //  This function should keep track of which elements in either array do not also appear in the other array.
    //  Return a new array of those unique elements

//  Examples:
    //  Input: 
        //  array1: ["Monday", "Tuesday", "Wednesday"], array2: ["Wednesday", "Friday", "Saturday"]
    //  Output:
        //  ["Monday", "Tuesday", "Friday", "Saturday"]

//  ⌺ Black Diamond Challenge:
    //  In another function, return only the items that occur in both arrays.
    //  In another function, use sets to accomplish the same goal.

import Foundation

func compareArrays(_ array1: [String], _ array2: [String]) -> [String] {
    
    // This finds the element unique to array1
    let uniqueToArray1 = array1.filter { !array2.contains($0) }
    
    // This finds the element unique to array2
    let uniqueToArray2 = array2.filter { !array1.contains($0) }
    
    // This combines them
    let uniqueElements = uniqueToArray1 + uniqueToArray2
    
    return uniqueElements
}

let a1 = ["Monday", "Tuesday", "Wednesday"]
let a2 = ["Wednesday", "Friday", "Saturday"]

print(compareArrays(a1, a2))
