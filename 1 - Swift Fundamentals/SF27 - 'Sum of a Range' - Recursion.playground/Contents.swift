//  🏔️ MTECH Code Challenge SF27: "Sum of a Range"
//  Concept: Practice using logic to translate a simple math equation into elegant Swift code.

//  Instructions:
    //  Write a program that finds the summation of every number from 1 to num.

//  Notes:
    //  The number will always be a positive integer greater than 0.

//  Examples:
    //  Input: 2
    //  Math: 1 + 2 = 3
    //  Output: 3

    //  Input: 8
    //  Math: 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 = 36
    //  Output: 36

//  ⌺ Black Diamond Challenge:
    //  Make your function compatible with negative integers, instead adding from -1 to the number specified.
    //  Input: -5, Math: -5 + -4 + -3 + -2 + -1, Output: -15

import Foundation

func summation(_ num: Int) -> Int {
    var sum = 0
    for n in 1...num {
        sum += n
        print("After adding \(n), the sum is now \(sum)")
    }
    return sum
}

print("The total sum: \(summation(2))")
print("The total sum: \(summation(8))")


func sumOfRangeBasicExpanded(num: Int) -> Int {
    if num <= 1 {
        return num
    }
    
    return num + sumOfRangeBasicExpanded(num: num - 1)
}



func rangeSum(_ num: Int) -> Int {
    var sum = 0
    
    if num > 0 {
        for n in 1...num {
            sum += n
            print("After addin \(n), sum is now \(sum)")
        }
    } else if num < 0 {
        for n in num...(-1) {
            sum += n
            print("After adding \(n), sum in now \(sum)")
        }
    } else {
        print("Number is 0, sum is 0")
    }
    
    return sum
}

print("The total sum: \(rangeSum(8))")
print("The total sum: \(rangeSum(-5))")
print("The total sum: \(rangeSum(0))")
print("The total sum: \(rangeSum (-125))")

