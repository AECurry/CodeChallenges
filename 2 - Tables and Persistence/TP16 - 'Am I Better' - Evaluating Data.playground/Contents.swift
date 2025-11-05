//  🏔️ MTECH Code Challenge TP16: "Am I Better?"
//  Concept: Practice evaluating data from an array

//  Instructions:
    //  There was a test in your class and you passed it. Congratulations!
    //  But you're an ambitious person. You want to know if you're better than the average student in your class.
    //  Create a function that accepts two parameters as input, your score and an array of your peers' scores, and returns true if you're better than them, or false if you're worse.

// Notes:
    //  Your points are not included in the array of your class's points. For calculating the average point you may add your points to the given array.

//  Examples:
    //  Input: myScore: 100, classScores: [80,39,90,88,68,78,39,99]
    //  Output: true

//  ⌺ Black Diamond Challenge:
    //  Create another function. This one should instead accept a dictionary with String keys and Int values. The strings represent the names of each of your classmates, and the integers are their scores. Return an array of the names of every classmate that you scored better than.

import Foundation

func amIBetter(myScore: Int, classScores: [Int]) -> Bool {
    let allScores = classScores + [myScore]
    let total = classScores.reduce(0, +)
    let average = Double(total) / Double(classScores.count)
    
    return Double(myScore) > average
    
}

let info = amIBetter(myScore: 100, classScores: [80, 39, 90, 88, 68, 78, 39, 99])

if info {
    print("🥳 You scord 100, which is higher than the class average. Great Job!")
} else {
    print("Your score was 100, and you're right around the class average. Keep practicing - you've got this! 💪🏻")
}



// Black Diamond

func classmatesYouBeat(myScore: Int, classScores: [String: Int]) -> [String] {
    
    var betterThan: [String] = []
    
    for (name, score) in classScores {
        if myScore > score {
            betterThan.append(name)
        }
    }
    
    return betterThan
}


let myScore = 90
let classScores = ["Ava": 82, "Ben": 95, "Chloe": 70, "Derek": 88]

let beatenClassmates = classmatesYouBeat(myScore: myScore, classScores: classScores)

if beatenClassmates.isEmpty {
    print("You didn't score higher than anyone this time - but keep going you're improving all the time! 😊")
} else {
    let namesList = beatenClassmates.joined(separator: ", ")
        print("🏆 You scored higher than \(namesList)! Great job! 🎉")
    }
