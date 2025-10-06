//: [Previous](@previous)
//Enum

import Foundation


enum move {
    case rock
    case paper
    case scissors
}

enum Outcome {
    case tie
    case player1wins
    case player2wins
}

func playerInput(player1: move, player2: move) -> Outcome {
    guard player1 != player2 else {returen .tie}
    switch (player1, player2) {
        case
        switch player1 {
        case .rock:
            return player2 == .paper? . player1wins: .player1Wins
        case .paper:
            switch player2 {
        case .scissors:
                return
        }
}
