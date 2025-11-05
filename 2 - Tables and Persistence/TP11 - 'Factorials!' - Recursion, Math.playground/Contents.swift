//  🏔️ MTECH Code Challenge TP11: "Factorial"
//  Concept: Practice using recursive functions or while loops to perform a task repeatedly until complete; practice converting mathematical formulae to Swift code

//  Instructions:
//  Factorial is a mathematical function where, for any integer 'n', you find the product of multiplying all integers less than (and including) n together. It is usually represented by an '!' in math.
// 5! would include all integers less than 5, so 1, 2, 3, and 4. 5! is a shorthand way of writing 5 * 4 * 3 * 2 * 1.
//  Create a function that accepts an Int parameter 'n' and returns 'n!' as described above.

//  Notes:
//  Even though there are no positive integers less than 0, 0! = 1.
//  You can assume the input will always be positive.

//  Examples:
//  Input: factorial(0), Output: 1
//  Input: factorial(1), Output: 1

//  Input: factorial(3)
//  Math: 1 * 2 * 3 = 6
//  Output: 6

//  Input: factorial(4)
//  Math: 1 * 2 * 3 * 4 = 24
//  Output: 24

//  ⌺ Black Diamond Challenge:
//  Learn about double factorials, then add another function that calculates those instead: 🔗https://en.wikipedia.org/wiki/Double_factorial
//  Learn about primorials, then add another function that calculates those instead: 🔗https://en.wikipedia.org/wiki/Primorial

import Foundation

func factorial(_ n: Int) -> Int {
    if n == 0 { return 1 }
    
    var result = 1
    for number in 1...n {
        result *= number
    }
    return result
}

print(factorial(0))
print(factorial(1))
print(factorial(2))
print(factorial(3))
print(factorial(4))
print(factorial(5))


/// Black Diamond Challange

func doubleFactorial(_ n: Int) -> Int {
    if n == 0 || n == 1 { return 1 }
    
    var result = 1
    var number = n
    
    while number > 1 {
        result *= number
        number -= 2
    }
    
    return result
}

print(doubleFactorial(7))
print(doubleFactorial(8))



func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    
    let maxDivider = Int(Double(n).squareRoot())
    if maxDivider < 2 { return true }
    
    for i in 2...maxDivider {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}


func primorial(_ n: Int) -> Int {
    if n < 2 { return 1 }
    
    var result = 1
    for number in 2...n {
        if isPrime(number) {
            result *= number
        }
    }
    
    return result
}

print(primorial(5))
print(primorial(7))
print(primorial(2))
print(primorial(10))
