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

let startGame = Game()

repeat {
    startGame.welcomeMessage()

    startGame.createTheGuild()
    
    startGame.presentationGuilds()
    
    startGame.goFight()
    
    startGame.gameOver()
    
} while Player.selectPlayAgain()




