//  🏔️ MTECH Code Challenge TP25: "Rock Paper Scissors 2.0"
//  Concept: Add custom randomization to a function. Black Diamond: Parse arrays.

//  Instructions:
    //  Create a function that takes in a string as input. This is the users move (either rock, paper, or scissors).
    //  Randomly decide what the computers choice is.
    //  Return a string which declares the winner.

//  Examples:
    //  Input: "rock"
    //  Output: "I chose paper. You lose!"
    //  Output: "I chose rock. Draw! Go again?"
    //  Output: "I chose scissors. I lose."

//  ⌺ Black Diamond Challenge:
    //  Create another function that instead accepts an array as input. If only one move is entered, generate a random one for the computer; if two are entered, compare them.
    //  If more than two moves are input, the winners are the players who voted for the most popular move.

import Foundation

// Enum for all possible moves in the game
enum Move: CaseIterable {
    case rock, paper, scissors
    
    // Generates a random move for the computer
    static func random() -> Move {
        return Move.allCases.randomElement()!
    }
}

// Compares the user's move with the computer's and returns the result
func play(_ userMove: Move) -> String {
    let computerMove = Move.random()
    var result = "I chose \(computerMove). "
    
    switch (userMove, computerMove) {
        
    // Draw condition
    case let (userMove, computerMove) where userMove == computerMove:
        result += "Draw! Go again?"
        
    // Winning combinations for the user
    case (.rock, .scissors),
         (.paper, .rock),
         (.scissors, .paper):
        result += "You win!"
        
    // All other combinations are losses
    default:
        result += "You lose!"
    }
    
    return result
}

// Test
print(play(.rock))
print(play(.scissors))
print(play(.paper))





// Black Diamond

// Enum representing all possible moves for this challenge
// CaseIterable allows iterating over all cases (used for random selection)
// CustomStringConvertible provides a human-readable string for each move

enum BDMove: CaseIterable, CustomStringConvertible {
    case rock, paper, scissors
    
    // Human-readable output when printing a move
    var description: String {
        switch self {
        case .rock: return "rock"
        case .paper: return "paper"
        case .scissors: return "scissors"
        }
    }
    
    // Returns a random move (used for computer or when only one player)
    static func random() -> BDMove {
        return BDMove.allCases.randomElement()!
    }
    
    // Determines if this move beats another move
    func beats(_ other: BDMove) -> Bool {
        switch (self, other) {
        case (.rock, .scissors),
             (.paper, .rock),
             (.scissors, .paper):
            return true
        default:
            return false
        }
    }
}

// Function to simulate Rock-Paper-Scissors for 1, 2, or multiple players
func playBlackDiamond(_ moves: [BDMove]) -> String {
    switch moves.count {
     
    // Single player: compare with a random computer move
    case 1:
        let user = moves[0]
        let computer = BDMove.random()
        if user == computer {
            return "You chose \(user). I chose \(computer). Draw!"
        } else if user.beats(computer) {
            return "You chose \(user). I chose \(computer). You win!"
        } else {
            return "You chose \(user). I chose \(computer). I win!"
        }
        
    // Two players: compare each other directly
    case 2:
        let p1 = moves[0]
        let p2 = moves[1]
        if p1 == p2 {
            return "Both chose \(p1). Draw!"
        } else if p1.beats(p2) {
            return "Player 1 (\(p1)) wins!"
        } else {
            return "Player 2 (\(p2)) wins!"
        }
    
    // More than two players: majority wins
    default:
        var counts: [BDMove: Int] = [:]
        for move in moves {
            counts[move, default: 0] += 1
        }
        
        // Determine which move has the highest count
        if let winner = counts.max(by: { $0.value < $1.value })?.key {
            return "The majority chose \(winner). They win!"
        } else {
            return "It's a tie! No clear winner."
        }
    }
}

// Test
print(playBlackDiamond([.rock]))
print(playBlackDiamond([.scissors, .paper]))
print(playBlackDiamond([.rock, .rock, .paper, .scissors, .rock]))
