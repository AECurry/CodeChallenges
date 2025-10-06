//  🏔️ MTECH Code Challenge SF35: "Bubble Sort" 🫧
//  Concept: Learn about sorting algorithms and build one of the simpler, though less efficient ones; gain a brief introduction to sorting algorithms and time complexity

//  Instructions:
    //  Create a function that takes in an array of Ints.
    //  You are to sort this array without using the built in .sort() method.
    //  Implement a bubble sort. A visual example of what a bubble sort is is shown here: 🔗https://en.wikipedia.org/wiki/Bubble_sort#/media/File:Bubble-sort-example-300px.gif
    //  Return the sorted array

//  Examples:
    //  Input: [15, 5, 6, 7, 2, 3, 45, 12]
    //  Output: [2, 3, 5, 6, 7, 12, 15, 45]

//  ⌺ Black Diamond Challenge:
    //  Sorting algorthims are implemented by Swift under the hood so that you will not need to know them directly. Still, you may have occasion in your future as a coder in which you will need to know more.
    //  Browse through the Wikipedia page for sorting algorithms: 🔗https://en.wikipedia.org/wiki/Sorting_algorithm
    //  This is an article with complicated computer science theory; you do not need to understand the entire history of computing after reading one Wiki page. Take notes in a comment in this challenge on what you do glean and learn about the different sorting algorithms as you skim through.

import Foundation

func bubbleSort(_ nums: [Int]) -> [Int] {
    var sortedNums = nums
    let n = sortedNums.count
    
    for i in 0..<n {
        for j in 0..<n-i-1 {
            if sortedNums[j] > sortedNums[j+1] {
                let temp = sortedNums[j]
                sortedNums[j] = sortedNums[j+1]
                sortedNums[j+1] = temp
            }
        }
    }
    
    return sortedNums
}

let array = [15, 5, 6, 7, 2, 3, 55, 12, 28, 19]
print(bubbleSort(array))



//Black Diamond
//Bubble sort is easy to understand, but slow for big arrays.
//Insertion sort works well for small or nearly sorted arrays.
//Merg sort is fater but uses extra memory.
//Quick sort is usually very fast, but worst-case can be slow.
//Built-in Swift sort uses optimized algorithms behind the scenes.
//Some sorts are in-place, some require extra memory; trade offs exist between speed, memory, and simplicity.
