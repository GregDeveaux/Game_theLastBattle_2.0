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
    
    let theGame = Game()
   
        theGame.welcomeMessage()

        theGame.createTheGuilds()
        
        theGame.presentationGuilds()
        
        theGame.goFight()
        
        theGame.gameOver()
    
    if !theGame.selectPlayAgain() {
        break
    }
}



