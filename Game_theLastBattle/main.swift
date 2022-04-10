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

let theGame = Game()

while theGame.selectPlayAgain() {
    
    theGame.welcomeMessage()

    theGame.createTheGuilds()
    
    theGame.presentationGuilds()
    
    theGame.goFight()
    
    theGame.gameOver()
}



