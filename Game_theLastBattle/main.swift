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

let game = Game()

repeat {
    game.welcomeMessage()

    game.createTheGuild()
    
    game.presentationGuilds()
    
    game.goFight()
    
    game.gameOver()
    
} while Player.selectPlayAgain()


