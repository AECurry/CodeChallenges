//  🏔️ MTECH Code Challenge ST16: "Bowling for TDD" 🎳
//  Concept: Practice refactoring code developed under TDD without breaking existing functionality

//  Instructions:
    //  You are a senior developer at a company building a bowling themed iOS game.
    //  You have a junior developer who is enthusiastic and talented, but who sometimes makes odd coding decisions.
    //  They have submitted the code below. You're pleased they have used TDD and their tests all work, but their some of their decisions are strange to say the least:
        //  🤨 They have gone too far in creating functions for simple code
        //  😮‍💨 They have used a bizzare while loop with a switch statement that should probably just be a For loop and an If statement

    //  Even though you should just direct them to go back and refactor their code, you decide to brutally fire them and refactor their code yourself.
    //  Refactor the code below without breaking any of the tests. Fix the above stated problems.

//  Notes:
    //  Make sure you have your console open so you can see the state of your tests.
    //  Do not change any of the testing code.

//  Examples:
    //  Input: [15,5,6,7,2,3,45,12], 3
    //  Output: [15,5,6]

//  ⌺ Black Diamond Challenge:
    //  Change the rolls array to be an array of ten Frame objects that each hold specific rolls. Change each scoring function to accommodate this.

//  Needed for running in a Playground / iOS context
import UIKit
//  Used to run unit tests directly in the Playground
import XCTest

var greeting = "Hello, playground"

// Represents a single bowling game
class Game {

    // Stores all rolls in the game (max 21 rolls including bonus rolls)
    private var rolls = Array(repeating: 0, count: 21)

    // Tracks the index where the next roll will be recorded
    private var currentRoll = 0

    // Records a roll by storing pins knocked down
    func roll(pins: Int) {
        rolls[currentRoll] = pins
        currentRoll += 1
    }

    // Calculates the total score for the game
    func score() -> Int {
        var score = 0
        var frameIndex = 0

        // Bowling always consists of exactly 10 frames
        for _ in 0..<10 {

            // Strike: 10 pins knocked down in one roll
            if isStrike(frameIndex) {
                score += 10 + strikeBonus(frameIndex)
                frameIndex += 1

            // Spare: two rolls in a frame total 10 pins
            } else if isSpare(frameIndex) {
                score += 10 + spareBonus(frameIndex)
                frameIndex += 2

            // Normal frame: sum of two rolls
            } else {
                score += rolls[frameIndex] + rolls[frameIndex + 1]
                frameIndex += 2
            }
        }

        return score
    }

    // Returns true if the roll at the index is a strike
    private func isStrike(_ index: Int) -> Bool {
        rolls[index] == 10
    }

    // Returns true if two rolls in a frame equal a spare
    private func isSpare(_ index: Int) -> Bool {
        rolls[index] + rolls[index + 1] == 10
    }

    // Bonus for a strike is the next two rolls
    private func strikeBonus(_ index: Int) -> Int {
        rolls[index + 1] + rolls[index + 2]
    }

    // Bonus for a spare is the next roll
    private func spareBonus(_ index: Int) -> Int {
        rolls[index + 2]
    }
}


class BowlingGameTests: XCTestCase {
    private var game = Game()
    
    func testGutterGame() throws {
        for _ in 0..<20 {
            game.roll(pins: 0)
        }
        XCTAssertEqual(0, game.score())
    }
    
    func testAllOnes() throws {
        for _ in 0..<20 {
            game.roll(pins: 1)
        }
        XCTAssertEqual(20, game.score())
    }
    
    func testOneSpare() throws {
        rollSpare()
        game.roll(pins: 3)
        for _ in 0..<17 {
            game.roll(pins: 0)
        }
        XCTAssertEqual(16, game.score())
    }
    
    func testOneStrike() throws {
        rollStrike()
        game.roll(pins: 3)
        game.roll(pins: 4)
        for _ in 0..<16 {
            game.roll(pins: 0)
        }
        XCTAssertEqual(24, game.score())
    }
    
    func testPerfectGame() throws {
        for _ in 0..<12 {
            game.roll(pins: 10)
        }
        XCTAssertEqual(300, game.score())
    }
    
    private func rollSpare() {
        game.roll(pins: 5)
        game.roll(pins: 5)
    }
    
    private func rollStrike() {
        game.roll(pins: 10)
    }
}

class TestObserver: NSObject, XCTestObservation {
    func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  inFile filePath: String?,
                  atLine lineNumber: Int) {
        assertionFailure(description, line: UInt(lineNumber))
    }
}

let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
BowlingGameTests.defaultTestSuite.run()
