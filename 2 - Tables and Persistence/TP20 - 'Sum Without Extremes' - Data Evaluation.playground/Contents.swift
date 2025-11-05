//  🏔️ MTECH Code Challenge TP20: "Sum Without Extremes"
//  Concept: Practice accessing and evaluating a set of data in an array that is not the entire array

//  Instructions:
    //  Sum all the numbers of a given array, except the highest and the lowest element (by value, not by index!).

//  Notes:
    //  If there are multiple instances of the highest and lowest element, omit only one of them from your sum.
    //  If there are too few elements (less than 3) in your array such that no values can be summed, return 0.

//  Examples:
    //  Input: [15,5,6,7,2,3,22,12,22]
    //  Math: 3 + 5 + 6 + 7 + 12 + 15 + 22 = 70 (omitting 2 and a single instance of 22)
    //  Output: 70

//  ⌺ Black Diamond Challenge:
    //  Make it so that your function can be called like this:
    //  let sum = [1,2,3,4,5].sumWithoutExtremes()

import Foundation

func sumWithoutExtremes(_ arr: [Int]) -> Int {
    guard arr.count >= 3 else { return 0 }
    
    let sorted = arr.sorted()
    
    let withoutExtremes = sorted.dropFirst().dropLast()
    
    return withoutExtremes.reduce(0, +)
}

let testarry = [15,5,6,7,2,3,22,12,22]

sumWithoutExtremes(testarry)



// Black Diamond

extension Array where Element == Int {
    func sumWithoutExtremes() -> Int {
        guard self.count >= 3 else { return 0 }
        
        let sorted = self.sorted()
        
        return sorted.dropFirst().dropLast().reduce(0, +)
    }
}

let sum = [1, 2, 3, 4, 5, ].sumWithoutExtremes()
    print(sum)


let input = [15, 5, 6, 7, 2, 3, 12, 22]
let result = input.sumWithoutExtremes()
    print(result)

print([1, 2].sumWithoutExtremes())
print([5, 5, 5].sumWithoutExtremes())
print([1, 1, 2, 2].sumWithoutExtremes())
