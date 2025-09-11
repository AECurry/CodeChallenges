//  🏔️ MTECH Code Challenge SF17: "Difference in Cube Volumes"
//  Concept:  Practice converting mathematical functions into Swift code; practice avoiding reuse of code, instead abstracting code that needs to be reused into a separate function

//  Instructions:
    //  Create a program that will take two lists of integers, a and b.
    //  Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b.
    //  You must find the difference of the cuboids' volumes regardless of which is bigger.

//  Examples:
    //  Input: ([2, 2, 3], [5, 4, 1])
    //  Logic: Volume of cube a is 12, volume of cube b is 20. Therefore, should return 8.
    //  Output: 8

//  ⌺ Black Diamond Challenge:
    //  Return nil if the input is invalid (i.e., not enough or too many sides).
    //  Input: ([9,1],[3,4])
    //  Output: nil

import Foundation

func volume(of cuboid: [Int]) -> Int? {
    guard cuboid.count == 3 else {return nil}
    return cuboid[0] * cuboid[1] * cuboid[2]  //a custom data structure using a class or a struct to represent a three-dimensional rectangular shape characterized by its width, height, and length.
}

func differenceInVolumes(cube1: [Int], cube2: [Int]) -> Int? {
    guard let volume1 = volume(of: cube1),
          let volume2 = volume(of: cube2) else {
        return nil
    }
    
    return abs(volume1 - volume2) //calculates the absolute difference between two volume values
}

let cubeA = [2, 2, 3]
let cubeB = [5, 4, 1]

if let difference = differenceInVolumes(cube1: cubeA, cube2: cubeB) {
    print("Difference in volumes: \(difference)")
} else {
    print("Invalid cuboid dimensions")
}

