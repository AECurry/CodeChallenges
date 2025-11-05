//  🏔️ MTECH Code Challenge TP17: "Multiples to the Limit"
//  Concept: Practice translating mathematical functions into Swift code

//  Instructions:
    //  Create a function that takes two integers, integer and limit, and returns an array of the first integer's multiples, up to the limit.

//  Notes:
    //  If limit is a multiple of integer, it should be included.
    //  Only positive integers will be passed into the function, with limit always being higher than the base integer.

//  Examples:
    //  Input: 2, 10
    //  Output: [2, 4, 6, 8, 10]

    //  Input: 3, 11
    //  Output: [3, 6, 9]

//  ⌺ Black Diamond Challenge:
    //  Try writing the function in only one line of code.
    //  Make it so that your function only accepts positive integers and a limit higher than the base. Return nil or throw an error if not.

import Foundation

func multiples(of number: Int, upTo limit: Int) -> [Int] {
    var result: [Int] = []
    
    for multiple in stride(from: number, through: limit, by: number) {
        result.append(multiple)
        
    }
    
    return result
}

print(multiples(of: 2, upTo: 10))
print(multiples(of: 5, upTo: 40))





// Black Diamond
func safeMultiples(of number: Int, upTo limit: Int) -> [Int]? {
    (number > 0 && limit > number)
        ? Array(stride(from: number, through: limit, by: number))
        : nil
}

print(safeMultiples(of: -3, upTo: 12) ?? [])
print(safeMultiples(of: 3, upTo: 12) ?? [])
