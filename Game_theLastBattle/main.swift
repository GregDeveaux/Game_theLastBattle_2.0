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

while true {
    
    let game = Game()

    game.welcomeMessage()

    game.createTheGuild()
    
    game.presentationGuilds()
    
    game.goFight()
    
    game.gameOver()
    
}


