//
//  main.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 28/02/2022.
//

import Foundation

// -------------------------------------------------------------------------------------------------------
// MARK: Start game here
// >>> different steps of the game
// -------------------------------------------------------------------------------------------------------

while true {
    
    let theGame = Game()
   
        theGame.welcomeMessage()

        theGame.createAllTheGuilds()
        
        theGame.presentationGuilds()
    
    // option with cards
        theGame.presentationGuildsWithCards()
        
        theGame.goFight()
        
        theGame.gameOver()
    
    if !theGame.selectPlayAgain() {
        break
    }
}



