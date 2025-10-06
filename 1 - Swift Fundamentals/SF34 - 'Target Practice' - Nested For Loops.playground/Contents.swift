//  🏔️ MTECH Code Challenge SF34: "Target Practice"
//  Concept: Practice looping through an array to find multiple values and evaluate their relationship; optionally, discuss with instructor time complexity

//  Instructions:
    //  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    //  You can return the answer in any order.

//  Examples:
    //  Input: nums = [2,7,11,15], target = 9
    //  Output: [0,1]
    //  Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

    //  Input: nums = [3,2,4], target = 6
    //  Output: [1,2]

    //  Input: nums = [3,3], target = 6
    //  Output: [0,1]

//  ⌺ Black Diamond Challenge:
    //  Consider if this function was given a very large array to work with, of say 10,000 integers, with a very high target value.
    //  If your solution involved looping through the array for each number, the time that it would take to complete the function would increase exponentially. In a comment, explain why this is.
    //  There is another solution to this problem that does not take as long, though it may be difficult at this stage in your progress to know how to code it. In a comment, brainstorm how that secondary solution might work.

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indexByNumber = [Int: Int]()
    
    for(index, number) in nums.enumerated() {
        let complement = target - number
        
        if let complementIndex = indexByNumber[complement] {
            return [complementIndex, index]
        }
        
        indexByNumber[number] = index
    }
    
    return []
}

print(twoSum([2, 7, 11, 15], 9))
print(twoSum([3, 2, 4], 6))
print(twoSum([5, 3, 8, 3, 7], 6))


// Black Diamond

func largeSumArray(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    
    return []
}

// Using a nested loop means for each number in the array, the computer checks every other numer after it to see if the sum equals the target.
// For very large arrays (like 10,000 elements), that could possible be about 50 million checks. That's why the time required grows very quickly as the array size increases.


func largeSumDictionary(_ nums: [Int], _ target: Int) -> [Int] {
    var indexByNumber = [Int: Int]()

       for (index, number) in nums.enumerated() {
           let complement = target - number
           if let complementIndex = indexByNumber[complement] {
               return [complementIndex, index]
           }
           indexByNumber[number] = index
       }

return []

}

// This loops the array once (no nested loops, no repeated checks) and uses a dictionary to remember numbers
