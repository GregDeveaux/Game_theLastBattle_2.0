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

print(Game.welcomeMessage)

//Player.createTeam()
let player1 = Player(name: "")
player1.EnterTheNameOfTeam()
player1.messageCreateTeam()
player1.selectCharactersForTheTeam()
