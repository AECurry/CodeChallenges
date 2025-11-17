//  🏔️ MTECH Code Challenge TP28: "Telephone Pole Calculator"
//  Concept: Practice working with geometry in Swift code

//  Instructions:
    //  There are telephone poles along the side of a road. The distance between the poles is the same and the width of the poles is the same. Your function accepts three arguments:
        //  Number of poles (> 1);
        //  Distance between poles (10 - 30 meters);
        //  Diameter of the poles (10 - 50 centimeters)
    //  Calculate the distance between the center of the first and the center of the last telephone pole.

//  Notes:
    //  For the purpose of this challenge, assume the poles are perfectly round.

//  Examples:
    //  Input: (numOfPillars: 5, distance: 25, radius: 10)
    //  Output: 10,040

//  ⌺ Black Diamond Challenge:
    //  On the opposite side of the street are another set of telephone poles, of the same number, same radius, and same distances. Create a second function that returns the distance between the first pole on one side of the road and the last pole on the other.

import Foundation

// Function that calculates the distance between the center of the first and last telephone pole
func distanceBetweenPoles(numOfPoles: Int, distance: Double, diameter: Double) -> Double {
    
    // Ensure there are at least two poles; if not, return 0 because no distance can be measured
    guard numOfPoles > 1 else { return 0 }
    
    // (numOfPoles - 1): number of spaces between poles
        // distance * 100: converts meters to centimeters
        // + diameter: adds one full pole width (for the center-to-center measurement)
    let totalDistance = Double((numOfPoles - 1)) * distance * 100 + diameter
    
    
    // Return the total calculated distance in centimeters
    return totalDistance
}

//Test
let result1 = distanceBetweenPoles(numOfPoles: 5, distance: 25, diameter: 10)
print(result1)


let result2 = distanceBetweenPoles(numOfPoles: 10, distance: 50, diameter: 25)
print(result2)





// Black Diamond

// New function: distance between the first pole on one side
// and the last pole on the opposite side of the street
func diagonalDistanceBewteenPoles(numOfPoles: Int, distance: Double, diameter: Double, roadWidth: Double) -> Double {
    
    // Step 1: Get the horizontal distance along one side (in cm)
    let horizontalDistance = distanceBetweenPoles(numOfPoles: numOfPoles, distance: distance, diameter: diameter)
    
    // Step 2: Convert road width (in meters) to centimeters to match units
    let verticalDistance = roadWidth * 100
    
    // Step 3: Apply Pythagorean theorem
    let diagonal = sqrt(Double(horizontalDistance * horizontalDistance + verticalDistance * verticalDistance))
    
    // Step 4: Return the result (in cm)
    return diagonal
    
}


// Test
let result3 = diagonalDistanceBewteenPoles(numOfPoles: 5, distance: 25, diameter: 10, roadWidth: 20)
print("Diagonal distance between first and last poles (cm): \(result3)")


let result4 = diagonalDistanceBewteenPoles(numOfPoles: 10, distance: 50, diameter: 25, roadWidth: 40)
print("Diagonal distance between first and last poles (cm): \(result4)")



