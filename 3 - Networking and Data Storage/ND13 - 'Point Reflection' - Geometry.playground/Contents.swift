//  🏔️ MTECH Code Challenge ND13: "Point Reflection"
//  Concept: Practice translating geometric concepts into Swift code

//  Instructions:
    //  "Point reflection" or "point symmetry" is a basic concept in geometry where a given point, P, at a given position relative to a mid-point, Q has a corresponding point, P1, which is the same distance from Q but in the opposite direction.
    //  Create a function that, given two points P and Q, outputs the symmetric point of point P about Q. Each argument is of the type Point. Output should be in the same format, giving the X and Y coordinates of point P1. You do not have to validate the input.

//  Examples:
    //  Input: Point(x: 0, y: 0), Point(x: 1, y: 1)
    //  Output: Point(x: 2, Y: 2)

    //  Input: Point(x: 2, y: 6), (x: -2, y: -6)
    //  Output: Point(x: -6, y: -18)

//  ⌺ Black Diamond Challenge:
    //  Create an additional function that, given a point P and a line defined by two points L1 and L2, outputs the reflection of point P across the line.
        //  Input: Point(x: 0, y: 0), Line(Point(x: 1, y: 1), Point(x: 2, y: 2))
        //  Output: Point(x: 2, y: 2)
    //  You can look up the geometric formulas to find the reflection of a point across a line.

import Foundation

// A simple structure to represent a point on a 2D coordinate plane
struct Point {
    var x: Int  // The point’s horizontal position
    var y: Int  // The point’s vertical position

}

// This function returns the reflection of point `p` across point `q`
func reflect(_ p: Point, over q: Point) -> Point {
    
    Point(
        x: 2 * q.x - p.x,  // reflected X coordinate
        y: 2 * q.y - p.y   // reflected Y coordinate
    )
}


//Test
print(reflect(Point(x: 0, y: 0), over: Point(x: 1, y: 1)))

print(reflect(Point(x: 2, y: 6), over: Point(x: -2, y: -6)))
