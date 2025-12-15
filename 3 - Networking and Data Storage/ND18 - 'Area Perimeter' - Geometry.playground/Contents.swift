//  🏔️ MTECH Code Challenge ND18: "Area Perimter"
//  Concept: Practice a simple math warmup

//  Instructions:
    //  You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
    //  If it is a square, return its area. If it is a rectangle, return its perimeter.

//  Examples:
    //  Input: 5, 5
    //  Logic: Square, area is length * width, so 5 * 5
    //  Output: 25

    //  Input: 10, 5
    //  Logic: Rectangle, perimeter is 2(length) + 2(width)
    //  Output: 30

//  ⌺ Black Diamond Challenge:
    //  Create a new function that takes three lengths for the three sides of a triangle. Calculate and return its perimeter and its area.

import Foundation

// Using a function to calculate either the area or the perimeter
// based on whether the shape is a square or a rectangle.
func areaOfPerimeter(length: Int, width: Int) -> Int {
    
    // If the length and width are the same, it's a square,
    // so we return the *area* (side × side).
    if length == width {
        
        return length * width
        
    } else {
        
        // Otherwise it's a rectangle, so we return the *perimeter*
        // using the formula: 2 × (length + width)
        return 2 * (length + width)
    }
}


// Test
areaOfPerimeter(length: 5, width: 5)
areaOfPerimeter(length: 10, width: 5)





// Black Diamaond

// This function takes the lengths of the three sides of a triangle
// and returns BOTH the perimeter and the area.
func triangleMetrics(a: Double, b: Double, c: Double) -> (perimeter: Double, area: Double) {
    
    // Step 1: Calculate the perimeter
    let perimeter = a + b + c
    
    // Step 2: Calculate the semi-perimeter (used for Heron's Formula)
    let s = perimeter / 2
    
    // Step 3: Use Heron's Formula to calculate the area
    // sqrt( s * (s - a) * (s - b) * (s - c) )
    let area = sqrt(s * (s - a) * (s - b) * (s - c))
    
    // Step 4: Return BOTH results as a tuple
    return (perimeter, area)
}

// Test

let result = triangleMetrics(a: 3, b: 4, c: 5)
print(result.perimeter)
print(result.area)

