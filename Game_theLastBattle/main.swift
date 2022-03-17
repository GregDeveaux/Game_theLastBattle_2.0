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
    
    let start = Game(player1: Player(name: ""), player2: Player(name: ""))

    start.welcomeMessage()

    start.createTheGuild()
}


