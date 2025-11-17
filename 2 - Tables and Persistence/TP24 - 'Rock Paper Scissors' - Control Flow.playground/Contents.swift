//  🏔️ MTECH Code Challenge TP24: "Rock Paper Scissors"
//  Concept: Practice writing functions with game logic

//  Instructions:
//  Create a function that takes in two strings. The strings will be either "rock", "paper", or "scissors", with one input for each player respectively.
//  Determine who wins, and return a string saying which player won.

//  Examples:
//  Input: "scissors", "paper"
//  Output: "Player 1 won!"

//  Input: "scissors", "rock"
//  Output: "Player 2 won!"

//  Input: "paper", "paper"
//  Output: "Draw!"

//  ⌺ Black Diamond Challenge:
//  Expand your game to include Spock and Lizard as weapon options. You can view the matchups here: 🔗https://www.samkass.com/theories/RPSSL.html

import Foundation


//Determines the winner of a Rock-Paper-Scissors game between two players and returns a string.
func rockPaperScissors(player1: String, player2: String) -> String{
    
    //If both players choose the same move this will return a draw.
    if player1 == player2 {
        return "Draw!"
    }
    
    //Winning combinations for Player 1
    if (player1 == "rock" && player2 == "scissors") ||
        (player1 == "scissors" && player2 == "paper") ||
        (player1 == "paper" && player2 == "rock") {
        return "Player 1 won!"
        
    } else {
        
        //Otherwise, players 2 wins
        return "Player 2 won!"
    }
}

print(rockPaperScissors(player1: "scissors", player2: "paper"))
print(rockPaperScissors(player1: "rock", player2: "paper"))
print(rockPaperScissors(player1: "scissors", player2: "rock"))
print(rockPaperScissors(player1: "rock", player2: "rock"))
print(rockPaperScissors(player1: "paper", player2: "scissors"))


//Black Diamond

//Determines the winner of a Rock-Paper-Scissors-Lizard-Spock game between two players and returns a string.
func rockPaperScissorsLizardSpock(player1: String, player2: String) -> String {
    
    
    //If both players choose the same move this will return a draw.
    if player1 == player2 {
        return "Draw!"
    }
    
    //Winning combinations for Player 1
    if (player1 == "rock"     && (player2 == "scissors" || player2 == "lizard")) ||
        (player1 == "paper"    && (player2 == "rock"     || player2 == "spock")) ||
        (player1 == "scissors" && (player2 == "paper"    || player2 == "lizard")) ||
        (player1 == "lizard"   && (player2 == "spock"    || player2 == "paper")) ||
        (player1 == "spock"    && (player2 == "rock"     || player2 == "scissors")) {
        return "Player 1 won!"
        
    } else {
        
        
        //Otherwise, players 2 wins
        return "Player 2 won!"
    }
}

print(rockPaperScissorsLizardSpock(player1: "lizard", player2: "rock"))
print(rockPaperScissorsLizardSpock(player1: "spock", player2: "spock"))
print(rockPaperScissorsLizardSpock(player1: "paper", player2: "scissors"))
print(rockPaperScissorsLizardSpock(player1: "spock", player2: "rock"))
print(rockPaperScissorsLizardSpock(player1: "lizard", player2: "spock"))
