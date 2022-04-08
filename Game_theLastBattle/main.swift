//
//  main.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation

// -------------------------------------------------------------------------------------------------------
// MARK: Start game here
// >>> different steps of the game
// -------------------------------------------------------------------------------------------------------

let newGame = Game()

repeat {
    newGame.welcomeMessage()

    newGame.createTheGuilds()
    
    newGame.presentationGuilds()
    
    newGame.goFight()
    
    newGame.gameOver()
    
} while newGame.selectPlayAgain()




