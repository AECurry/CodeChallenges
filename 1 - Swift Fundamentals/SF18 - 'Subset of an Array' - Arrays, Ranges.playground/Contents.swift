//  🏔️ MTECH Code Challenge SF18: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
//  Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

//  Examples:
//  Input: [15,5,6,7,2,3,45,12], 3
//  Output: [15,5,6]

//  ⌺ Black Diamond Challenge:
//  Create another function. This time, return the first and last n elements of the array. If the first and last n elements overlap (i.e., 3 first and 3 last in a 5 element array), return the whole array.

import Foundation
func take(_ array: [Int], _ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    return Array(array.prefix(n))
}

func takeFirstAndLast(_ array: [Int], _ n: Int) -> [Int] {
    guard n > 0 else { return [] }
        guard n * 2 <= array.count else {
            return array
        }
        
        
        let firstN = array.prefix(n)
        let lastN = array.suffix(n)
        
        return Array(firstN + lastN)
    }
    
    let numbers = [15, 5, 6, 7, 2, 3, 45, 12]
    
    print(take(numbers, 3))
    print(take(numbers, 0))
    print(take(numbers, 20))
    
    print(takeFirstAndLast(numbers, 3))
    print(takeFirstAndLast(numbers, 4))
    print(takeFirstAndLast(numbers, 0))
